=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 3.2-SNAPSHOT
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module KoronaCloudClient
  class CashiersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # adds a batch of new cashiers
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param cashier [Array<Cashier>] array of new cashiers
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
    # @option opts [String] :write_mode DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields
    # @return [Array<AddOrUpdateResult>]
    def add_cashiers(korona_account_id, cashier, opts = {})
      data, _status_code, _headers = add_cashiers_with_http_info(korona_account_id, cashier, opts)
      data
    end

    # adds a batch of new cashiers
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param cashier [Array<Cashier>] array of new cashiers
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
    # @option opts [String] :write_mode DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def add_cashiers_with_http_info(korona_account_id, cashier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashiersApi.add_cashiers ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling CashiersApi.add_cashiers"
      end
      # verify the required parameter 'cashier' is set
      if @api_client.config.client_side_validation && cashier.nil?
        fail ArgumentError, "Missing the required parameter 'cashier' when calling CashiersApi.add_cashiers"
      end
      allowable_values = ["DEFAULT", "ADD_OR_UPDATE", "ADD_OR_REPLACE"]
      if @api_client.config.client_side_validation && opts[:'write_mode'] && !allowable_values.include?(opts[:'write_mode'])
        fail ArgumentError, "invalid value for \"write_mode\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/cashiers'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'upsert'] = opts[:'upsert'] if !opts[:'upsert'].nil?
      query_params[:'writeMode'] = opts[:'write_mode'] if !opts[:'write_mode'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cashier)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AddOrUpdateResult>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"CashiersApi.add_cashiers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashiersApi#add_cashiers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # deletes the single cashier
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param cashier_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_cashier(korona_account_id, cashier_id, opts = {})
      delete_cashier_with_http_info(korona_account_id, cashier_id, opts)
      nil
    end

    # deletes the single cashier
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param cashier_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_cashier_with_http_info(korona_account_id, cashier_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashiersApi.delete_cashier ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling CashiersApi.delete_cashier"
      end
      # verify the required parameter 'cashier_id' is set
      if @api_client.config.client_side_validation && cashier_id.nil?
        fail ArgumentError, "Missing the required parameter 'cashier_id' when calling CashiersApi.delete_cashier"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/cashiers/{cashierId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'cashierId' + '}', CGI.escape(cashier_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"CashiersApi.delete_cashier",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashiersApi#delete_cashier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # deletes a batch of cashiers
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param cashier [Array<Cashier>] array of existing cashiers (id or number required)
    # @param [Hash] opts the optional parameters
    # @return [Array<AddOrUpdateResult>]
    def delete_cashiers(korona_account_id, cashier, opts = {})
      data, _status_code, _headers = delete_cashiers_with_http_info(korona_account_id, cashier, opts)
      data
    end

    # deletes a batch of cashiers
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param cashier [Array<Cashier>] array of existing cashiers (id or number required)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def delete_cashiers_with_http_info(korona_account_id, cashier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashiersApi.delete_cashiers ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling CashiersApi.delete_cashiers"
      end
      # verify the required parameter 'cashier' is set
      if @api_client.config.client_side_validation && cashier.nil?
        fail ArgumentError, "Missing the required parameter 'cashier' when calling CashiersApi.delete_cashiers"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/cashiers'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cashier)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AddOrUpdateResult>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"CashiersApi.delete_cashiers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashiersApi#delete_cashiers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # returns the single cashier
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param cashier_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :display_cashier_credentials display cashier credentials loginCode and loginPassword as (HASH|PLAIN|NONE)
    # @return [Cashier]
    def get_cashier(korona_account_id, cashier_id, opts = {})
      data, _status_code, _headers = get_cashier_with_http_info(korona_account_id, cashier_id, opts)
      data
    end

    # returns the single cashier
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param cashier_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :display_cashier_credentials display cashier credentials loginCode and loginPassword as (HASH|PLAIN|NONE)
    # @return [Array<(Cashier, Integer, Hash)>] Cashier data, response status code and response headers
    def get_cashier_with_http_info(korona_account_id, cashier_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashiersApi.get_cashier ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling CashiersApi.get_cashier"
      end
      # verify the required parameter 'cashier_id' is set
      if @api_client.config.client_side_validation && cashier_id.nil?
        fail ArgumentError, "Missing the required parameter 'cashier_id' when calling CashiersApi.get_cashier"
      end
      allowable_values = ["HASH", "PLAIN", "NONE"]
      if @api_client.config.client_side_validation && opts[:'display_cashier_credentials'] && !allowable_values.include?(opts[:'display_cashier_credentials'])
        fail ArgumentError, "invalid value for \"display_cashier_credentials\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/cashiers/{cashierId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'cashierId' + '}', CGI.escape(cashier_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'displayCashierCredentials'] = opts[:'display_cashier_credentials'] if !opts[:'display_cashier_credentials'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Cashier'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"CashiersApi.get_cashier",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashiersApi#get_cashier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # lists all cashiers
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @option opts [String] :display_cashier_credentials display cashier credentials loginCode and loginPassword as (HASH|PLAIN|NONE)
    # @option opts [String] :number number of the related object
    # @return [ResultListCashier]
    def get_cashiers(korona_account_id, opts = {})
      data, _status_code, _headers = get_cashiers_with_http_info(korona_account_id, opts)
      data
    end

    # lists all cashiers
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @option opts [String] :display_cashier_credentials display cashier credentials loginCode and loginPassword as (HASH|PLAIN|NONE)
    # @option opts [String] :number number of the related object
    # @return [Array<(ResultListCashier, Integer, Hash)>] ResultListCashier data, response status code and response headers
    def get_cashiers_with_http_info(korona_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashiersApi.get_cashiers ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling CashiersApi.get_cashiers"
      end
      allowable_values = ["HASH", "PLAIN", "NONE"]
      if @api_client.config.client_side_validation && opts[:'display_cashier_credentials'] && !allowable_values.include?(opts[:'display_cashier_credentials'])
        fail ArgumentError, "invalid value for \"display_cashier_credentials\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/cashiers'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'revision'] = opts[:'revision'] if !opts[:'revision'].nil?
      query_params[:'includeDeleted'] = opts[:'include_deleted'] if !opts[:'include_deleted'].nil?
      query_params[:'displayCashierCredentials'] = opts[:'display_cashier_credentials'] if !opts[:'display_cashier_credentials'].nil?
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ResultListCashier'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"CashiersApi.get_cashiers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashiersApi#get_cashiers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # updates the single cashier; if [number] is set, the number of the object will change and the resource location as well
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param cashier_id [String] id of the related object (important: id should match the uuid-format)
    # @param cashier [Cashier] the properties to update of the cashier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_cashier(korona_account_id, cashier_id, cashier, opts = {})
      update_cashier_with_http_info(korona_account_id, cashier_id, cashier, opts)
      nil
    end

    # updates the single cashier; if [number] is set, the number of the object will change and the resource location as well
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param cashier_id [String] id of the related object (important: id should match the uuid-format)
    # @param cashier [Cashier] the properties to update of the cashier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_cashier_with_http_info(korona_account_id, cashier_id, cashier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashiersApi.update_cashier ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling CashiersApi.update_cashier"
      end
      # verify the required parameter 'cashier_id' is set
      if @api_client.config.client_side_validation && cashier_id.nil?
        fail ArgumentError, "Missing the required parameter 'cashier_id' when calling CashiersApi.update_cashier"
      end
      # verify the required parameter 'cashier' is set
      if @api_client.config.client_side_validation && cashier.nil?
        fail ArgumentError, "Missing the required parameter 'cashier' when calling CashiersApi.update_cashier"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/cashiers/{cashierId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'cashierId' + '}', CGI.escape(cashier_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cashier)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"CashiersApi.update_cashier",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashiersApi#update_cashier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # updates a batch of cashiers; [number] must be set in the objects, otherwise the object cannot be updated
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param cashier [Array<Cashier>] an array of existing cashiers
    # @param [Hash] opts the optional parameters
    # @return [Array<AddOrUpdateResult>]
    def update_cashiers(korona_account_id, cashier, opts = {})
      data, _status_code, _headers = update_cashiers_with_http_info(korona_account_id, cashier, opts)
      data
    end

    # updates a batch of cashiers; [number] must be set in the objects, otherwise the object cannot be updated
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param cashier [Array<Cashier>] an array of existing cashiers
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def update_cashiers_with_http_info(korona_account_id, cashier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashiersApi.update_cashiers ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling CashiersApi.update_cashiers"
      end
      # verify the required parameter 'cashier' is set
      if @api_client.config.client_side_validation && cashier.nil?
        fail ArgumentError, "Missing the required parameter 'cashier' when calling CashiersApi.update_cashiers"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/cashiers'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cashier)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AddOrUpdateResult>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"CashiersApi.update_cashiers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashiersApi#update_cashiers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
