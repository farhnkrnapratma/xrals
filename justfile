set shell := ["bash", "-ceu", "-o", "pipefail"]

test:
  echo $SHELL
  $SHELL --version
