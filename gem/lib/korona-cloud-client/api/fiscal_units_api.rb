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
  class FiscalUnitsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # adds a batch of fiscal units
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param fiscal_unit [Array<FiscalUnit>] array of new fiscal units
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
    # @option opts [String] :write_mode DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields
    # @return [Array<AddOrUpdateResult>]
    def add_fiscal_units(korona_account_id, fiscal_unit, opts = {})
      data, _status_code, _headers = add_fiscal_units_with_http_info(korona_account_id, fiscal_unit, opts)
      data
    end

    # adds a batch of fiscal units
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param fiscal_unit [Array<FiscalUnit>] array of new fiscal units
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
    # @option opts [String] :write_mode DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def add_fiscal_units_with_http_info(korona_account_id, fiscal_unit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FiscalUnitsApi.add_fiscal_units ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling FiscalUnitsApi.add_fiscal_units"
      end
      # verify the required parameter 'fiscal_unit' is set
      if @api_client.config.client_side_validation && fiscal_unit.nil?
        fail ArgumentError, "Missing the required parameter 'fiscal_unit' when calling FiscalUnitsApi.add_fiscal_units"
      end
      allowable_values = ["DEFAULT", "ADD_OR_UPDATE", "ADD_OR_REPLACE"]
      if @api_client.config.client_side_validation && opts[:'write_mode'] && !allowable_values.include?(opts[:'write_mode'])
        fail ArgumentError, "invalid value for \"write_mode\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/fiscalUnits'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(fiscal_unit)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AddOrUpdateResult>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"FiscalUnitsApi.add_fiscal_units",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FiscalUnitsApi#add_fiscal_units\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # returns the single fiscal unit
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param fiscal_unit_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [FiscalUnit]
    def get_fiscal_unit(korona_account_id, fiscal_unit_id, opts = {})
      data, _status_code, _headers = get_fiscal_unit_with_http_info(korona_account_id, fiscal_unit_id, opts)
      data
    end

    # returns the single fiscal unit
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param fiscal_unit_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [Array<(FiscalUnit, Integer, Hash)>] FiscalUnit data, response status code and response headers
    def get_fiscal_unit_with_http_info(korona_account_id, fiscal_unit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FiscalUnitsApi.get_fiscal_unit ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling FiscalUnitsApi.get_fiscal_unit"
      end
      # verify the required parameter 'fiscal_unit_id' is set
      if @api_client.config.client_side_validation && fiscal_unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'fiscal_unit_id' when calling FiscalUnitsApi.get_fiscal_unit"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/fiscalUnits/{fiscalUnitId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'fiscalUnitId' + '}', CGI.escape(fiscal_unit_id.to_s))

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
      return_type = opts[:debug_return_type] || 'FiscalUnit'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"FiscalUnitsApi.get_fiscal_unit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FiscalUnitsApi#get_fiscal_unit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # lists all fiscal units
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @option opts [String] :number number of the related object
    # @option opts [String] :type type of fiscal unit
    # @option opts [String] :api_key api key of fiscal unit
    # @return [ResultListFiscalUnit]
    def get_fiscal_units(korona_account_id, opts = {})
      data, _status_code, _headers = get_fiscal_units_with_http_info(korona_account_id, opts)
      data
    end

    # lists all fiscal units
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @option opts [String] :number number of the related object
    # @option opts [String] :type type of fiscal unit
    # @option opts [String] :api_key api key of fiscal unit
    # @return [Array<(ResultListFiscalUnit, Integer, Hash)>] ResultListFiscalUnit data, response status code and response headers
    def get_fiscal_units_with_http_info(korona_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FiscalUnitsApi.get_fiscal_units ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling FiscalUnitsApi.get_fiscal_units"
      end
      allowable_values = ["EFSTA", "FISKALY", "SWISSBIT", "SWISSBIT_LAN"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/fiscalUnits'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'revision'] = opts[:'revision'] if !opts[:'revision'].nil?
      query_params[:'includeDeleted'] = opts[:'include_deleted'] if !opts[:'include_deleted'].nil?
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'apiKey'] = opts[:'api_key'] if !opts[:'api_key'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ResultListFiscalUnit'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"FiscalUnitsApi.get_fiscal_units",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FiscalUnitsApi#get_fiscal_units\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # updates the fiscal unit
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param fiscal_unit_id [String] id of the related object (important: id should match the uuid-format)
    # @param fiscal_unit [FiscalUnit] the properties to update of the fiscal unit
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_fiscal_unit(korona_account_id, fiscal_unit_id, fiscal_unit, opts = {})
      update_fiscal_unit_with_http_info(korona_account_id, fiscal_unit_id, fiscal_unit, opts)
      nil
    end

    # updates the fiscal unit
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param fiscal_unit_id [String] id of the related object (important: id should match the uuid-format)
    # @param fiscal_unit [FiscalUnit] the properties to update of the fiscal unit
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_fiscal_unit_with_http_info(korona_account_id, fiscal_unit_id, fiscal_unit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FiscalUnitsApi.update_fiscal_unit ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling FiscalUnitsApi.update_fiscal_unit"
      end
      # verify the required parameter 'fiscal_unit_id' is set
      if @api_client.config.client_side_validation && fiscal_unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'fiscal_unit_id' when calling FiscalUnitsApi.update_fiscal_unit"
      end
      # verify the required parameter 'fiscal_unit' is set
      if @api_client.config.client_side_validation && fiscal_unit.nil?
        fail ArgumentError, "Missing the required parameter 'fiscal_unit' when calling FiscalUnitsApi.update_fiscal_unit"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/fiscalUnits/{fiscalUnitId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'fiscalUnitId' + '}', CGI.escape(fiscal_unit_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(fiscal_unit)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"FiscalUnitsApi.update_fiscal_unit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FiscalUnitsApi#update_fiscal_unit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # updates a batch of fiscal units
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param fiscal_unit [Array<FiscalUnit>] array of existing fiscal units (id or number required)
    # @param [Hash] opts the optional parameters
    # @return [Array<AddOrUpdateResult>]
    def update_fiscal_units(korona_account_id, fiscal_unit, opts = {})
      data, _status_code, _headers = update_fiscal_units_with_http_info(korona_account_id, fiscal_unit, opts)
      data
    end

    # updates a batch of fiscal units
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param fiscal_unit [Array<FiscalUnit>] array of existing fiscal units (id or number required)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def update_fiscal_units_with_http_info(korona_account_id, fiscal_unit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FiscalUnitsApi.update_fiscal_units ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling FiscalUnitsApi.update_fiscal_units"
      end
      # verify the required parameter 'fiscal_unit' is set
      if @api_client.config.client_side_validation && fiscal_unit.nil?
        fail ArgumentError, "Missing the required parameter 'fiscal_unit' when calling FiscalUnitsApi.update_fiscal_units"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/fiscalUnits'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(fiscal_unit)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AddOrUpdateResult>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"FiscalUnitsApi.update_fiscal_units",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FiscalUnitsApi#update_fiscal_units\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
