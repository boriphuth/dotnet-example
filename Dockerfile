RUN dotnet restore && dotnet publish -c Release -o out

FROM microsoft/dotnet:runtime

WORKDIR /dotnetapp
COPY out .
ENTRYPOINT ["dotnet", "dotnet-example.dll"]