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
  class AssortmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # adds a batch of new assortments
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<Assortment>] array of new assortments
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error
    # @return [Array<AddOrUpdateResult>]
    def add_assortments(korona_account_id, body, opts = {})
      data, _status_code, _headers = add_assortments_with_http_info(korona_account_id, body, opts)
      data
    end

    # adds a batch of new assortments
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<Assortment>] array of new assortments
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def add_assortments_with_http_info(korona_account_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssortmentsApi.add_assortments ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling AssortmentsApi.add_assortments"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AssortmentsApi.add_assortments"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/assortments'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'upsert'] = opts[:'upsert'] if !opts[:'upsert'].nil?

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
        @api_client.config.logger.debug "API called: AssortmentsApi#add_assortments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # deletes the single assortment
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param assortment_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_assortment(korona_account_id, assortment_id, opts = {})
      delete_assortment_with_http_info(korona_account_id, assortment_id, opts)
      nil
    end

    # deletes the single assortment
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param assortment_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_assortment_with_http_info(korona_account_id, assortment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssortmentsApi.delete_assortment ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling AssortmentsApi.delete_assortment"
      end
      # verify the required parameter 'assortment_id' is set
      if @api_client.config.client_side_validation && assortment_id.nil?
        fail ArgumentError, "Missing the required parameter 'assortment_id' when calling AssortmentsApi.delete_assortment"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/assortments/{assortmentId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'assortmentId' + '}', CGI.escape(assortment_id.to_s))

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
        @api_client.config.logger.debug "API called: AssortmentsApi#delete_assortment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # deletes a batch of assortments
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<Assortment>] array of existing assortments (id or number required)
    # @param [Hash] opts the optional parameters
    # @return [Array<AddOrUpdateResult>]
    def delete_assortments(korona_account_id, body, opts = {})
      data, _status_code, _headers = delete_assortments_with_http_info(korona_account_id, body, opts)
      data
    end

    # deletes a batch of assortments
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<Assortment>] array of existing assortments (id or number required)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def delete_assortments_with_http_info(korona_account_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssortmentsApi.delete_assortments ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling AssortmentsApi.delete_assortments"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AssortmentsApi.delete_assortments"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/assortments'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

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

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssortmentsApi#delete_assortments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # returns the single assortment
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param assortment_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [Assortment]
    def get_assortment(korona_account_id, assortment_id, opts = {})
      data, _status_code, _headers = get_assortment_with_http_info(korona_account_id, assortment_id, opts)
      data
    end

    # returns the single assortment
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param assortment_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Assortment, Integer, Hash)>] Assortment data, response status code and response headers
    def get_assortment_with_http_info(korona_account_id, assortment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssortmentsApi.get_assortment ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling AssortmentsApi.get_assortment"
      end
      # verify the required parameter 'assortment_id' is set
      if @api_client.config.client_side_validation && assortment_id.nil?
        fail ArgumentError, "Missing the required parameter 'assortment_id' when calling AssortmentsApi.get_assortment"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/assortments/{assortmentId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'assortmentId' + '}', CGI.escape(assortment_id.to_s))

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
      return_type = opts[:return_type] || 'Assortment' 

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
        @api_client.config.logger.debug "API called: AssortmentsApi#get_assortment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # lists all assortments
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @option opts [String] :number number of the related object
    # @return [ResultListAssortment]
    def get_assortments(korona_account_id, opts = {})
      data, _status_code, _headers = get_assortments_with_http_info(korona_account_id, opts)
      data
    end

    # lists all assortments
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @option opts [String] :number number of the related object
    # @return [Array<(ResultListAssortment, Integer, Hash)>] ResultListAssortment data, response status code and response headers
    def get_assortments_with_http_info(korona_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssortmentsApi.get_assortments ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling AssortmentsApi.get_assortments"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/assortments'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

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
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ResultListAssortment' 

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
        @api_client.config.logger.debug "API called: AssortmentsApi#get_assortments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # updates the single assortment
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param assortment_id [String] id of the related object (important: id should match the uuid-format)
    # @param body [Assortment] the properties to update of the assortment
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_assortment(korona_account_id, assortment_id, body, opts = {})
      update_assortment_with_http_info(korona_account_id, assortment_id, body, opts)
      nil
    end

    # updates the single assortment
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param assortment_id [String] id of the related object (important: id should match the uuid-format)
    # @param body [Assortment] the properties to update of the assortment
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_assortment_with_http_info(korona_account_id, assortment_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssortmentsApi.update_assortment ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling AssortmentsApi.update_assortment"
      end
      # verify the required parameter 'assortment_id' is set
      if @api_client.config.client_side_validation && assortment_id.nil?
        fail ArgumentError, "Missing the required parameter 'assortment_id' when calling AssortmentsApi.update_assortment"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AssortmentsApi.update_assortment"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/assortments/{assortmentId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'assortmentId' + '}', CGI.escape(assortment_id.to_s))

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
        @api_client.config.logger.debug "API called: AssortmentsApi#update_assortment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # updates a batch of assortments
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<Assortment>] array of existing assortments (id or number required)
    # @param [Hash] opts the optional parameters
    # @return [Array<AddOrUpdateResult>]
    def update_assortments(korona_account_id, body, opts = {})
      data, _status_code, _headers = update_assortments_with_http_info(korona_account_id, body, opts)
      data
    end

    # updates a batch of assortments
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<Assortment>] array of existing assortments (id or number required)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def update_assortments_with_http_info(korona_account_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssortmentsApi.update_assortments ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling AssortmentsApi.update_assortments"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AssortmentsApi.update_assortments"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/assortments'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

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
        @api_client.config.logger.debug "API called: AssortmentsApi#update_assortments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end