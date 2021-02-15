# BuildKit によるイメージ構築のサンプル

## イメージビルド

> docker build --secret id=ssh,src=$HOME/.ssh/id_rsa -t secret .
> DOCKER_BUILDKIT=1 docker build --no-cache --secret id=ssh,src=$HOME/.ssh/id_rsa -t secret --build-arg GIT_MY_REPO=git@github.com:ohde-sg/ts-design-pattern.git .
