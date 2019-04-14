workflow "merge to master" {
  resolves = ["post-release"]
  on = "label"
}

action "post-release" {
  uses = "puneeth-n/auto-merge-action@master"
  secrets = ["GITHUB_TOKEN"]
}
