# KoronaCloudClient::FiscalUnitCertificateInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **String** | log message certificate of the fiscal unit. Value can only be set on create and is not changeable on update. | [optional] |
| **expiration_date** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::FiscalUnitCertificateInfo.new(
  data: null,
  expiration_date: 2018-11-22T09:40:21+01:00
)
```

