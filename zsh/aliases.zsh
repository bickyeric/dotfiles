# ARGOCD CONFIG
alias argo="argocd"

# CLI in DOCKER
alias kcat="docker run --rm --network host --platform linux/amd64 edenhill/kcat:1.7.1"
alias mongo="docker run -it --rm --network host mongo:6.0 mongosh"
alias grpcurl="docker run --rm -it --network host fullstorydev/grpcurl:v1.8.9"

# POSTGRES CLIENT
psql() {
  docker run --rm -it --network host --env PGHOST=127.0.0.1 postgres:17 psql $@
}

# MYSQL CLIENT
mysql() {
  docker run --rm -it --network host --env MYSQL_HOST=127.0.0.1 mysql:8.0 mysql $@
}
mysqldump() {
  docker run --rm -it --network host --env MYSQL_HOST=127.0.0.1 mysql:8.0 mysqldump $@
}
