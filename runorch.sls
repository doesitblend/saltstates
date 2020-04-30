sync_grains_whenever_minion_starts:
  local.saltutil.sync_grains:
    - tgt: 'master1'
    - args:
    - saltenv: base

new_node_setup:
  salt.state:
    - tgt: 'master1'
    - highstate: True
    - saltenv: base
