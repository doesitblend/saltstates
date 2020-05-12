new_node_setup:
  salt.state:
    - tgt: {{ pillar['mytgt'] }}
    - highstate: True
    - saltenv: base

# salt-run state.orch runorch
{# Use this orchestration to run a state on a minion #}

run this state:
  salt.state:
    - sls: examples.checkme
    - saltenv: {{ saltenv }}
    - tgt: '*'
    - tgt_type: glob


