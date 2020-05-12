# salt-run state.orch runorch
{# Use this orchestration to run a state on a minion #}

run this state:
  salt.state:
    - sls: examples.checkme
    - saltenv: {{ saltenv }}
    - tgt: '*'
    - tgt_type: glob

