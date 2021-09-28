# KoronaCloudClient::DeviceInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_version** | **String** | current version of paired app | [optional] |
| **operating_system** | **String** | name and version of the operation system | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::DeviceInformation.new(
  app_version: 1.0,
  operating_system: iOS 11.1
)
```

