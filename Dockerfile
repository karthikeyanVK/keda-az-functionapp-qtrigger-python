# To enable ssh & remote debugging on app service change the base image to the one below
# FROM mcr.microsoft.com/azure-functions/python:2.0-python3.7-appservice
FROM mcr.microsoft.com/azure-functions/python:2.0-python3.7

ENV AzureWebJobsScriptRoot=/home/site/wwwroot \
    AzureFunctionsJobHost__Logging__Console__IsEnabled=true \
    AzureWebJobsStorage="DefaultEndpointsProtocol=https;AccountName=azfuncpowershela333;AccountKey=l2qN5Tglh9lnxoYO/00rxItyrHWDe5VvgI2qmFtKs+EvWzd5aF6lWWKlf8Ik2JVDLaPZUoiy+rn0+BrG7kY6lA==;EndpointSuffix=core.windows.net"

COPY requirements.txt /
RUN pip install -r /requirements.txt

COPY . /home/site/wwwroot