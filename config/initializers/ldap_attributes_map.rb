LDAP_ATTRIBUTES_MAP = YAML.load_file(File.join(Rails.root, 'config', 'ldap_attributes_map.yml'))
LDAP_ATTRIBUTES = LDAP_ATTRIBUTES_MAP.keys