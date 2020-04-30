sync_grains_whenever_minion_starts:
  local.saltutil.sync_grains:
    - tgt: {{data['id']}}
    - args:
    - saltenv: base

new_node_setup:
  salt.state:
    - tgt: {{data['id'] }}
    - highstate: True
    - saltenv: base
