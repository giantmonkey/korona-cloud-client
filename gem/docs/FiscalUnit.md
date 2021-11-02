# KoronaCloudClient::FiscalUnit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **admin_pin** | **String** |  | [optional] |
| **admin_puk** | **String** |  | [optional] |
| **certificate** | [**FiscalUnitCertificateInfo**](FiscalUnitCertificateInfo.md) |  | [optional] |
| **log_time_format** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **process_data_encoding** | **String** |  | [optional] |
| **public_key** | **String** | public key of the fiscal unit. Value can only be set on create and is not changeable on update. | [optional] |
| **signature_algorithm** | **String** |  | [optional] |
| **state** | [**FiscalUnitState**](FiscalUnitState.md) |  | [optional] |
| **time_admin_pin** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **api_key** | **String** |  | [optional] |
| **api_secret** | **String** |  | [optional] |
| **remote_url** | **String** |  | [optional] |
| **tss_client_uid** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::FiscalUnit.new(
  active: null,
  id: null,
  number: null,
  revision: null,
  admin_pin: null,
  admin_puk: null,
  certificate: null,
  log_time_format: null,
  name: null,
  process_data_encoding: null,
  public_key: null,
  signature_algorithm: null,
  state: null,
  time_admin_pin: null,
  type: null,
  api_key: null,
  api_secret: null,
  remote_url: null,
  tss_client_uid: null
)
```

