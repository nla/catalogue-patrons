# Changelog

## [3.2.1](https://github.com/nla/catalogue-patrons/compare/3.2.0...3.2.1) (2023-06-09)


### Bug Fixes

* post login redirect resolution ([af86aff](https://github.com/nla/catalogue-patrons/commit/af86aff1a38802be3350b359c6a16fc274634b89))


### Miscellaneous

* replace annotate_gem with annotaterb ([afdda32](https://github.com/nla/catalogue-patrons/commit/afdda32c8bfcfa3f4815c54cb249a5d17b1df335))
* upgrade dependencies ([8659d3f](https://github.com/nla/catalogue-patrons/commit/8659d3f1a9b8521cf6fd1bcba1c7b644b2b0b279))

## [3.2.0](https://github.com/nla/catalogue-patrons/compare/3.1.0...3.2.0) (2023-05-22)


### Features

* add indicator of type of staff account to username ([d71ab93](https://github.com/nla/catalogue-patrons/commit/d71ab93d1b3573cadd3943cd484f0bf69d3866de))
* create user account page for logged in patrons ([4fe27b2](https://github.com/nla/catalogue-patrons/commit/4fe27b2292576947a9e5b3d06cb44a5f32b06025))


### Bug Fixes

* changes login password field to text field ([5689e10](https://github.com/nla/catalogue-patrons/commit/5689e10dc97c31c448d5d01a07299561baf91c4f))


### Miscellaneous

* upgrade dependencies ([dd25365](https://github.com/nla/catalogue-patrons/commit/dd25365881dcc540e281a10553f491d3e37f7916))


### Tests

* add bookmark and searches migrations for dummy app ([4987f8b](https://github.com/nla/catalogue-patrons/commit/4987f8b516115935ae91c36927110e861d462126))


### Code Refactoring

* refactors Whitelist class into a Rails model ([21af20a](https://github.com/nla/catalogue-patrons/commit/21af20a88d0d38e85127cb0a688457d0e563d201))
* rename Staff Shared link to Team Official Loan ([0d7148a](https://github.com/nla/catalogue-patrons/commit/0d7148ad7b9db9ace2590ea6e127ade3e7084b07))

## [3.1.0](https://github.com/nla/catalogue-patrons/compare/3.0.0...3.1.0) (2023-04-19)


### Features

* add session_token to user and refactor backchannel logout ([32d11b3](https://github.com/nla/catalogue-patrons/commit/32d11b3a67462c8c9a0ffab570f0dfaae26fbea1))
* move user location and type logic from blacklight ([0b060de](https://github.com/nla/catalogue-patrons/commit/0b060de00f090c6ba112cfc0b4750539529c87e4))
* re-implement feature flags ([2cfa3b1](https://github.com/nla/catalogue-patrons/commit/2cfa3b11e6f45670e1de5a2010fc0a1c3ef0453e))
* update public patron login error messages ([665e6c2](https://github.com/nla/catalogue-patrons/commit/665e6c2d805ef7dd6ad2ba813d0f1fadb595deb8))


### Bug Fixes

* change "Log in" to "Login" ([27772fe](https://github.com/nla/catalogue-patrons/commit/27772fec959a55932687f9421e78ea068c9eee72))
* change "Log in" to "Login" ([2d683be](https://github.com/nla/catalogue-patrons/commit/2d683be3bd117f9f9c124ef64327d6146b7f0e04))
* correct typos in registration text ([22a5e16](https://github.com/nla/catalogue-patrons/commit/22a5e161ac497560d6bc8a5de66541d438f98d28))
* fix resolution of modules ([00a3864](https://github.com/nla/catalogue-patrons/commit/00a3864a561ce2812440639d1765af4ab8723bee))
* move flipper-ui into finding-aids scope ([38d7ea6](https://github.com/nla/catalogue-patrons/commit/38d7ea652f0c0efc4ccce336edd7aa1756d0667e))


### Reverts

* move system login and feat flag tests back to features ([a55665c](https://github.com/nla/catalogue-patrons/commit/a55665c5e789990763c39004fa56ae053e2678bc))


### Tests

* add tests for authentication feature flag ([7f70814](https://github.com/nla/catalogue-patrons/commit/7f708140aeed156243043925b688508c00b4f55f))
* add tests for staff and backchannel logout ([91923ee](https://github.com/nla/catalogue-patrons/commit/91923ee1656ec77d88e9c922ba54c1b093d6a9de))


### Continuous Integration

* configure redis container for verify workflow ([a65098f](https://github.com/nla/catalogue-patrons/commit/a65098fb9d950a29928e1f472ba60fac9fe079b9))


### Build System

* update bundler version in Gemfile.lock ([fa8326a](https://github.com/nla/catalogue-patrons/commit/fa8326a046279f97a52b9fc4488dada31ea8a35f))


### Miscellaneous

* place user routes behind feature flag ([32fe116](https://github.com/nla/catalogue-patrons/commit/32fe1161e04594ea3d6f7a092f04e33eaeca9bcd))
* remove commented code ([5043a1c](https://github.com/nla/catalogue-patrons/commit/5043a1c548495996ce0048a3504bb455526912c3))
* update dependencies ([458f0da](https://github.com/nla/catalogue-patrons/commit/458f0dab0081ce1c0ff233478572ce016524d713))
* update rubocop config ([39e1e69](https://github.com/nla/catalogue-patrons/commit/39e1e69fc8a8bf5bf1a2aef4c102072a5e378079))
* upgrade dependencies ([8a723da](https://github.com/nla/catalogue-patrons/commit/8a723dac812a4b73b1bed74671cd6933fe2aab05))

## [3.0.0](https://github.com/nla/catalogue-patrons/compare/2.0.0...3.0.0) (2023-03-08)


### Features

* add config and links for staff shared Keycloak realm ([c9e217d](https://github.com/nla/catalogue-patrons/commit/c9e217d9a437d405cfc8eaab0f2e8b90428c824f))
* add separate links to staff login realms ([5011201](https://github.com/nla/catalogue-patrons/commit/5011201d827a6038d8e4d2182625bfa8da1f86e0))
* default staff email to empty string if not present ([962cedb](https://github.com/nla/catalogue-patrons/commit/962cedb4f02117890108dc65c19dcfd4c6031607))
* implement patron login via UserReg ([4a118dc](https://github.com/nla/catalogue-patrons/commit/4a118dcde7cdf05a4ae850a61cb4296627b3c2e8))
* implement separate Keycloak realms for SOL and SPL login ([f385be1](https://github.com/nla/catalogue-patrons/commit/f385be13628619a43705132301174c3a372badaa))
* implement staff backchannel logout ([409a61e](https://github.com/nla/catalogue-patrons/commit/409a61e2dc0742b69b2cd4caf0a00ca56248f03c))
* only display staff login links in staff network ([25d8834](https://github.com/nla/catalogue-patrons/commit/25d8834625f89e3ba15e39e14cac32aa1f735cd9))
* style staff login links and localise login text ([a1d3169](https://github.com/nla/catalogue-patrons/commit/a1d3169deb159e8ed86ccc87a5d1259e0d93fdd0))


### Bug Fixes

* fix install generator ([f3055cc](https://github.com/nla/catalogue-patrons/commit/f3055cc96834b99985e02fffb6b42d1c6c935638))
* fixes overridden Devise localisation and password label ([5d2c2a6](https://github.com/nla/catalogue-patrons/commit/5d2c2a6b3ee297f175ea8f33d6aa1df66a426e37))
* ignore "folio_ext_sys_id" pre-removal from db ([e3dff35](https://github.com/nla/catalogue-patrons/commit/e3dff356e985994edc5c62b5ce27aa8821be9006))


### Code Refactoring

* change patron auth endpoint ([a56fd3e](https://github.com/nla/catalogue-patrons/commit/a56fd3e43605bd81c0aba1fc5f4a867f676efc6e))
* refactor Keycloak integration and add tests ([8af8628](https://github.com/nla/catalogue-patrons/commit/8af8628e554cb0bc879d24a01e8c7dae3f28f132))


### Tests

* add feature spec for staff login ([55ad8d2](https://github.com/nla/catalogue-patrons/commit/55ad8d2a9c6dffc02dfa65fe397906d90d7c58dd))
* ignore GALC auth strategy in test coverage ([1b5929b](https://github.com/nla/catalogue-patrons/commit/1b5929b58937bea5b39872d4f331c6e05fda19c9))
* refactor mocks for auth requests ([e6ef656](https://github.com/nla/catalogue-patrons/commit/e6ef65620e7282cf8b4a25d29664e6e84e24cb7b))


### Documentation

* update model annotations ([a512fcb](https://github.com/nla/catalogue-patrons/commit/a512fcba89e98f5f6017f78be58e5ac9eaa2dec8))
* update README.md ([cf3e281](https://github.com/nla/catalogue-patrons/commit/cf3e281436b0dc234fdc45371d57acc5d42196d2))


### Miscellaneous

* add migration to remove folio_ext_sys_id column ([527e9c2](https://github.com/nla/catalogue-patrons/commit/527e9c2d9173105275501bb4d63a063032673c43))
* annotate models with annotate gem ([15a3310](https://github.com/nla/catalogue-patrons/commit/15a3310447917ed2c05348a995ef18cfc2f51dfc))
* clean up Devise turbo compatibility code ([39f19a6](https://github.com/nla/catalogue-patrons/commit/39f19a64bebb374172b4b389d82101202125603a))
* cleanup commented code ([43167ee](https://github.com/nla/catalogue-patrons/commit/43167ee96813298936a8ad80f3d10ab6e4e74bb2))
* release 3.0.0 ([494c432](https://github.com/nla/catalogue-patrons/commit/494c4329099a02a0adcef32f50184e316182f1f9))

## [2.0.0](https://github.com/nla/catalogue-patrons/compare/1.0.1...2.0.0) (2023-01-30)


### ⚠ BREAKING CHANGES

* separate configuration of users and sessions database

### Features

* increase security of session cookie ([c060c6c](https://github.com/nla/catalogue-patrons/commit/c060c6ca06bc2cd91b14318784a1ca94bda65068))
* overrides "db:sessions" trim and clear tasks ([8154f6f](https://github.com/nla/catalogue-patrons/commit/8154f6f9b5d583a8b9efbeb664dd1224b3bcf893))
* separate configuration of users and sessions database ([4f70555](https://github.com/nla/catalogue-patrons/commit/4f7055527e34def4d7f855acc2282877bbd89c3f))


### Bug Fixes

* fix tests in GitHub Actions ([3c0423b](https://github.com/nla/catalogue-patrons/commit/3c0423b99a13283759a2589b4345bbc0142fdad8))


### Code Refactoring

* changes install generator source_root ([c62d3fb](https://github.com/nla/catalogue-patrons/commit/c62d3fbe4a7a3ee7dd23264ca823b660d30b895d))


### Miscellaneous

* upgrade Rails to 7.0.4.2 ([34a5635](https://github.com/nla/catalogue-patrons/commit/34a5635ca31ed9c90746e9871c516ead7c429f80))


### Documentation

* update README.md badge links ([37655cb](https://github.com/nla/catalogue-patrons/commit/37655cb2c3012821dbd80b9a30756e6b076a1c67))
* updates README.md and adds sample database config ([7c87e41](https://github.com/nla/catalogue-patrons/commit/7c87e416efb7ed667feba0944bf8b5b991c0f75c))
* updates README.md and install generator USAGE ([566422e](https://github.com/nla/catalogue-patrons/commit/566422ec57624b9172d92566fb7d41003d0a5f67))

## [1.0.1](https://github.com/nla/catalogue-patrons/compare/1.0.0...1.0.1) (2023-01-23)


### Miscellaneous

* upgrade to Ruby 3.2.0 ([0629505](https://github.com/nla/catalogue-patrons/commit/06295052f1fa478ced87f3cc1d80cf095215ae88))

## 1.0.0 (2023-01-18)


### Features

* migrate logic and tests ([0d36f70](https://github.com/nla/catalogue-patrons/commit/0d36f70c27f42672e0762d0ea1b24b706e474b61))


### Continuous Integration

* add GitHub actions ([5bfe368](https://github.com/nla/catalogue-patrons/commit/5bfe3683955e05f881f63fcb37f604acefb42ff1))


### Miscellaneous

* add Simplecov config and remove MIT LICENSE ([19c0ace](https://github.com/nla/catalogue-patrons/commit/19c0ace08e8cd45eee103fa8344b05eb4d9172e1))
* initial commit ([4a81a11](https://github.com/nla/catalogue-patrons/commit/4a81a11065b09d339e377beefaba8f6ebbf9f2e3))


### Documentation

* update README.md ([66def80](https://github.com/nla/catalogue-patrons/commit/66def80d80de63ab389c3d5118d4c0b43615ab3e))


### Code Refactoring

* log Keycloak auth failure and move Devise localisation file here ([801fdbc](https://github.com/nla/catalogue-patrons/commit/801fdbc259a250c1be3db1e797e7c7e73b291a16))
