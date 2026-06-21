FROM mcr.microsoft.com/dotnet/sdk:10.0-alpine AS builder
COPY . /app
WORKDIR /app
RUN dotnet publish -c Release -o publish/proxy

FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS runner
COPY --from=builder /app/publish/proxy /opt/proxy
WORKDIR /opt/proxy
EXPOSE 9119/tcp
ENTRYPOINT [ "dotnet", "Content.MultiAuthProxy.dll" ]
