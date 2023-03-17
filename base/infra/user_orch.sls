{% set password = salt['cmd.run']('/bin/bash /srv/salt/test/testscript.sh') %}
{% set cleanup = salt['pillar.get']('cleanup',False) %}

create_test_user:
  salt.state:
    - sls: {{ slspath }}.create_user
    - tgt: 'pillar-test'
    - pillar:
        password: "{{ password }}"

{% if cleanup %}
remove_test_user:
  salt.state:
    - sls: {{ slspath }}.clean_user
    - tgt: 'pillar-test'
    - require:
        - state: create_user_user
    
{% endif %}
