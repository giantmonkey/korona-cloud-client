# KoronaCloudClient::OrganizationalUnit

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **Boolean** | indicates whether the object is active for use or not | [optional] [readonly] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] [readonly] 
**address** | [**AddressInformation**](AddressInformation.md) |  | [optional] 
**cost_center** | [**ModelReference**](ModelReference.md) |  | [optional] 
**economic_zone** | [**ModelReference**](ModelReference.md) |  | [optional] 
**eh_number** | **Integer** |  | [optional] 
**identification** | [**CompanyIdentification**](CompanyIdentification.md) |  | [optional] 
**name** | **String** |  | 
**opening_hours** | [**Array&lt;OpeningHours&gt;**](OpeningHours.md) |  | [optional] 
**parent_organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] 
**price_group** | [**ModelReference**](ModelReference.md) |  | [optional] 
**warehouse** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::OrganizationalUnit.new(active: null,
                                 id: null,
                                 number: null,
                                 revision: null,
                                 address: null,
                                 cost_center: null,
                                 economic_zone: null,
                                 eh_number: null,
                                 identification: null,
                                 name: null,
                                 opening_hours: null,
                                 parent_organizational_unit: null,
                                 price_group: null,
                                 warehouse: null)
```


