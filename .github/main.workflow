workflow "pull_request" {
  resolves = ["post-release"]
  on = "pull_request"
}

action "post-release" {
  uses = "puneeth-n/auto-merge-action@master"
  secrets = ["GITHUB_TOKEN"]
}

workflow "release" {
  on = "release"
  resolves = ["post-release"]
}
