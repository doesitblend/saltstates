new_node_setup:
  salt.state:
    - tgt: {{ pillar['mytgt'] }}
    - highstate: True
    - saltenv: base
