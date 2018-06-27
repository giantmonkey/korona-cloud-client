# KoronaClient::Pos

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **BOOLEAN** | indicates whether the object is active for use or not | [optional] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] 
**coupled** | **BOOLEAN** |  | [optional] 
**coupling_id** | **String** |  | [optional] 
**default_customer_group** | [**ModelReference**](ModelReference.md) |  | [optional] 
**default_payment_method** | [**ModelReference**](ModelReference.md) |  | [optional] 
**device_information** | [**DeviceInformation**](DeviceInformation.md) |  | [optional] 
**external** | **BOOLEAN** |  | [optional] 
**last_receipt_number** | **String** |  | [optional] 
**last_z_count** | **Integer** |  | [optional] 
**name** | **String** |  | [optional] 
**organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] 
**print_footer_lines** | **Hash&lt;String, String&gt;** |  | [optional] 
**print_header_lines** | **Hash&lt;String, String&gt;** |  | [optional] 
**receipt_info_texts** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] 
**use_alternative_sector** | **BOOLEAN** |  | [optional] 


