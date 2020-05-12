# salt-run state.orch runorch
{# Use this orchestration to run a state on a minion #}

run this state:
  salt.state:
    - sls: customsync
    - saltenv: {{ saltenv }}
    - tgt: '*'
    - tgt_type: glob

