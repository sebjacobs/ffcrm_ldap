# LDAP Plugin for Fat Free CRM 

## Installation

Include the gem in your Gemfile:

    gem "ffcrm_ldap", "~> 0.1.1"

Generate config files

    rails generate ffcrm_ldap:install

Configure ldap.yml

    development:
      host: ldap.example.com
      port: 548
      ssl: true
      bind_dn: 'uid=admin.user,ou=admins,dc=example,dc=com'
      bind_passwd: 'password'
      search_base: "ou=people,dc=example,dc=com"
      user_filter: "(uid=%s)"

Configure ldap_attributes_map.yml

    email:      mail
    first_name: givenname
    last_name:  sn
    phone:      telephonenumber
    mobile:     mobile


## Contributing to ffcrm_ldap

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.


## Copyright

Copyright (c) 2012 Seb Jacobs. See LICENSE.txt for
further details.