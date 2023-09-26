# KoronaCloudClient::ReceiptItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attendance** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **booking_time** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **commodity_group** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **discounts** | [**Array&lt;Discount&gt;**](Discount.md) |  | [optional] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **indent** | **Integer** |  | [optional] |
| **index** | **Integer** |  | [optional][readonly] |
| **info_texts** | **Array&lt;String&gt;** |  | [optional] |
| **manual_price** | **Boolean** |  | [optional] |
| **product** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **quantity** | **Float** |  | [optional] |
| **sector** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **serial_numbers** | **Array&lt;String&gt;** |  | [optional] |
| **total** | [**TotalPrice**](TotalPrice.md) |  | [optional] |
| **delivery_date** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **external_references** | **Hash&lt;String, String&gt;** |  | [optional] |
| **recognition_number** | **String** | the number referencing the product was typed/scanned to create the receipt item | [optional] |
| **type** | **String** |  | [optional] |
| **voucher_transaction** | [**VoucherTransactionOld**](VoucherTransactionOld.md) |  | [optional] |
| **voucher_transaction_reference** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **special_price_configuration** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **return_reason** | [**ReceiptItemReturnReason**](ReceiptItemReturnReason.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::ReceiptItem.new(
  attendance: null,
  booking_time: 2018-11-22T09:40:21+01:00,
  commodity_group: null,
  description: null,
  discounts: null,
  id: null,
  indent: null,
  index: null,
  info_texts: null,
  manual_price: null,
  product: null,
  quantity: null,
  sector: null,
  serial_numbers: null,
  total: null,
  delivery_date: 2018-11-22T09:40:21+01:00,
  external_references: null,
  recognition_number: null,
  type: null,
  voucher_transaction: null,
  voucher_transaction_reference: null,
  special_price_configuration: null,
  return_reason: null
)
```

