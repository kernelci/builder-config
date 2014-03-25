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

gcc-linaro-aarch64-linux-gnu:
  archive:
    - extracted
    - name: /usr
    - source: http://releases.linaro.org/latest/components/toolchain/binaries/gcc-linaro-aarch64-linux-gnu-4.8-2014.02_linux.tar.xz
    - source_hash: md5=6737ae448ffb8732885eb7d10db119ee
    - tar_options: J
    - archive_format: tar 
git-core:
  pkg:
    - latest

htop:
  pkg:
    - latest
