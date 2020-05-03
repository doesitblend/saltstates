install vim enhanced:
  pkg.latest:
    - name: vim-enhanced

install lsof:
  pkg.latest:
    - name: lsof

make sure net tools are installed:
  pkg.latest:
    - name: net-tools

we do lots of network troubleshooting:
  pkg.latest:
    - name: tcpdump

we test urls:
  pkg.latest:
    - name: wget
