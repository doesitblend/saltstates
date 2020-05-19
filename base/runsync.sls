{# Use this orchestration to run a state on a minion #}

{# this first stanza tells the master to sync custom modules to itself from the specified environment #}
syncing the master modules:
  salt.runner:
    - name: saltutil.sync_modules
    - saltenv: {{ saltenv }}

{# this tells the minions to request the latest versions of the modules from the specified environment #}
run this state:
  salt.state:
    - sls: example_sync
    - saltenv: {{ saltenv }}
    - tgt: '*'
    - tgt_type: glob

