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
