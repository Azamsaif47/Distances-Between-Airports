FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
# Rest of the file remains unchanged
WORKDIR /src
COPY ["DistanceAPI/DistanceAPI.csproj", "DistanceAPI/"]
COPY ["Business/Business.csproj", "Business/"]
COPY ["DAL/DAL.csproj", "DAL/"]
COPY ["Helper/Helper.csproj", "Helper/"]
COPY ["Model/Model.csproj", "Model/"]
RUN dotnet restore "DistanceAPI/DistanceAPI.csproj"
COPY . .
WORKDIR "/src/DistanceAPI"
RUN dotnet build "DistanceAPI.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "DistanceAPI.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "DistanceAPI.dll"]