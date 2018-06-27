=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

OpenAPI spec version: 3
Contact: support@combase.net
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

# Common files
require 'korona_client/api_client'
require 'korona_client/api_error'
require 'korona_client/version'
require 'korona_client/configuration'

# Models
require 'korona_client/models/account'
require 'korona_client/models/account_summary'
require 'korona_client/models/account_transaction'
require 'korona_client/models/add_or_update_result'
require 'korona_client/models/address_information'
require 'korona_client/models/admission'
require 'korona_client/models/amount'
require 'korona_client/models/amount_count_data'
require 'korona_client/models/assortment'
require 'korona_client/models/bad_request_error'
require 'korona_client/models/capacity'
require 'korona_client/models/cashier'
require 'korona_client/models/cashier_summary'
require 'korona_client/models/category'
require 'korona_client/models/cloud_subscription'
require 'korona_client/models/commodity_group'
require 'korona_client/models/commodity_group_summary'
require 'korona_client/models/company_identification'
require 'korona_client/models/currency'
require 'korona_client/models/currency_denomination'
require 'korona_client/models/currency_exchange_rate'
require 'korona_client/models/customer'
require 'korona_client/models/customer_card'
require 'korona_client/models/customer_data'
require 'korona_client/models/customer_group'
require 'korona_client/models/customer_group_summary'
require 'korona_client/models/customer_information'
require 'korona_client/models/customer_order'
require 'korona_client/models/day_rating'
require 'korona_client/models/device_information'
require 'korona_client/models/economic_zone'
require 'korona_client/models/end_of_day_statement'
require 'korona_client/models/end_of_day_statement_summary'
require 'korona_client/models/entry_gate'
require 'korona_client/models/event'
require 'korona_client/models/forbidden_error'
require 'korona_client/models/geo_location'
require 'korona_client/models/info_text'
require 'korona_client/models/interval'
require 'korona_client/models/inventory'
require 'korona_client/models/inventory_list'
require 'korona_client/models/inventory_list_item'
require 'korona_client/models/inventory_list_item_stock'
require 'korona_client/models/korona_account'
require 'korona_client/models/method_not_allowed_error'
require 'korona_client/models/model_reference'
require 'korona_client/models/not_found_error'
require 'korona_client/models/organizational_unit'
require 'korona_client/models/payment'
require 'korona_client/models/payment_method'
require 'korona_client/models/payment_summary'
require 'korona_client/models/period'
require 'korona_client/models/period_list_top_seller'
require 'korona_client/models/period_map_string_revenue_data'
require 'korona_client/models/period_object'
require 'korona_client/models/period_revenue_data'
require 'korona_client/models/pos'
require 'korona_client/models/price_group'
require 'korona_client/models/product'
require 'korona_client/models/product_code'
require 'korona_client/models/product_description'
require 'korona_client/models/product_price'
require 'korona_client/models/product_stock'
require 'korona_client/models/product_subproduct'
require 'korona_client/models/product_supplier_price'
require 'korona_client/models/product_transfer_involved_party_information'
require 'korona_client/models/product_transfer_involved_party_information_data'
require 'korona_client/models/rating'
require 'korona_client/models/receipt'
require 'korona_client/models/receipt_item'
require 'korona_client/models/result_list'
require 'korona_client/models/result_list_account'
require 'korona_client/models/result_list_assortment'
require 'korona_client/models/result_list_cashier'
require 'korona_client/models/result_list_commodity_group'
require 'korona_client/models/result_list_currency'
require 'korona_client/models/result_list_customer'
require 'korona_client/models/result_list_customer_group'
require 'korona_client/models/result_list_customer_order'
require 'korona_client/models/result_list_day_rating'
require 'korona_client/models/result_list_economic_zone'
require 'korona_client/models/result_list_end_of_day_statement'
require 'korona_client/models/result_list_entry_gate'
require 'korona_client/models/result_list_event'
require 'korona_client/models/result_list_info_text'
require 'korona_client/models/result_list_inventory'
require 'korona_client/models/result_list_inventory_list'
require 'korona_client/models/result_list_inventory_list_item'
require 'korona_client/models/result_list_organizational_unit'
require 'korona_client/models/result_list_payment_method'
require 'korona_client/models/result_list_pos'
require 'korona_client/models/result_list_price_group'
require 'korona_client/models/result_list_product'
require 'korona_client/models/result_list_product_stock'
require 'korona_client/models/result_list_receipt'
require 'korona_client/models/result_list_sales_tax'
require 'korona_client/models/result_list_sector'
require 'korona_client/models/result_list_stock_receipt'
require 'korona_client/models/result_list_stock_receipt_item'
require 'korona_client/models/result_list_supplier'
require 'korona_client/models/result_list_tag'
require 'korona_client/models/result_list_ticket_definition'
require 'korona_client/models/revenue_data'
require 'korona_client/models/sales_tax'
require 'korona_client/models/sales_tax_rate'
require 'korona_client/models/sector'
require 'korona_client/models/sector_sales_tax_item'
require 'korona_client/models/statistic'
require 'korona_client/models/statistic_list_top_seller'
require 'korona_client/models/statistic_map_string_revenue_data'
require 'korona_client/models/statistic_revenue_data'
require 'korona_client/models/stock_receipt'
require 'korona_client/models/stock_receipt_item'
require 'korona_client/models/stock_receipt_item_amount'
require 'korona_client/models/stock_receipt_item_identification'
require 'korona_client/models/stock_receipt_item_purchase_price'
require 'korona_client/models/supplier'
require 'korona_client/models/supplier_contact'
require 'korona_client/models/supplier_contact_person'
require 'korona_client/models/supplier_payment_information'
require 'korona_client/models/tag'
require 'korona_client/models/tax_payment'
require 'korona_client/models/tax_summary'
require 'korona_client/models/ticket_definition'
require 'korona_client/models/time_period'
require 'korona_client/models/too_many_requests_error'
require 'korona_client/models/top_seller'
require 'korona_client/models/total_price'
require 'korona_client/models/weather'

# APIs
require 'korona_client/api/accounts_api'
require 'korona_client/api/assortments_api'
require 'korona_client/api/cashiers_api'
require 'korona_client/api/currencies_api'
require 'korona_client/api/customer_groups_api'
require 'korona_client/api/customer_orders_api'
require 'korona_client/api/customers_api'
require 'korona_client/api/economic_zones_api'
require 'korona_client/api/images_api'
require 'korona_client/api/info_texts_api'
require 'korona_client/api/inventories_korona_retail_api'
require 'korona_client/api/korona_account_api'
require 'korona_client/api/organizational_units_api'
require 'korona_client/api/payment_methods_api'
require 'korona_client/api/points_of_sale_api'
require 'korona_client/api/price_groups_api'
require 'korona_client/api/products_api'
require 'korona_client/api/receipts_api'
require 'korona_client/api/sales_taxes_api'
require 'korona_client/api/sectors_api'
require 'korona_client/api/statistics_api'
require 'korona_client/api/stock_receipts_korona_retail_api'
require 'korona_client/api/suppliers_api'
require 'korona_client/api/tags_api'
require 'korona_client/api/ticketing_api'

module KoronaClient
  class << self
    # Customize default settings for the SDK using block.
    #   KoronaClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end