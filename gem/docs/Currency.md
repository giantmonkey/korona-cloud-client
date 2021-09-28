# KoronaCloudClient::Currency

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **cent_name** | **String** |  | [optional] |
| **decimal_places** | **Integer** |  | [optional] |
| **denominations** | [**Array&lt;CurrencyDenomination&gt;**](CurrencyDenomination.md) |  | [optional] |
| **exchange_rates** | [**Array&lt;CurrencyExchangeRate&gt;**](CurrencyExchangeRate.md) |  | [optional] |
| **key** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **system_currency** | **Boolean** |  | [optional] |
| **symbol** | **String** |  | [optional] |
| **number_length** | **Integer** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Currency.new(
  active: null,
  id: null,
  number: null,
  revision: null,
  cent_name: null,
  decimal_places: null,
  denominations: null,
  exchange_rates: null,
  key: null,
  name: null,
  system_currency: null,
  symbol: null,
  number_length: null
)
```

