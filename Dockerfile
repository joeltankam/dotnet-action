FROM microsoft/dotnet:sdk

LABEL version="1.0.0"
LABEL repository="https://github.com/joeltankam/dotnet-actions"
LABEL homepage="https://github.com/joeltankam/dotnet-actions"
LABEL maintainer="Joël TANKAM <joel.tankam@gmail.com>"

LABEL com.github.actions.name="GitHub Action for dotnet CLI"
LABEL com.github.actions.description="Wraps .Net Core CLI to enable common dotnet commands."
LABEL com.github.actions.icon="triangle"
LABEL com.github.actions.color="purple"

COPY . .

ENTRYPOINT ["/entrypoint.sh"]