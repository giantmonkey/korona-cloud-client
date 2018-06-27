=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

OpenAPI spec version: 3
Contact: support@combase.net
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module KoronaClient
  class CurrenciesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # lists all currencies
    # 
    # @param korona_account_id the account id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [BOOLEAN] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @return [ResultListCurrency]
    def get_currencies(korona_account_id, opts = {})
      data, _status_code, _headers = get_currencies_with_http_info(korona_account_id, opts)
      return data
    end

    # lists all currencies
    # 
    # @param korona_account_id the account id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [BOOLEAN] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @return [Array<(ResultListCurrency, Fixnum, Hash)>] ResultListCurrency data, response status code and response headers
    def get_currencies_with_http_info(korona_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CurrenciesApi.get_currencies ..."
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling CurrenciesApi.get_currencies"
      end
      # resource path
      local_var_path = "/accounts/{koronaAccountId}/currencies".sub('{' + 'koronaAccountId' + '}', korona_account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'revision'] = opts[:'revision'] if !opts[:'revision'].nil?
      query_params[:'includeDeleted'] = opts[:'include_deleted'] if !opts[:'include_deleted'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResultListCurrency')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CurrenciesApi#get_currencies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # lists the currency
    # 
    # @param korona_account_id the account id
    # @param currency_id_or_number id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)
    # @param [Hash] opts the optional parameters
    # @return [Currency]
    def get_currency(korona_account_id, currency_id_or_number, opts = {})
      data, _status_code, _headers = get_currency_with_http_info(korona_account_id, currency_id_or_number, opts)
      return data
    end

    # lists the currency
    # 
    # @param korona_account_id the account id
    # @param currency_id_or_number id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Currency, Fixnum, Hash)>] Currency data, response status code and response headers
    def get_currency_with_http_info(korona_account_id, currency_id_or_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CurrenciesApi.get_currency ..."
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling CurrenciesApi.get_currency"
      end
      # verify the required parameter 'currency_id_or_number' is set
      if @api_client.config.client_side_validation && currency_id_or_number.nil?
        fail ArgumentError, "Missing the required parameter 'currency_id_or_number' when calling CurrenciesApi.get_currency"
      end
      # resource path
      local_var_path = "/accounts/{koronaAccountId}/currencies/{currencyIdOrNumber}".sub('{' + 'koronaAccountId' + '}', korona_account_id.to_s).sub('{' + 'currencyIdOrNumber' + '}', currency_id_or_number.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Currency')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CurrenciesApi#get_currency\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end