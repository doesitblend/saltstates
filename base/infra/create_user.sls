{# State to create a service user #}
{% set mypass = pillar['password'] %}
create_service_account:
  user.present:
    - name: salt
    - fullname: service admin
    - shell: /bin/bash
    - home: /home/salt
    - createhome: True
    - usergroup: True
    - password: {{ mypass }}
    - hash_password: True
    - enforce_password: True
