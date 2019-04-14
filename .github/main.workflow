workflow "pull_request" {
  resolves = ["merge-bot"]
  on = "pull_request"
}


workflow "release" {
  on = "release"
  resolves = ["merge-bot"]
}

workflow "check_run" {
  on = "check_run"
  resolves = ["merge-bot"]
}

action "merge-bot" {
  uses = "puneeth-n/auto-merge-action@master"
  secrets = ["GITHUB_TOKEN"]
  env = {
    OK_TO_MERGE_LABEL = "merge when green",
    BASE_BRANCH = "master"
  }
}
