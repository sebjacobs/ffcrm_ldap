module FfcrmLdap
  class Engine < Rails::Engine
    config.to_prepare do
      require File.join(FfcrmLdap::Engine.root, 'app/models/users/authentication').to_s
      require File.join(FfcrmLdap::Engine.root, 'app/models/users/user').to_s
      require 'ffcrm_ldap/ldap_access'
    end
  end
end