# KoronaCloudClient::VoucherConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **type** | **String** |  | [optional] |
| **validity_period** | [**TimePeriod**](TimePeriod.md) |  | [optional] |
| **strict_validity** | **Boolean** |  | [optional] |
| **sector** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **follow_up_products** | [**VoucherConfigurationFollowUpProducts**](VoucherConfigurationFollowUpProducts.md) |  | [optional] |
| **single_use** | **Boolean** |  | [optional] |
| **requires_serial_number** | **Boolean** |  | [optional] |
| **production_type** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **revenue_account** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **credit_amount** | **Float** |  | [optional] |
| **account** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **discount** | [**VoucherConfigurationDiscountCalculation**](VoucherConfigurationDiscountCalculation.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::VoucherConfiguration.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  type: null,
  validity_period: null,
  strict_validity: null,
  sector: null,
  follow_up_products: null,
  single_use: null,
  requires_serial_number: null,
  production_type: null,
  revenue_account: null,
  credit_amount: null,
  account: null,
  name: null,
  discount: null
)
```

