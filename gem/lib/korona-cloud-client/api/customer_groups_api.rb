=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 3.1.64
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module KoronaCloudClient
  class CustomerGroupsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # adds a batch of new customer groups
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param customer_group [Array<CustomerGroup>] array of new customer groups
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
    # @option opts [String] :write_mode DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields
    # @return [Array<AddOrUpdateResult>]
    def add_customer_groups(korona_account_id, customer_group, opts = {})
      data, _status_code, _headers = add_customer_groups_with_http_info(korona_account_id, customer_group, opts)
      data
    end

    # adds a batch of new customer groups
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param customer_group [Array<CustomerGroup>] array of new customer groups
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
    # @option opts [String] :write_mode DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def add_customer_groups_with_http_info(korona_account_id, customer_group, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerGroupsApi.add_customer_groups ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling CustomerGroupsApi.add_customer_groups"
      end
      # verify the required parameter 'customer_group' is set
      if @api_client.config.client_side_validation && customer_group.nil?
        fail ArgumentError, "Missing the required parameter 'customer_group' when calling CustomerGroupsApi.add_customer_groups"
      end
      allowable_values = ["DEFAULT", "ADD_OR_UPDATE", "ADD_OR_REPLACE"]
      if @api_client.config.client_side_validation && opts[:'write_mode'] && !allowable_values.include?(opts[:'write_mode'])
        fail ArgumentError, "invalid value for \"write_mode\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/customerGroups'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(customer_group)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AddOrUpdateResult>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"CustomerGroupsApi.add_customer_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerGroupsApi#add_customer_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # deletes the single customer group
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param customer_group_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_customer_group(korona_account_id, customer_group_id, opts = {})
      delete_customer_group_with_http_info(korona_account_id, customer_group_id, opts)
      nil
    end

    # deletes the single customer group
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param customer_group_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_customer_group_with_http_info(korona_account_id, customer_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerGroupsApi.delete_customer_group ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling CustomerGroupsApi.delete_customer_group"
      end
      # verify the required parameter 'customer_group_id' is set
      if @api_client.config.client_side_validation && customer_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_group_id' when calling CustomerGroupsApi.delete_customer_group"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/customerGroups/{customerGroupId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'customerGroupId' + '}', CGI.escape(customer_group_id.to_s))

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
        :operation => :"CustomerGroupsApi.delete_customer_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerGroupsApi#delete_customer_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # deletes a batch of customer groups
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param customer_group [Array<CustomerGroup>] array of existing customer groups (id or number required)
    # @param [Hash] opts the optional parameters
    # @return [Array<AddOrUpdateResult>]
    def delete_customer_groups(korona_account_id, customer_group, opts = {})
      data, _status_code, _headers = delete_customer_groups_with_http_info(korona_account_id, customer_group, opts)
      data
    end

    # deletes a batch of customer groups
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param customer_group [Array<CustomerGroup>] array of existing customer groups (id or number required)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def delete_customer_groups_with_http_info(korona_account_id, customer_group, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerGroupsApi.delete_customer_groups ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling CustomerGroupsApi.delete_customer_groups"
      end
      # verify the required parameter 'customer_group' is set
      if @api_client.config.client_side_validation && customer_group.nil?
        fail ArgumentError, "Missing the required parameter 'customer_group' when calling CustomerGroupsApi.delete_customer_groups"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/customerGroups'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(customer_group)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AddOrUpdateResult>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"CustomerGroupsApi.delete_customer_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerGroupsApi#delete_customer_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # returns the single customer group
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param customer_group_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [CustomerGroup]
    def get_customer_group(korona_account_id, customer_group_id, opts = {})
      data, _status_code, _headers = get_customer_group_with_http_info(korona_account_id, customer_group_id, opts)
      data
    end

    # returns the single customer group
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param customer_group_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomerGroup, Integer, Hash)>] CustomerGroup data, response status code and response headers
    def get_customer_group_with_http_info(korona_account_id, customer_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerGroupsApi.get_customer_group ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling CustomerGroupsApi.get_customer_group"
      end
      # verify the required parameter 'customer_group_id' is set
      if @api_client.config.client_side_validation && customer_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_group_id' when calling CustomerGroupsApi.get_customer_group"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/customerGroups/{customerGroupId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'customerGroupId' + '}', CGI.escape(customer_group_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CustomerGroup'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"CustomerGroupsApi.get_customer_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerGroupsApi#get_customer_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # lists all customer groups
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @option opts [String] :number number of the related object
    # @return [ResultListCustomerGroup]
    def get_customer_groups(korona_account_id, opts = {})
      data, _status_code, _headers = get_customer_groups_with_http_info(korona_account_id, opts)
      data
    end

    # lists all customer groups
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @option opts [String] :number number of the related object
    # @return [Array<(ResultListCustomerGroup, Integer, Hash)>] ResultListCustomerGroup data, response status code and response headers
    def get_customer_groups_with_http_info(korona_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerGroupsApi.get_customer_groups ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling CustomerGroupsApi.get_customer_groups"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/customerGroups'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'revision'] = opts[:'revision'] if !opts[:'revision'].nil?
      query_params[:'includeDeleted'] = opts[:'include_deleted'] if !opts[:'include_deleted'].nil?
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
      return_type = opts[:debug_return_type] || 'ResultListCustomerGroup'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"CustomerGroupsApi.get_customer_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerGroupsApi#get_customer_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # updates the single customer group; if [number] is set, the number of the object will change and the resource location as well
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param customer_group_id [String] id of the related object (important: id should match the uuid-format)
    # @param customer_group [CustomerGroup] the properties to update of the customer group
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_customer_group(korona_account_id, customer_group_id, customer_group, opts = {})
      update_customer_group_with_http_info(korona_account_id, customer_group_id, customer_group, opts)
      nil
    end

    # updates the single customer group; if [number] is set, the number of the object will change and the resource location as well
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param customer_group_id [String] id of the related object (important: id should match the uuid-format)
    # @param customer_group [CustomerGroup] the properties to update of the customer group
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_customer_group_with_http_info(korona_account_id, customer_group_id, customer_group, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerGroupsApi.update_customer_group ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling CustomerGroupsApi.update_customer_group"
      end
      # verify the required parameter 'customer_group_id' is set
      if @api_client.config.client_side_validation && customer_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_group_id' when calling CustomerGroupsApi.update_customer_group"
      end
      # verify the required parameter 'customer_group' is set
      if @api_client.config.client_side_validation && customer_group.nil?
        fail ArgumentError, "Missing the required parameter 'customer_group' when calling CustomerGroupsApi.update_customer_group"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/customerGroups/{customerGroupId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'customerGroupId' + '}', CGI.escape(customer_group_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(customer_group)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"CustomerGroupsApi.update_customer_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerGroupsApi#update_customer_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # updates a batch of customer groups; [number] must be set in the objects, otherwise the object cannot be updated
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param customer_group [Array<CustomerGroup>] an array of existing customer groups
    # @param [Hash] opts the optional parameters
    # @return [Array<AddOrUpdateResult>]
    def update_customer_groups(korona_account_id, customer_group, opts = {})
      data, _status_code, _headers = update_customer_groups_with_http_info(korona_account_id, customer_group, opts)
      data
    end

    # updates a batch of customer groups; [number] must be set in the objects, otherwise the object cannot be updated
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param customer_group [Array<CustomerGroup>] an array of existing customer groups
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def update_customer_groups_with_http_info(korona_account_id, customer_group, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerGroupsApi.update_customer_groups ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling CustomerGroupsApi.update_customer_groups"
      end
      # verify the required parameter 'customer_group' is set
      if @api_client.config.client_side_validation && customer_group.nil?
        fail ArgumentError, "Missing the required parameter 'customer_group' when calling CustomerGroupsApi.update_customer_groups"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/customerGroups'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(customer_group)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AddOrUpdateResult>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"CustomerGroupsApi.update_customer_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerGroupsApi#update_customer_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
