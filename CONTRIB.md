# WiFIS Connect

Please, go through the following steps if you want to contribute to this project:

1. Report an issue. Describe it as much as you can, including how to reproduce it if possible.
2. Fork the repository, create a new branch
3. Develop your changes. Add new unittests if needed.
4. Create a pull request

## Environment
Use the provided Docker container environment to develop your changes.

This environment includes:
* IRIS For Health (Community)
* Installer

To start up you development environment:
```console
docker-compose build
docker-compose up
```

Open an interactive session:
```console
docker exec -it wifis-connect bash
iris session IRIS
```

### Test
Start production
```objectscript
write ##class(Ens.Director).StartProduction("WiFIS.V201.Test.Production")
```
Copy some input files from `samples/` to `samples/input/` to process the files using the Production.

### Test using SAML ticket generation
Start SAML production
```objectscript
write ##class(Ens.Director).StartProduction("WiFIS.V201.Test.SAMLProduction")
```

Import HC3SA java classes to generate SAML ticket.
```objectscript
write ##class(WiFIS.V201.Utils.Installer).ImportJavaHC3SA()
```

Copy some input files from `samples/` to `samples/input/` to process the files using the SAMLProduction.