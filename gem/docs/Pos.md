# KoronaCloudClient::Pos

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **container_mode** | **Boolean** |  | [optional] |
| **contra_account** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **coupled** | **Boolean** |  | [optional][readonly] |
| **coupled_client_system_information** | **Hash&lt;String, String&gt;** |  | [optional] |
| **coupling_id** | **String** | write only | [optional] |
| **customer_display_configuration** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **default_customer_group** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **default_payment_method** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **device_information** | [**DeviceInformation**](DeviceInformation.md) |  | [optional] |
| **entry_gate** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **external** | **Boolean** |  | [optional] |
| **fiscal_service_type** | **String** |  | [optional] |
| **fiscal_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **fiscal_unit_pre_configuration** | [**FiscalUnitPreConfiguration**](FiscalUnitPreConfiguration.md) |  | [optional] |
| **language** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **last_receipt_number** | **String** | last receipt number - only shown if external&#x3D;true and coupled&#x3D;false; usable for client-side receipt counter. | [optional][readonly] |
| **last_z_count** | **Integer** | last zcount property - only shown if external&#x3D;true and coupled&#x3D;false; usable for client-side zcount. | [optional][readonly] |
| **layout_configuration** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **pos_profile** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **print_footer_lines** | **Hash&lt;String, String&gt;** |  | [optional] |
| **print_header_lines** | **Hash&lt;String, String&gt;** |  | [optional] |
| **receipt_info_texts** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **receipt_number_prefix** | **String** |  | [optional][readonly] |
| **revenue_account** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **table_overview** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **tip_account** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **use_alternative_sector** | **Boolean** |  | [optional] |
| **warehouse** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **device_configuration_variable_values** | [**Array&lt;DeviceConfigurationVariableValue&gt;**](DeviceConfigurationVariableValue.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Pos.new(
  active: null,
  id: null,
  number: null,
  revision: null,
  container_mode: null,
  contra_account: null,
  coupled: null,
  coupled_client_system_information: null,
  coupling_id: null,
  customer_display_configuration: null,
  default_customer_group: null,
  default_payment_method: null,
  device_information: null,
  entry_gate: null,
  external: null,
  fiscal_service_type: null,
  fiscal_unit: null,
  fiscal_unit_pre_configuration: null,
  language: null,
  last_receipt_number: null,
  last_z_count: null,
  layout_configuration: null,
  name: null,
  organizational_unit: null,
  pos_profile: null,
  print_footer_lines: null,
  print_header_lines: null,
  receipt_info_texts: null,
  receipt_number_prefix: null,
  revenue_account: null,
  table_overview: null,
  tip_account: null,
  use_alternative_sector: null,
  warehouse: null,
  device_configuration_variable_values: null
)
```

