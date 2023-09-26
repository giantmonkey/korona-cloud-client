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
  class NumberRangeConfigurationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # adds a batch of new number range configurations
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param number_range_configuration [Array<NumberRangeConfiguration>] array of new number range configurations
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
    # @option opts [String] :write_mode DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields
    # @return [Array<AddOrUpdateResult>]
    def add_number_range_configurations(korona_account_id, number_range_configuration, opts = {})
      data, _status_code, _headers = add_number_range_configurations_with_http_info(korona_account_id, number_range_configuration, opts)
      data
    end

    # adds a batch of new number range configurations
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param number_range_configuration [Array<NumberRangeConfiguration>] array of new number range configurations
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
    # @option opts [String] :write_mode DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def add_number_range_configurations_with_http_info(korona_account_id, number_range_configuration, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NumberRangeConfigurationsApi.add_number_range_configurations ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling NumberRangeConfigurationsApi.add_number_range_configurations"
      end
      # verify the required parameter 'number_range_configuration' is set
      if @api_client.config.client_side_validation && number_range_configuration.nil?
        fail ArgumentError, "Missing the required parameter 'number_range_configuration' when calling NumberRangeConfigurationsApi.add_number_range_configurations"
      end
      allowable_values = ["DEFAULT", "ADD_OR_UPDATE", "ADD_OR_REPLACE"]
      if @api_client.config.client_side_validation && opts[:'write_mode'] && !allowable_values.include?(opts[:'write_mode'])
        fail ArgumentError, "invalid value for \"write_mode\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/numberRangeConfigurations'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(number_range_configuration)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AddOrUpdateResult>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"NumberRangeConfigurationsApi.add_number_range_configurations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NumberRangeConfigurationsApi#add_number_range_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # returns the number range configuration
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param number_range_configuration_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [NumberRangeConfiguration]
    def get_number_range_configuration(korona_account_id, number_range_configuration_id, opts = {})
      data, _status_code, _headers = get_number_range_configuration_with_http_info(korona_account_id, number_range_configuration_id, opts)
      data
    end

    # returns the number range configuration
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param number_range_configuration_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [Array<(NumberRangeConfiguration, Integer, Hash)>] NumberRangeConfiguration data, response status code and response headers
    def get_number_range_configuration_with_http_info(korona_account_id, number_range_configuration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NumberRangeConfigurationsApi.get_number_range_configuration ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling NumberRangeConfigurationsApi.get_number_range_configuration"
      end
      # verify the required parameter 'number_range_configuration_id' is set
      if @api_client.config.client_side_validation && number_range_configuration_id.nil?
        fail ArgumentError, "Missing the required parameter 'number_range_configuration_id' when calling NumberRangeConfigurationsApi.get_number_range_configuration"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/numberRangeConfigurations/{numberRangeConfigurationId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'numberRangeConfigurationId' + '}', CGI.escape(number_range_configuration_id.to_s))

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
      return_type = opts[:debug_return_type] || 'NumberRangeConfiguration'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"NumberRangeConfigurationsApi.get_number_range_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NumberRangeConfigurationsApi#get_number_range_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # lists all number range configurations
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @return [ResultListNumberRangeConfiguration]
    def get_number_range_configurations(korona_account_id, opts = {})
      data, _status_code, _headers = get_number_range_configurations_with_http_info(korona_account_id, opts)
      data
    end

    # lists all number range configurations
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @return [Array<(ResultListNumberRangeConfiguration, Integer, Hash)>] ResultListNumberRangeConfiguration data, response status code and response headers
    def get_number_range_configurations_with_http_info(korona_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NumberRangeConfigurationsApi.get_number_range_configurations ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling NumberRangeConfigurationsApi.get_number_range_configurations"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/numberRangeConfigurations'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'revision'] = opts[:'revision'] if !opts[:'revision'].nil?
      query_params[:'includeDeleted'] = opts[:'include_deleted'] if !opts[:'include_deleted'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ResultListNumberRangeConfiguration'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"NumberRangeConfigurationsApi.get_number_range_configurations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NumberRangeConfigurationsApi#get_number_range_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # updates a batch of number range configurations
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param number_range_configuration [Array<NumberRangeConfiguration>] an array of existing number range configurations
    # @param [Hash] opts the optional parameters
    # @return [Array<AddOrUpdateResult>]
    def update_number_range_configurations(korona_account_id, number_range_configuration, opts = {})
      data, _status_code, _headers = update_number_range_configurations_with_http_info(korona_account_id, number_range_configuration, opts)
      data
    end

    # updates a batch of number range configurations
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param number_range_configuration [Array<NumberRangeConfiguration>] an array of existing number range configurations
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def update_number_range_configurations_with_http_info(korona_account_id, number_range_configuration, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NumberRangeConfigurationsApi.update_number_range_configurations ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling NumberRangeConfigurationsApi.update_number_range_configurations"
      end
      # verify the required parameter 'number_range_configuration' is set
      if @api_client.config.client_side_validation && number_range_configuration.nil?
        fail ArgumentError, "Missing the required parameter 'number_range_configuration' when calling NumberRangeConfigurationsApi.update_number_range_configurations"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/numberRangeConfigurations'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(number_range_configuration)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AddOrUpdateResult>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"NumberRangeConfigurationsApi.update_number_range_configurations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NumberRangeConfigurationsApi#update_number_range_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
