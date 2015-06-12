# kernel builder packages

unzip:
  pkg:
    - latest

add_i386_architecture:
  cmd.run:
    - name: dpkg --add-architecture i386

libstdc++6:i386:
 pkg:
   - latest

libgcc1:i386:
 pkg:
   - latest

zlib1g:i386:
 pkg:
   - latest

libncurses5:i386:
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

git-core:
  pkg:
    - latest

htop:
  pkg:
    - latest

gcc-arm-linux-gnueabi:
  pkg:
    - latest

gcc-linaro-aarch64-linux-gnu:
  archive.extracted:
    - name: /usr/
    - source: http://releases.linaro.org/14.04/components/toolchain/binaries/gcc-linaro-aarch64-linux-gnu-4.8-2014.04_linux.tar.xz
    - source_hash: md5=2086d92dcaccf05a454c836f01c3fc5f
    - tar_options: ' --strip-components=1 -J'
    - archive_format: tar
    - if_missing: /usr/aarch64-linux-gnu/
