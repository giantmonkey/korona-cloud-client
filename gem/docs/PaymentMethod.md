# KoronaCloudClient::PaymentMethod

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **Boolean** | indicates whether the object is active for use or not | [optional] [readonly] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] [readonly] 
**allowed_balance_difference** | **Float** |  | [optional] 
**currency** | [**ModelReference**](ModelReference.md) |  | [optional] 
**force_customer_number** | **Boolean** |  | [optional] 
**force_print** | **Boolean** |  | [optional] 
**name** | **String** |  | [optional] 
**print_copies** | **Integer** |  | [optional] 
**tag** | [**ModelReference**](ModelReference.md) |  | [optional] 
**use_cash_drawer** | **Boolean** |  | [optional] 
**revenue_account** | [**ModelReference**](ModelReference.md) |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::PaymentMethod.new(active: null,
                                 id: null,
                                 number: null,
                                 revision: null,
                                 allowed_balance_difference: null,
                                 currency: null,
                                 force_customer_number: null,
                                 force_print: null,
                                 name: null,
                                 print_copies: null,
                                 tag: null,
                                 use_cash_drawer: null,
                                 revenue_account: null)
```


