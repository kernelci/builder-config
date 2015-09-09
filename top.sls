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
    - android-builer
