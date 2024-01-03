# KoronaCloudClient::Receipt

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **account_transactions** | [**Array&lt;AccountTransaction&gt;**](AccountTransaction.md) |  | [optional] |
| **additional_info** | [**Array&lt;AdditionalInfo&gt;**](AdditionalInfo.md) |  | [optional] |
| **booking_time** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **cancelled** | **Boolean** |  | [optional] |
| **cashier** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **creation_time** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **currency** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **reversed_receipt** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **customer** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **customer_group** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **deposit_amount** | **Float** |  | [optional] |
| **external_references** | **Hash&lt;String, String&gt;** |  | [optional] |
| **reversal** | **Boolean** |  | [optional] |
| **fiscal_transactions** | [**Array&lt;FiscalTransaction&gt;**](FiscalTransaction.md) |  | [optional] |
| **geo_location** | [**GeoLocation**](GeoLocation.md) |  | [optional] |
| **info_texts** | **Array&lt;Object&gt;** |  | [optional] |
| **items** | [**Array&lt;ReceiptItem&gt;**](ReceiptItem.md) |  | [optional] |
| **max_revisions** | [**ReceiptMaxRevisions**](ReceiptMaxRevisions.md) |  | [optional] |
| **order_number** | **String** |  | [optional] |
| **organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **payments** | [**Array&lt;Payment&gt;**](Payment.md) |  | [optional] |
| **cashier_verification_results** | [**Array&lt;CashierVerificationResult&gt;**](CashierVerificationResult.md) |  | [optional] |
| **point_of_sale** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **price_group** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **revenue** | [**ReceiptRevenue**](ReceiptRevenue.md) |  | [optional] |
| **signature** | [**Signature**](Signature.md) |  | [optional] |
| **total** | [**ReceiptTotal**](ReceiptTotal.md) |  | [optional] |
| **voided** | **Boolean** |  | [optional] |
| **voided_items** | [**Array&lt;VoidedReceiptItem&gt;**](VoidedReceiptItem.md) |  | [optional][readonly] |
| **void_fiscal_transactions** | [**Array&lt;FiscalTransaction&gt;**](FiscalTransaction.md) |  | [optional] |
| **voucher_transactions** | [**Array&lt;VoucherTransactionOld&gt;**](VoucherTransactionOld.md) | Deprecated, please use voucherTransactionReferences instead. | [optional][readonly] |
| **voucher_transaction_references** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **warehouse** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **zcounter** | **Integer** |  | [optional] |
| **promotion_applications** | [**Array&lt;PromotionApplication&gt;**](PromotionApplication.md) |  | [optional] |
| **coupon_positions** | [**Array&lt;CouponPosition&gt;**](CouponPosition.md) |  | [optional] |
| **digital_receipt_info** | [**DigitalReceiptInfo**](DigitalReceiptInfo.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Receipt.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  account_transactions: null,
  additional_info: null,
  booking_time: 2018-11-22T08:40:21Z,
  cancelled: null,
  cashier: null,
  creation_time: 2018-11-22T08:40:21Z,
  currency: null,
  reversed_receipt: null,
  customer: null,
  customer_group: null,
  deposit_amount: null,
  external_references: null,
  reversal: null,
  fiscal_transactions: null,
  geo_location: null,
  info_texts: null,
  items: null,
  max_revisions: null,
  order_number: null,
  organizational_unit: null,
  payments: null,
  cashier_verification_results: null,
  point_of_sale: null,
  price_group: null,
  revenue: null,
  signature: null,
  total: null,
  voided: null,
  voided_items: null,
  void_fiscal_transactions: null,
  voucher_transactions: null,
  voucher_transaction_references: null,
  warehouse: null,
  zcounter: null,
  promotion_applications: null,
  coupon_positions: null,
  digital_receipt_info: null
)
```

