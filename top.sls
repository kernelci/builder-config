base:

  # salt master
  'LinaroSaltServer':
    - salt-master

  # vps kernel builders
  'vps-*':
    - match: pcre
    - salt-minion
    - kernel-builder
    - buildslave
