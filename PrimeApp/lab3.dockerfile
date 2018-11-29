FROM alpine/git as git
RUN  git clone https://github.com/Podarunka/lab1.git; \
     mv /git/lab1 /root/src

FROM microsoft/dotnet:2.1-sdk as compiler
COPY --from=git /root/src /root/src
RUN dotnet publish -c Release -o /root/app /root/src/PrimeApp

FROM microsoft/dotnet:2.1-runtime as base
COPY --from=compiler /root/app /root/app
CMD ["dotnet", "/root/app/PrimeApp.dll"]
