User.class_eval do
  def self.update_or_create_from_ldap(username)
    if u = find_by_username(username)
      u.set_attributes_from_ldap
      u.save
      return u
    elsif details = FfcrmLdap::LDAPAccess.get_user_details(username)
      u = self.new(:username => username)
      u.set_attributes_from_ldap( details )
      u.admin = true if self.count == 0
      u.save
      return u
    end
    return nil
  end

  def set_attributes_from_ldap( details = nil )
    details ||= FfcrmLdap::LDAPAccess.get_user_details(username)
    unless details.nil?
      LDAP_ATTRIBUTES_MAP.each do |k,v|
        write_attribute(k, details[v.to_sym])
      end
    end
    self
  end

  protected

  def valid_ldap_credentials?(password)
    FfcrmLdap::LDAPAccess.authenticate(self.username, password)
  end
end