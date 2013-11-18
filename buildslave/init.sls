buildslave:
  user.present:
    - fullname: Build Slave
    - shell: /bin/bash
    - home: /home/buildslave/
    - groups:
      - sudo
