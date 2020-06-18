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
  class AccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # returns the single account
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param account_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [Account]
    def get_account(korona_account_id, account_id, opts = {})
      data, _status_code, _headers = get_account_with_http_info(korona_account_id, account_id, opts)
      data
    end

    # returns the single account
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param account_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Account, Integer, Hash)>] Account data, response status code and response headers
    def get_account_with_http_info(korona_account_id, account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.get_account ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling AccountsApi.get_account"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountsApi.get_account"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/accounts/{accountId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

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
      return_type = opts[:return_type] || 'Account' 

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
        @api_client.config.logger.debug "API called: AccountsApi#get_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # lists all accounts
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @return [ResultListAccount]
    def get_accounts(korona_account_id, opts = {})
      data, _status_code, _headers = get_accounts_with_http_info(korona_account_id, opts)
      data
    end

    # lists all accounts
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @return [Array<(ResultListAccount, Integer, Hash)>] ResultListAccount data, response status code and response headers
    def get_accounts_with_http_info(korona_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.get_accounts ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling AccountsApi.get_accounts"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/accounts'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

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
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ResultListAccount' 

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
        @api_client.config.logger.debug "API called: AccountsApi#get_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end