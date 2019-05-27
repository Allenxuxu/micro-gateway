# micro api gateway
精简后 micro 工具集，只保留 micro api 功能，去除micro new， micro web 等功能

## 使用
仅仅删除了其他功能的代码，未修改源码，所以使用方法不变

```bash
$  make
$  cd build
$  ./micro-gateway api -h
NAME:
   micro-gateway api - Run the api gateway

USAGE:
   micro-gateway api [command options] [arguments...]

OPTIONS:
   --address    Set the api address e.g 0.0.0.0:8080 [$MICRO_API_ADDRESS]
   --handler    Specify the request handler to be used for mapping HTTP requests to services; {api, event, http, rpc} [$MICRO_API_HANDLER]
   --namespace  Set the namespace used by the API e.g. com.example.api [$MICRO_API_NAMESPACE]
   --resolver   Set the hostname resolver used by the API {host, path, grpc} [$MICRO_API_RESOLVER]
```