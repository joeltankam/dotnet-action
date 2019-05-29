# GitHub Action for dotnet CLI

This Action for [.Net Core CLI](https://docs.microsoft.com/en-us/dotnet/core/tools/) enables to build, test, package or publish a .Net application, or run a custom `dotnet` command.

## Usage

This Action can be used to run any `dotnet` command. Here is an example workflow to build and test a .Net application :

```hcl
workflow "Restore, Build, Test" {
  on = "push"
  resolves = ["Test"]
}

action "Restore" {
  uses = "joeltankam/dotnet-action@master"
  args = "restore --verbosity minimal"
}

action "Build" {
  needs = "Restore"
  uses = "joeltankam/dotnet-action@master"
  args = "build --configuration Release"
}

action "Test" {
  needs = "Build"
  uses = "joeltankam/dotnet-action@master"
  args = "test --logger:trx"
}
```

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).