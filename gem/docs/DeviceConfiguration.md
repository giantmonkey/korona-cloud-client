# KoronaCloudClient::DeviceConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **port** | **String** |  | [optional] |
| **device** | **String** |  | [optional] |
| **baud_rate** | **String** |  | [optional] |
| **init_command** | **String** |  | [optional] |
| **init_command_variable** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **port_parameter** | **String** |  | [optional] |
| **port_parameter_variable** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **default_device** | **Boolean** |  | [optional] |
| **device_parameters** | [**Array&lt;DeviceParameterItem&gt;**](DeviceParameterItem.md) |  | [optional] |
| **production_type_settings** | [**Array&lt;ProductionTypeSetting&gt;**](ProductionTypeSetting.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::DeviceConfiguration.new(
  port: null,
  device: null,
  baud_rate: null,
  init_command: null,
  init_command_variable: null,
  port_parameter: null,
  port_parameter_variable: null,
  default_device: null,
  device_parameters: null,
  production_type_settings: null
)
```

