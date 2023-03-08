# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :login_enabled?
  before_action :configure_sign_in_params, only: [:create]

  skip_before_action :verify_authenticity_token, only: [:devise_logout]

  def create
    super
  end

  def destroy
    iss = session[:iss]
    id_token = session[:id_token]

    if iss.present?
      # Keycloak logout. Keycloak will send a POST to "/devise_logout" to perform a
      # backchannel logout that terminates the Devise session.
      keycloak_logout(iss, id_token)
    else
      # There is no Keycloak session identifier, so destroy the Devise session.
      devise_logout
    end
  end

  def devise_logout
    signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
    set_flash_message! :notice, :signed_out if signed_out
    yield if block_given?
    respond_to_on_destroy
    Rails.logger.info("Keycloak logged out successfully")
  end

  protected

  def keycloak_logout(iss, id_token)
    signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
    set_flash_message! :notice, :signed_out if signed_out
    redirect_to("#{iss}/protocol/openid-connect/logout?id_token_hint=#{id_token}&post_logout_redirect_uri=#{root_url}", allow_other_host: true)
  end

  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [user: [:username, :password]])
  end

  def login_enabled?
    # TODO: Move common functionality into a library
    unless defined?(Flipper).nil?
      redirect_to "/404" unless Flipper.enabled? :authentication
    end
  end
end
