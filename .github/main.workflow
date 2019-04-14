workflow "merge to master" {
  on = "release"
  resolves = ["post-release"]
}

action "post-release" {
  uses = "puneeth-n/auto-merge-action@master"
  secrets = ["GITHUB_TOKEN"]
}
