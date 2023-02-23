# frozen_string_literal: true

require "devise/strategies/authenticatable"

module Devise
  module Strategies
    class UserRegAuthenticatable < Authenticatable
      def authenticate!
        resource = authentication_hash[:username].present? && mapping.to.find_for_user_reg_authentication(authentication_hash)

        if resource.present?
          resource.after_user_reg_authentication
          success!(resource)
        else
          fail!(I18n.t("devise.failure.invalid"))
        end
      end
    end
  end
end

Warden::Strategies.add(:user_reg_authenticatable, Devise::Strategies::UserRegAuthenticatable)
