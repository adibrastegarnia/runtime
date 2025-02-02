# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [atomix/runtime/v1/runtime.proto](#atomix_runtime_v1_runtime-proto)
    - [ConfigureClusterRequest](#atomix-runtime-v1-ConfigureClusterRequest)
    - [ConfigureClusterResponse](#atomix-runtime-v1-ConfigureClusterResponse)
    - [ConnectClusterRequest](#atomix-runtime-v1-ConnectClusterRequest)
    - [ConnectClusterResponse](#atomix-runtime-v1-ConnectClusterResponse)
    - [ConnectionInfo](#atomix-runtime-v1-ConnectionInfo)
    - [DisconnectClusterRequest](#atomix-runtime-v1-DisconnectClusterRequest)
    - [DisconnectClusterResponse](#atomix-runtime-v1-DisconnectClusterResponse)
    - [DriverChunk](#atomix-runtime-v1-DriverChunk)
    - [DriverHeader](#atomix-runtime-v1-DriverHeader)
    - [DriverInfo](#atomix-runtime-v1-DriverInfo)
    - [DriverTrailer](#atomix-runtime-v1-DriverTrailer)
    - [InstallDriverRequest](#atomix-runtime-v1-InstallDriverRequest)
    - [InstallDriverResponse](#atomix-runtime-v1-InstallDriverResponse)
  
    - [Runtime](#atomix-runtime-v1-Runtime)
  
- [Scalar Value Types](#scalar-value-types)



<a name="atomix_runtime_v1_runtime-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## atomix/runtime/v1/runtime.proto



<a name="atomix-runtime-v1-ConfigureClusterRequest"></a>

### ConfigureClusterRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cluster | [string](#string) |  |  |
| connection | [ConnectionInfo](#atomix-runtime-v1-ConnectionInfo) |  |  |






<a name="atomix-runtime-v1-ConfigureClusterResponse"></a>

### ConfigureClusterResponse







<a name="atomix-runtime-v1-ConnectClusterRequest"></a>

### ConnectClusterRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cluster | [string](#string) |  |  |
| connection | [ConnectionInfo](#atomix-runtime-v1-ConnectionInfo) |  |  |






<a name="atomix-runtime-v1-ConnectClusterResponse"></a>

### ConnectClusterResponse







<a name="atomix-runtime-v1-ConnectionInfo"></a>

### ConnectionInfo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| driver | [DriverInfo](#atomix-runtime-v1-DriverInfo) |  |  |
| config | [bytes](#bytes) |  |  |






<a name="atomix-runtime-v1-DisconnectClusterRequest"></a>

### DisconnectClusterRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cluster | [string](#string) |  |  |






<a name="atomix-runtime-v1-DisconnectClusterResponse"></a>

### DisconnectClusterResponse







<a name="atomix-runtime-v1-DriverChunk"></a>

### DriverChunk



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data | [bytes](#bytes) |  |  |






<a name="atomix-runtime-v1-DriverHeader"></a>

### DriverHeader



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| driver | [DriverInfo](#atomix-runtime-v1-DriverInfo) |  |  |






<a name="atomix-runtime-v1-DriverInfo"></a>

### DriverInfo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| version | [string](#string) |  |  |






<a name="atomix-runtime-v1-DriverTrailer"></a>

### DriverTrailer



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| checksum | [string](#string) |  |  |






<a name="atomix-runtime-v1-InstallDriverRequest"></a>

### InstallDriverRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| header | [DriverHeader](#atomix-runtime-v1-DriverHeader) |  |  |
| chunk | [DriverChunk](#atomix-runtime-v1-DriverChunk) |  |  |
| trailer | [DriverTrailer](#atomix-runtime-v1-DriverTrailer) |  |  |






<a name="atomix-runtime-v1-InstallDriverResponse"></a>

### InstallDriverResponse






 

 

 


<a name="atomix-runtime-v1-Runtime"></a>

### Runtime
The runtime service provides control functions for the runtime proxy.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| ConnectCluster | [ConnectClusterRequest](#atomix-runtime-v1-ConnectClusterRequest) | [ConnectClusterResponse](#atomix-runtime-v1-ConnectClusterResponse) |  |
| ConfigureCluster | [ConfigureClusterRequest](#atomix-runtime-v1-ConfigureClusterRequest) | [ConfigureClusterResponse](#atomix-runtime-v1-ConfigureClusterResponse) |  |
| DisconnectCluster | [DisconnectClusterRequest](#atomix-runtime-v1-DisconnectClusterRequest) | [DisconnectClusterResponse](#atomix-runtime-v1-DisconnectClusterResponse) |  |
| InstallDriver | [InstallDriverRequest](#atomix-runtime-v1-InstallDriverRequest) stream | [InstallDriverResponse](#atomix-runtime-v1-InstallDriverResponse) |  |

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

