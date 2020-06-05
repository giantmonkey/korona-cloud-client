# KoronaCloudClient::Customer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **Boolean** | indicates whether the object is active for use or not | [optional] [readonly] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] [readonly] 
**address** | [**AddressInformation**](AddressInformation.md) |  | [optional] 
**birthday** | **DateTime** |  | [optional] 
**cards** | [**Array&lt;CustomerCard&gt;**](CustomerCard.md) |  | [optional] 
**company** | **String** |  | [optional] 
**customer_group** | [**ModelReference**](ModelReference.md) |  | [optional] 
**economic_zone** | [**ModelReference**](ModelReference.md) |  | [optional] 
**email** | **String** |  | [optional] 
**firstname** | **String** |  | [optional] 
**gender** | **String** |  | [optional] 
**informations** | [**Array&lt;CustomerInformation&gt;**](CustomerInformation.md) |  | [optional] 
**lastname** | **String** |  | [optional] 
**phone** | **String** |  | [optional] 
**tax_id** | **String** |  | [optional] 
**privacy_policy_accepted** | **Boolean** |  | [optional] 
**marketing_contact_permitted** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::Customer.new(active: null,
                                 id: null,
                                 number: null,
                                 revision: null,
                                 address: null,
                                 birthday: null,
                                 cards: null,
                                 company: null,
                                 customer_group: null,
                                 economic_zone: null,
                                 email: null,
                                 firstname: null,
                                 gender: null,
                                 informations: null,
                                 lastname: null,
                                 phone: null,
                                 tax_id: null,
                                 privacy_policy_accepted: null,
                                 marketing_contact_permitted: null)
```


