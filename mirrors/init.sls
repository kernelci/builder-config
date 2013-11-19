# kernel mirrors
git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git:
  git.latest:
    - target: /srv/mirrors/linux.git
    - mirror: True

# deploy mirror update script
/srv/mirrors/update_mirror.sh:
  file.managed:
    - source: salt://mirrors/update_mirror.sh
    - user: root
    - group: root
    - mode: 755

# cron job for kernel mirrors
/srv/mirrors/update_mirror.sh /srv/mirrors/linux.git:
  cron.present:
    - user: root
    - minute: 20

# remotes
add_remotes:
  cmd.run:
    - name: "cd /srv/mirrors/linux.git && git remote add --no-tags next http://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
    - unless: "cd /srv/mirrors/linux.git && git remote | grep next"
  cmd.run:
    - name: "cd /srv/mirrors/linux.git && git remote add --no-tags arm-soc http://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git"
    - unless: "cd /srv/mirrors/linux.git && git remote | grep arm-soc"
