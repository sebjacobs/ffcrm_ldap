Authentication.instance_eval do
  verify_password_method :valid_ldap_credentials?
  find_by_login_method :update_or_create_from_ldap
end