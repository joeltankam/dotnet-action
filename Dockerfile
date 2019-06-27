FROM microsoft/dotnet:sdk

LABEL version="1.0.0"
LABEL repository="https://github.com/joeltankam/dotnet-action"
LABEL homepage="https://github.com/joeltankam/dotnet-action"
LABEL maintainer="Joël TANKAM <joel.tankam@gmail.com>"

LABEL com.github.actions.name=".NET Core Command-Line Interface"
LABEL com.github.actions.description="Wraps .Net Core CLI to enable common commands."
LABEL com.github.actions.icon="triangle"
LABEL com.github.actions.color="purple"

COPY . .

ENTRYPOINT ["/entrypoint.sh"]
