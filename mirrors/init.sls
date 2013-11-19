# kernel mirrors
git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git:
  git.latest:
    - target: /srv/mirrors/linux.git
    - mirror: True

# cron job for kernel mirrors
cd /srv/mirrors/linux.git && git remote update:
  cron.present:
    - user: root
    - minute: 20

# remotes
cd /srv/mirrors/linux.git && git remote add --no-tags next http://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git:
  cmd.run

cd /srv/mirrors/linux.git && git remote add --no-tags arm-soc http://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git:
  cmd.run
