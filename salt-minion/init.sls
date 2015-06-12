python-software-properties:
  pkg:
    - latest

software-properties-common:
  pkg:
    - latest

add_salt_ppa:
  cmd.run:
    - name: add-apt-repository -y ppa:saltstack/salt && apt-get update

salt-minion:
  pkg:
    - latest
