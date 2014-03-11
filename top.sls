base:

  # salt master
  'LinaroSaltServer':
    - salt-master

  # vps kernel builders
  'kbuilder*':
    - match: pcre
    - salt-minion
    - kernel-builder
    - buildslave
    - jenkins
    - mirrors

  # vps general builders
  'vpsbuilder*':
    - match: pcre
    - salt-minion
    - buildslave
    - jenkins

  # toolchain builders
  'tcwgbuild*':
    - match: pcre
    - salt-minion
    - kernel-builder
    - buildslave
    - jenkins
    - mirrors
