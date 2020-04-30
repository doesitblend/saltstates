sync_grains_whenever_minion_starts:
  salt.saltutil.sync_grains:
    - tgt: 'master1'
    - args:
    - saltenv: base

new_node_setup:
  salt.state:
    - tgt: {{ pillar['mytgt'] }}
    - highstate: True
    - saltenv: base
