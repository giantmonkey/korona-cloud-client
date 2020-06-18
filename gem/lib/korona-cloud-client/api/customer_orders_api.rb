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
  class CustomerOrdersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # adds a batch of new customer orders
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<CustomerOrder>] array of new customer orders
    # @param [Hash] opts the optional parameters
    # @return [Array<AddOrUpdateResult>]
    def add_customer_orders(korona_account_id, body, opts = {})
      data, _status_code, _headers = add_customer_orders_with_http_info(korona_account_id, body, opts)
      data
    end

    # adds a batch of new customer orders
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<CustomerOrder>] array of new customer orders
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def add_customer_orders_with_http_info(korona_account_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerOrdersApi.add_customer_orders ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling CustomerOrdersApi.add_customer_orders"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CustomerOrdersApi.add_customer_orders"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/customerOrders'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      # return_type
      return_type = opts[:return_type] || 'Array<AddOrUpdateResult>' 

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerOrdersApi#add_customer_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # deletes the single customer order
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param customer_order_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :number number of the related object
    # @return [nil]
    def delete_customer_order(korona_account_id, customer_order_id, opts = {})
      delete_customer_order_with_http_info(korona_account_id, customer_order_id, opts)
      nil
    end

    # deletes the single customer order
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param customer_order_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :number number of the related object
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_customer_order_with_http_info(korona_account_id, customer_order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerOrdersApi.delete_customer_order ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling CustomerOrdersApi.delete_customer_order"
      end
      # verify the required parameter 'customer_order_id' is set
      if @api_client.config.client_side_validation && customer_order_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_order_id' when calling CustomerOrdersApi.delete_customer_order"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/customerOrders/{customerOrderId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'customerOrderId' + '}', CGI.escape(customer_order_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

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

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerOrdersApi#delete_customer_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # returns the single customer order
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param customer_order_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [CustomerOrder]
    def get_customer_order(korona_account_id, customer_order_id, opts = {})
      data, _status_code, _headers = get_customer_order_with_http_info(korona_account_id, customer_order_id, opts)
      data
    end

    # returns the single customer order
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param customer_order_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomerOrder, Integer, Hash)>] CustomerOrder data, response status code and response headers
    def get_customer_order_with_http_info(korona_account_id, customer_order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerOrdersApi.get_customer_order ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling CustomerOrdersApi.get_customer_order"
      end
      # verify the required parameter 'customer_order_id' is set
      if @api_client.config.client_side_validation && customer_order_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_order_id' when calling CustomerOrdersApi.get_customer_order"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/customerOrders/{customerOrderId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'customerOrderId' + '}', CGI.escape(customer_order_id.to_s))

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
      return_type = opts[:return_type] || 'CustomerOrder' 

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
        @api_client.config.logger.debug "API called: CustomerOrdersApi#get_customer_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # lists all customer orders
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @option opts [DateTime] :min_create_time min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [DateTime] :max_create_time max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [DateTime] :min_pick_up_time min (inclusive) pick up time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [DateTime] :max_pick_up_time max (inclusive) pick up time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [String] :number number of the related object
    # @return [ResultListCustomerOrder]
    def get_customer_orders(korona_account_id, opts = {})
      data, _status_code, _headers = get_customer_orders_with_http_info(korona_account_id, opts)
      data
    end

    # lists all customer orders
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @option opts [DateTime] :min_create_time min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [DateTime] :max_create_time max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [DateTime] :min_pick_up_time min (inclusive) pick up time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [DateTime] :max_pick_up_time max (inclusive) pick up time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [String] :number number of the related object
    # @return [Array<(ResultListCustomerOrder, Integer, Hash)>] ResultListCustomerOrder data, response status code and response headers
    def get_customer_orders_with_http_info(korona_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerOrdersApi.get_customer_orders ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling CustomerOrdersApi.get_customer_orders"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/customerOrders'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'revision'] = opts[:'revision'] if !opts[:'revision'].nil?
      query_params[:'includeDeleted'] = opts[:'include_deleted'] if !opts[:'include_deleted'].nil?
      query_params[:'minCreateTime'] = opts[:'min_create_time'] if !opts[:'min_create_time'].nil?
      query_params[:'maxCreateTime'] = opts[:'max_create_time'] if !opts[:'max_create_time'].nil?
      query_params[:'minPickUpTime'] = opts[:'min_pick_up_time'] if !opts[:'min_pick_up_time'].nil?
      query_params[:'maxPickUpTime'] = opts[:'max_pick_up_time'] if !opts[:'max_pick_up_time'].nil?
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ResultListCustomerOrder' 

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
        @api_client.config.logger.debug "API called: CustomerOrdersApi#get_customer_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # updates the single customer order
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param customer_order_id [String] id of the related object (important: id should match the uuid-format)
    # @param body [CustomerOrder] the properties to update of the customer order
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_customer_order(korona_account_id, customer_order_id, body, opts = {})
      update_customer_order_with_http_info(korona_account_id, customer_order_id, body, opts)
      nil
    end

    # updates the single customer order
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param customer_order_id [String] id of the related object (important: id should match the uuid-format)
    # @param body [CustomerOrder] the properties to update of the customer order
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_customer_order_with_http_info(korona_account_id, customer_order_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerOrdersApi.update_customer_order ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling CustomerOrdersApi.update_customer_order"
      end
      # verify the required parameter 'customer_order_id' is set
      if @api_client.config.client_side_validation && customer_order_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_order_id' when calling CustomerOrdersApi.update_customer_order"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CustomerOrdersApi.update_customer_order"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/customerOrders/{customerOrderId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'customerOrderId' + '}', CGI.escape(customer_order_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      # return_type
      return_type = opts[:return_type] 

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

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerOrdersApi#update_customer_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # updates a batch of customer orders
    # [number] must be set in the objects, otherwise the object cannot be updated
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<CustomerOrder>] an array of existing customer orders
    # @param [Hash] opts the optional parameters
    # @return [Array<AddOrUpdateResult>]
    def update_customer_orders(korona_account_id, body, opts = {})
      data, _status_code, _headers = update_customer_orders_with_http_info(korona_account_id, body, opts)
      data
    end

    # updates a batch of customer orders
    # [number] must be set in the objects, otherwise the object cannot be updated
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<CustomerOrder>] an array of existing customer orders
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def update_customer_orders_with_http_info(korona_account_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerOrdersApi.update_customer_orders ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling CustomerOrdersApi.update_customer_orders"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CustomerOrdersApi.update_customer_orders"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/customerOrders'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      # return_type
      return_type = opts[:return_type] || 'Array<AddOrUpdateResult>' 

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

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerOrdersApi#update_customer_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end