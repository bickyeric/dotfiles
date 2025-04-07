# ARGOCD CONFIG
alias argo="argocd"

# PODMAN
alias docker="podman"

# CLI in PODMAN
alias kcat="podman run --rm --network host --platform linux/amd64 edenhill/kcat:1.7.1"
alias mongo="podman run -it --rm --network host mongo:6.0 mongosh"
alias grpcurl="podman run --rm -it --network host fullstorydev/grpcurl:v1.8.9"

# KUBECTL CONFIG
alias k="kubectl"

# POSTGRES CLIENT
psql() {
  podman run --rm -it --network host --env PGHOST=127.0.0.1 postgres:17 psql $@
}

# MYSQL CLIENT
mysql() {
  podman run --rm -it --network host --env MYSQL_HOST=127.0.0.1 mysql:8.0 mysql $@
}
mysqldump() {
  podman run --rm -it --network host --env MYSQL_HOST=127.0.0.1 mysql:8.0 mysqldump $@
}
