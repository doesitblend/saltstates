{# https://docs.saltstack.com/en/latest/ref/modules/all/salt.modules.saltutil.html#salt.modules.saltutil.sync_modules #}
{# This will run as a state, not an orchestration. This must be used like salt-call state.apply path.to.state #}
sync environment modules:
  module.run:
    - name: saltutil.sync_modules
    - saltenv: {{ saltenv }}
    - refresh: True
