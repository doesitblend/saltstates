{# Use this orchestration to run a state on a minion #}

run this state:
  salt.state:
    - sls: example_sync
    - saltenv: {{ saltenv }}
    - tgt: '*'
    - tgt_type: glob
