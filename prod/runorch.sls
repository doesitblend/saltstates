webserver_setup:
  salt.state:
    - tgt: 'master1'
    - highstate: True
