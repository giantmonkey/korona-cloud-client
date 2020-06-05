# KoronaCloudClient::Pos

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **Boolean** | indicates whether the object is active for use or not | [optional] [readonly] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] [readonly] 
**coupled** | **Boolean** |  | [optional] [readonly] 
**coupling_id** | **String** |  | [optional] 
**default_customer_group** | [**ModelReference**](ModelReference.md) |  | [optional] 
**default_payment_method** | [**ModelReference**](ModelReference.md) |  | [optional] 
**device_information** | [**DeviceInformation**](DeviceInformation.md) |  | [optional] 
**external** | **Boolean** |  | [optional] [readonly] 
**last_receipt_number** | **String** | last receipt number - only shown if external&#x3D;true and coupled&#x3D;false; usable for client-side receipt counter. | [optional] [readonly] 
**last_z_count** | **Integer** | last zcount property - only shown if external&#x3D;true and coupled&#x3D;false; usable for client-side zcount. | [optional] [readonly] 
**name** | **String** |  | [optional] [readonly] 
**organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] 
**print_footer_lines** | **Hash&lt;String, String&gt;** |  | [optional] [readonly] 
**print_header_lines** | **Hash&lt;String, String&gt;** |  | [optional] [readonly] 
**receipt_info_texts** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] [readonly] 
**use_alternative_sector** | **Boolean** |  | [optional] 
**contra_account** | [**ModelReference**](ModelReference.md) |  | [optional] 
**revenue_account** | [**ModelReference**](ModelReference.md) |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::Pos.new(active: null,
                                 id: null,
                                 number: null,
                                 revision: null,
                                 coupled: null,
                                 coupling_id: null,
                                 default_customer_group: null,
                                 default_payment_method: null,
                                 device_information: null,
                                 external: null,
                                 last_receipt_number: null,
                                 last_z_count: null,
                                 name: null,
                                 organizational_unit: null,
                                 print_footer_lines: null,
                                 print_header_lines: null,
                                 receipt_info_texts: null,
                                 use_alternative_sector: null,
                                 contra_account: null,
                                 revenue_account: null)
```


