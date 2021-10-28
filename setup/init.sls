ensure the latest version of Git command is installed:
  pkg.latest:
    - name: git 

install latest version of gitpython:
  pip.installed:
    - name: pygit2
    - upgrade: True

ensure config is in place:
  file.managed:
    - name: /etc/salt/master.d/fileserver_backends.conf
    - source: salt://{{ slspath }}/gitsetup.conf
    - mode: 640
    - user: root
    - group: root

{% for file in ['github','github.pub'] %}

add SSH key {{ file }}:
  file.managed:
    - name: /etc/salt/pki/master/{{ file }}
    - source: salt://{{ slspath }}/{{ file }}
    - user: root
    - group: root

{% endfor %}

restart salt master daemon:
  cmd.run:
    - name: "sleep 10 && systemctl restart salt-master"
    - bg: True
    - watch:
        - file: ensure config is in place