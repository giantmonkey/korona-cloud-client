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
  class AccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # adds a batch of new accounts
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param account [Array<Account>] array of new accounts
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
    # @option opts [String] :write_mode DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields
    # @return [Array<AddOrUpdateResult>]
    def add_accounts(korona_account_id, account, opts = {})
      data, _status_code, _headers = add_accounts_with_http_info(korona_account_id, account, opts)
      data
    end

    # adds a batch of new accounts
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param account [Array<Account>] array of new accounts
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
    # @option opts [String] :write_mode DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def add_accounts_with_http_info(korona_account_id, account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.add_accounts ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling AccountsApi.add_accounts"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling AccountsApi.add_accounts"
      end
      allowable_values = ["DEFAULT", "ADD_OR_UPDATE", "ADD_OR_REPLACE"]
      if @api_client.config.client_side_validation && opts[:'write_mode'] && !allowable_values.include?(opts[:'write_mode'])
        fail ArgumentError, "invalid value for \"write_mode\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/accounts'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(account)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AddOrUpdateResult>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"AccountsApi.add_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#add_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # deletes the single account
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param account_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_account(korona_account_id, account_id, opts = {})
      delete_account_with_http_info(korona_account_id, account_id, opts)
      nil
    end

    # deletes the single account
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param account_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_account_with_http_info(korona_account_id, account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.delete_account ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling AccountsApi.delete_account"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountsApi.delete_account"
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
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"AccountsApi.delete_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#delete_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # deletes a batch of accounts
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param account [Array<Account>] array of existing accounts (id or number required)
    # @param [Hash] opts the optional parameters
    # @return [Array<AddOrUpdateResult>]
    def delete_accounts(korona_account_id, account, opts = {})
      data, _status_code, _headers = delete_accounts_with_http_info(korona_account_id, account, opts)
      data
    end

    # deletes a batch of accounts
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param account [Array<Account>] array of existing accounts (id or number required)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def delete_accounts_with_http_info(korona_account_id, account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.delete_accounts ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling AccountsApi.delete_accounts"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling AccountsApi.delete_accounts"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/accounts'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(account)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AddOrUpdateResult>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"AccountsApi.delete_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#delete_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # returns a single account
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param account_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [Account]
    def get_account(korona_account_id, account_id, opts = {})
      data, _status_code, _headers = get_account_with_http_info(korona_account_id, account_id, opts)
      data
    end

    # returns a single account
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
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Account'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"AccountsApi.get_account",
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
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ResultListAccount'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"AccountsApi.get_accounts",
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

    # updates the single account; if [number] is set, the number of the object will change and the resource location as well
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param account_id [String] id of the related object (important: id should match the uuid-format)
    # @param account [Account] the properties to update of the account
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_account(korona_account_id, account_id, account, opts = {})
      update_account_with_http_info(korona_account_id, account_id, account, opts)
      nil
    end

    # updates the single account; if [number] is set, the number of the object will change and the resource location as well
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param account_id [String] id of the related object (important: id should match the uuid-format)
    # @param account [Account] the properties to update of the account
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_account_with_http_info(korona_account_id, account_id, account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.update_account ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling AccountsApi.update_account"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountsApi.update_account"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling AccountsApi.update_account"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/accounts/{accountId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(account)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"AccountsApi.update_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#update_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # updates a batch of accounts; [number] must be set in the objects, otherwise the object cannot be updated
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param account [Array<Account>] an array of existing accounts
    # @param [Hash] opts the optional parameters
    # @return [Array<AddOrUpdateResult>]
    def update_accounts(korona_account_id, account, opts = {})
      data, _status_code, _headers = update_accounts_with_http_info(korona_account_id, account, opts)
      data
    end

    # updates a batch of accounts; [number] must be set in the objects, otherwise the object cannot be updated
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param account [Array<Account>] an array of existing accounts
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def update_accounts_with_http_info(korona_account_id, account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.update_accounts ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling AccountsApi.update_accounts"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling AccountsApi.update_accounts"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/accounts'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(account)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AddOrUpdateResult>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"AccountsApi.update_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#update_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
