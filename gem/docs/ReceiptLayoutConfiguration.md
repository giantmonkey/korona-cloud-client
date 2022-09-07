# KoronaCloudClient::ReceiptLayoutConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **name** | **String** |  | [optional] |
| **show_product_numbers** | **Boolean** |  | [optional] |
| **show_receipt_number_barcode** | **Boolean** |  | [optional] |
| **footer_logo_number** | **Integer** |  | [optional] |
| **header_logo_number** | **Integer** |  | [optional] |
| **show_recommended_retail_price_threshold** | **Integer** |  | [optional] |
| **item_grouping** | **String** |  | [optional] |
| **show_reduced_receipt_information** | **Boolean** |  | [optional] |
| **show_reduced_customer_information** | **Boolean** |  | [optional] |
| **show_removed_items** | **Boolean** |  | [optional] |
| **show_total_discount** | **Boolean** |  | [optional] |
| **show_prices_on_delivery_notes** | **Boolean** |  | [optional] |
| **show_tax_name** | **Boolean** |  | [optional] |
| **deposit_summary** | **Boolean** |  | [optional] |
| **show_optional_fiscal_data** | **Boolean** |  | [optional] |
| **show_article_count** | **Boolean** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::ReceiptLayoutConfiguration.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  name: null,
  show_product_numbers: null,
  show_receipt_number_barcode: null,
  footer_logo_number: null,
  header_logo_number: null,
  show_recommended_retail_price_threshold: null,
  item_grouping: null,
  show_reduced_receipt_information: null,
  show_reduced_customer_information: null,
  show_removed_items: null,
  show_total_discount: null,
  show_prices_on_delivery_notes: null,
  show_tax_name: null,
  deposit_summary: null,
  show_optional_fiscal_data: null,
  show_article_count: null
)
```

