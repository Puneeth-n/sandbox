workflow "pull_request" {
  resolves = ["post-release"]
  on = "pull_request"
}


workflow "release" {
  on = "release"
  resolves = ["post-release"]
}

workflow "check_run" {
  on = "check_run"
  resolves = ["post-release"]
}

action "post-release" {
  uses = "puneeth-n/auto-merge-action@master"
  secrets = ["GITHUB_TOKEN"]
}
