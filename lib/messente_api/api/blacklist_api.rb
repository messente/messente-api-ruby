=begin
#Messente API

#[Messente](https://messente.com) is a global provider of messaging and user verification services. Use Messente API library to send and receive SMS, Viber and WhatsApp messages, blacklist phone numbers to make sure you're not sending any unwanted messages, manage contacts and groups.  Messente builds [tools](https://messente.com/documentation) to help organizations connect their services to people anywhere in the world.

The version of the OpenAPI document: 1.0.2
Contact: messente@messente.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.3

=end

require 'cgi'

module MessenteApi
  class BlacklistApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Adds a phone number to the blacklist
    # @param number_to_blacklist [NumberToBlacklist] Phone number to be blacklisted
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def add_to_blacklist(number_to_blacklist, opts = {})
      add_to_blacklist_with_http_info(number_to_blacklist, opts)
      nil
    end

    # Adds a phone number to the blacklist
    # @param number_to_blacklist [NumberToBlacklist] Phone number to be blacklisted
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def add_to_blacklist_with_http_info(number_to_blacklist, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlacklistApi.add_to_blacklist ...'
      end
      # verify the required parameter 'number_to_blacklist' is set
      if @api_client.config.client_side_validation && number_to_blacklist.nil?
        fail ArgumentError, "Missing the required parameter 'number_to_blacklist' when calling BlacklistApi.add_to_blacklist"
      end
      # resource path
      local_var_path = '/phonebook/blacklist'

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
      post_body = opts[:body] || @api_client.object_to_http_body(number_to_blacklist) 

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlacklistApi#add_to_blacklist\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a phone number from the blacklist
    # @param phone [String] A phone number
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_from_blacklist(phone, opts = {})
      delete_from_blacklist_with_http_info(phone, opts)
      nil
    end

    # Deletes a phone number from the blacklist
    # @param phone [String] A phone number
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_from_blacklist_with_http_info(phone, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlacklistApi.delete_from_blacklist ...'
      end
      # verify the required parameter 'phone' is set
      if @api_client.config.client_side_validation && phone.nil?
        fail ArgumentError, "Missing the required parameter 'phone' when calling BlacklistApi.delete_from_blacklist"
      end
      # resource path
      local_var_path = '/phonebook/blacklist/{phone}'.sub('{' + 'phone' + '}', CGI.escape(phone.to_s))

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
        @api_client.config.logger.debug "API called: BlacklistApi#delete_from_blacklist\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns all blacklisted phone numbers
    # @param [Hash] opts the optional parameters
    # @return [FetchBlacklistSuccess]
    def fetch_blacklist(opts = {})
      data, _status_code, _headers = fetch_blacklist_with_http_info(opts)
      data
    end

    # Returns all blacklisted phone numbers
    # @param [Hash] opts the optional parameters
    # @return [Array<(FetchBlacklistSuccess, Integer, Hash)>] FetchBlacklistSuccess data, response status code and response headers
    def fetch_blacklist_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlacklistApi.fetch_blacklist ...'
      end
      # resource path
      local_var_path = '/phonebook/blacklist'

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
      return_type = opts[:return_type] || 'FetchBlacklistSuccess' 

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
        @api_client.config.logger.debug "API called: BlacklistApi#fetch_blacklist\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Checks if a phone number is blacklisted
    # @param phone [String] A phone number
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def is_blacklisted(phone, opts = {})
      is_blacklisted_with_http_info(phone, opts)
      nil
    end

    # Checks if a phone number is blacklisted
    # @param phone [String] A phone number
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def is_blacklisted_with_http_info(phone, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlacklistApi.is_blacklisted ...'
      end
      # verify the required parameter 'phone' is set
      if @api_client.config.client_side_validation && phone.nil?
        fail ArgumentError, "Missing the required parameter 'phone' when calling BlacklistApi.is_blacklisted"
      end
      # resource path
      local_var_path = '/phonebook/blacklist/{phone}'.sub('{' + 'phone' + '}', CGI.escape(phone.to_s))

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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlacklistApi#is_blacklisted\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
