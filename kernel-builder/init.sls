# kernel builder packages

ia32-libs:
  pkg:
    - latest

build-essential:
  pkg:
    - latest

curl:
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

gcc-linaro-aarch64-linux-gnu:
  archive:
    - extracted
    - name: /usr/
    - source: http://releases.linaro.org/14.04/components/toolchain/binaries/gcc-linaro-aarch64-linux-gnu-4.8-2014.04_linux.tar.xz
    - source_hash: md5=2086d92dcaccf05a454c836f01c3fc5
    - tar_options: ' --strip-components=1 -J'
    - archive_format: tar
    - if_missing: /usr/aarch64-linux-gnu/

git-core:
  pkg:
    - latest

htop:
  pkg:
    - latest
