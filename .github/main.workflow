workflow "merge to master" {
  resolves = ["post-release"]
  on = "pull_request"
}

action "post-release" {
  uses = "puneeth-n/auto-merge-action@master"
  secrets = ["GITHUB_TOKEN"]
}
