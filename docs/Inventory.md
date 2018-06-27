# KoronaClient::Inventory

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **BOOLEAN** | indicates whether the object is active for use or not | [optional] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] 
**automatic_booking** | **BOOLEAN** |  | [optional] 
**automatic_booking_after_days** | **Integer** | only if isAutomaticBooking&#x3D;true | [optional] 
**check_product_assortment_validity** | **BOOLEAN** |  | [optional] 
**check_product_listing** | **BOOLEAN** |  | [optional] 
**create_time** | **DateTime** |  | [optional] 
**description** | **String** |  | [optional] 
**execution_days** | **Array&lt;String&gt;** | only if type&#x3D;PERPETUAL_INVENTORY | [optional] 
**execution_time** | **DateTime** |  | [optional] 
**has_booked_receipts** | **BOOLEAN** |  | [optional] 
**max_products_per_list** | **Integer** | only if type&#x3D;ANNUAL_INVENTORY | INVENTORY_IRREGULARITY | [optional] 
**one_commodity_group_per_inventory_list** | **BOOLEAN** | only if type&#x3D;ANNUAL_INVENTORY | INVENTORY_IRREGULARITY | [optional] 
**only_negative_product_stocks** | **BOOLEAN** | only if type&#x3D;INVENTORY_IRREGULARITY | [optional] 
**organizational_units** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] 
**product_filter** | **String** |  | [optional] 
**type** | **String** |  | [optional] 


