=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.13.40
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'cgi'

module KoronaCloudClient
  class ReceiptsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # returns the single receipt
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param receipt_id [String] id of the receipt
    # @param [Hash] opts the optional parameters
    # @return [Receipt]
    def get_receipt(korona_account_id, receipt_id, opts = {})
      data, _status_code, _headers = get_receipt_with_http_info(korona_account_id, receipt_id, opts)
      data
    end

    # returns the single receipt
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param receipt_id [String] id of the receipt
    # @param [Hash] opts the optional parameters
    # @return [Array<(Receipt, Integer, Hash)>] Receipt data, response status code and response headers
    def get_receipt_with_http_info(korona_account_id, receipt_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReceiptsApi.get_receipt ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling ReceiptsApi.get_receipt"
      end
      # verify the required parameter 'receipt_id' is set
      if @api_client.config.client_side_validation && receipt_id.nil?
        fail ArgumentError, "Missing the required parameter 'receipt_id' when calling ReceiptsApi.get_receipt"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/receipts/{receiptId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'receiptId' + '}', CGI.escape(receipt_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Receipt' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceiptsApi#get_receipt\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # lists all receipts
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [String] :point_of_sale point of sale
    # @option opts [String] :organizational_unit organizational unit
    # @option opts [Integer] :z_count z-count of the receipt
    # @option opts [DateTime] :min_create_time min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [DateTime] :max_create_time max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [String] :number number of the related object
    # @option opts [DateTime] :min_booking_time min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [DateTime] :max_booking_time max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @return [ResultListReceipt]
    def get_receipts(korona_account_id, opts = {})
      data, _status_code, _headers = get_receipts_with_http_info(korona_account_id, opts)
      data
    end

    # lists all receipts
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [String] :point_of_sale point of sale
    # @option opts [String] :organizational_unit organizational unit
    # @option opts [Integer] :z_count z-count of the receipt
    # @option opts [DateTime] :min_create_time min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [DateTime] :max_create_time max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [String] :number number of the related object
    # @option opts [DateTime] :min_booking_time min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [DateTime] :max_booking_time max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @return [Array<(ResultListReceipt, Integer, Hash)>] ResultListReceipt data, response status code and response headers
    def get_receipts_with_http_info(korona_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReceiptsApi.get_receipts ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling ReceiptsApi.get_receipts"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/receipts'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'revision'] = opts[:'revision'] if !opts[:'revision'].nil?
      query_params[:'pointOfSale'] = opts[:'point_of_sale'] if !opts[:'point_of_sale'].nil?
      query_params[:'organizationalUnit'] = opts[:'organizational_unit'] if !opts[:'organizational_unit'].nil?
      query_params[:'zCount'] = opts[:'z_count'] if !opts[:'z_count'].nil?
      query_params[:'minCreateTime'] = opts[:'min_create_time'] if !opts[:'min_create_time'].nil?
      query_params[:'maxCreateTime'] = opts[:'max_create_time'] if !opts[:'max_create_time'].nil?
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?
      query_params[:'minBookingTime'] = opts[:'min_booking_time'] if !opts[:'min_booking_time'].nil?
      query_params[:'maxBookingTime'] = opts[:'max_booking_time'] if !opts[:'max_booking_time'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ResultListReceipt' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceiptsApi#get_receipts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end