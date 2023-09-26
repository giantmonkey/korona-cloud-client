# KoronaCloudClient::Product

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **alternative_sector** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **assortment** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **codes** | [**Array&lt;ProductCode&gt;**](ProductCode.md) |  | [optional] |
| **commodity_group** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **conversion** | **Boolean** |  | [optional] |
| **costs** | **Float** |  | [optional] |
| **deactivated** | **Boolean** |  | [optional] |
| **deposit** | **Boolean** |  | [optional] |
| **descriptions** | [**Array&lt;ProductDescription&gt;**](ProductDescription.md) |  | [optional] |
| **discountable** | **Boolean** |  | [optional] |
| **image** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **info_texts** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **item_sequence** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **last_purchase_price** | **Float** |  | [optional] |
| **listed** | **Boolean** |  | [optional] |
| **listed_since** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **max_price** | **Float** |  | [optional] |
| **min_price** | **Float** |  | [optional] |
| **name** | **String** |  | [optional] |
| **packaging_quantity** | **Float** |  | [optional] |
| **packaging_required** | **Boolean** |  | [optional] |
| **packaging_unit** | **String** |  | [optional] |
| **personalization_required** | **Boolean** |  | [optional] |
| **price_changable** | **Boolean** |  | [optional] |
| **prices** | [**Array&lt;ProductPrice&gt;**](ProductPrice.md) |  | [optional] |
| **print_tickets_separately** | **Boolean** |  | [optional] |
| **production_type** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **recommended_retail_price** | **Float** |  | [optional] |
| **related_products** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **sector** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **serial_number_required** | **Boolean** |  | [optional] |
| **subproduct_presentation** | **String** |  | [optional] |
| **subproducts** | [**Array&lt;ProductSubproduct&gt;**](ProductSubproduct.md) |  | [optional] |
| **supplier_prices** | [**Array&lt;ProductSupplierPrice&gt;**](ProductSupplierPrice.md) |  | [optional] |
| **tags** | **Object** |  | [optional] |
| **ticket_definition** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **track_inventory** | **Boolean** |  | [optional] |
| **media_urls** | [**Array&lt;MediaUrl&gt;**](MediaUrl.md) |  | [optional] |
| **quantity_denomination** | **Float** |  | [optional] |
| **special_prices** | [**Array&lt;ProductSpecialPrice&gt;**](ProductSpecialPrice.md) |  | [optional] |
| **verification_requirements** | **Object** |  | [optional] |
| **sales_lock** | **Boolean** |  | [optional] |
| **custom_properties** | **Hash&lt;String, String&gt;** |  | [optional] |
| **containers** | [**Array&lt;ProductContainer&gt;**](ProductContainer.md) |  | [optional] |
| **container_capacity** | **Float** |  | [optional] |
| **independent_subarticle_discounts** | **Boolean** |  | [optional] |
| **listed_organizational_units** | **Object** |  | [optional] |
| **stock_return_unsellable** | **Boolean** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Product.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  alternative_sector: null,
  assortment: null,
  codes: null,
  commodity_group: null,
  conversion: null,
  costs: null,
  deactivated: null,
  deposit: null,
  descriptions: null,
  discountable: null,
  image: null,
  info_texts: null,
  item_sequence: null,
  last_purchase_price: null,
  listed: null,
  listed_since: 2018-11-22T09:40:21+01:00,
  max_price: 9999.99,
  min_price: -9999.99,
  name: null,
  packaging_quantity: null,
  packaging_required: null,
  packaging_unit: null,
  personalization_required: null,
  price_changable: null,
  prices: null,
  print_tickets_separately: null,
  production_type: null,
  recommended_retail_price: null,
  related_products: null,
  sector: null,
  serial_number_required: null,
  subproduct_presentation: null,
  subproducts: null,
  supplier_prices: null,
  tags: null,
  ticket_definition: null,
  track_inventory: null,
  media_urls: null,
  quantity_denomination: null,
  special_prices: null,
  verification_requirements: null,
  sales_lock: null,
  custom_properties: null,
  containers: null,
  container_capacity: null,
  independent_subarticle_discounts: null,
  listed_organizational_units: null,
  stock_return_unsellable: null
)
```

