# kernel builder packages

unzip:
  pkg:
    - latest

add_i386_architecture:
  cmd.run:
    - name: dpkg --add-architecture i386

libssl-dev:
 pkg:
   - latest

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

# needed by x86 builds
libelf-dev:
  pkg:
    - latest
    
gcc-linaro-aarch64-linux-gnu:
  archive.extracted:
    - name: /usr/
    - source: https://releases.linaro.org/components/toolchain/binaries/5.3-2016.05/aarch64-linux-gnu/gcc-linaro-5.3.1-2016.05-x86_64_aarch64-linux-gnu.tar.xz
    - source_hash: md5=24ac2e26f50f49f3043f281440b41bba
    - tar_options: ' --strip-components=1 -J'
    - archive_format: tar
    - if_missing: /usr/aarch64-linux-gnu/

gcc-linaro-arm-linux-gnueabihf:
  archive.extracted:
    - name: /usr/
    - source: https://releases.linaro.org/components/toolchain/binaries/5.3-2016.05/arm-linux-gnueabihf/gcc-linaro-5.3.1-2016.05-x86_64_arm-linux-gnueabihf.tar.xz
    - source_hash: md5=gcc-linaro-5.3.1-2016.05-x86_64_arm-linux-gnueabihf.tar.xz
    - tar_options: ' --strip-components=1 -J'
    - archive_format: tar
    - if_missing: /usr/arm-linux-gnueabihf/
