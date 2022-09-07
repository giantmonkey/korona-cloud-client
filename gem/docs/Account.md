# KoronaCloudClient::Account

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **cash_journal_relevant** | **Boolean** |  | [optional] |
| **denomination_input** | **Boolean** |  | [optional] |
| **exclusive** | **Boolean** |  | [optional] |
| **name** | **String** |  | [optional] |
| **producer** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **requires_serial_number** | **Boolean** |  | [optional] |
| **revenue_account** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **type** | **String** |  | [optional] |
| **show_transaction_on_customer_display** | **Boolean** |  | [optional] |
| **invert_in_cash_journal** | **Boolean** |  | [optional] |
| **fiscal_export_business_case** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Account.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  cash_journal_relevant: null,
  denomination_input: null,
  exclusive: null,
  name: null,
  producer: null,
  requires_serial_number: null,
  revenue_account: null,
  type: null,
  show_transaction_on_customer_display: null,
  invert_in_cash_journal: null,
  fiscal_export_business_case: null
)
```

