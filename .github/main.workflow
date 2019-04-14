workflow "merge to master" {
  on = "release"
  resolves = ["new-action"]
}

action "new-action" {
  uses = "owner/repo/path@ref"
}
