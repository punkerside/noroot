FROM mcr.microsoft.com/dotnet/samples:aspnetapp
ENV ASPNETCORE_URLS=http://+:5000
ENV COMPlus_EnableDiagnostics=0
RUN adduser --disabled-password --uid 10000 noroot
USER noroot
ENV APPVERSION=0.0.2