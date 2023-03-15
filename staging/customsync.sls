{# salt '*' state.single module.run name='saltutil.sync_modules' saltenv=staging #}


{# Here we indent saltenv because it is a an argument to the sync_modules function, not module.run itself #}
sync environment modules:
  module.run:
    - name: saltutil.sync_modules
    - saltenv: {{ saltenv }}
    - refresh: True

