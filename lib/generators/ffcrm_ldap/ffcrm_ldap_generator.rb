class FfcrmLdapGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  def copy_config
    copy_file "config/ldap.yml.example"
    copy_file "config/ldap_attributes_map.yml.example"
  end
end