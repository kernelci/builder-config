# kernel builder packages

build-essential:
  pkg:
    - latest

distcc:
  pkg:
    - latest

distcc-pump:
  pkg:
    - latest

ccache:
  pkg:
    - latest

lzop:
  pkg:
    - latest

python:
  pkg:
    - latest

msmtp:
  pkg:
    - latest

bc:
  pkg:
    - latest

python-software-properties:
  pkg:
    - latest

toolchain:
  pkgrepo.managed:
    - ppa: linaro-maintainers/toolchain
  pkg.latest:
    - name: gcc-arm-linux-gnueabi
    - refresh: True

toolchain-arm64:
  pkgrepo.managed:
    - ppa: linaro-maintainers/toolchain
  pkg.latest:
    - name: gcc-aarch64-linux-gnu
    - refresh: True

git-core:
  pkg:
    - latest

htop:
  pkg:
    - latest
