=begin
#Messente API

#[Messente](https://messente.com) is a global provider of messaging and user verification services.  * Send and receive SMS, Viber, WhatsApp and Telegram messages. * Manage contacts and groups. * Fetch detailed info about phone numbers. * Blacklist phone numbers to make sure you're not sending any unwanted messages.  Messente builds [tools](https://messente.com/documentation) to help organizations connect their services to people anywhere in the world.

The version of the OpenAPI document: 1.3.0
Contact: messente@messente.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module MessenteApi
  class NumberLookupApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Requests info about phone numbers
    # @param numbers_to_investigate [NumbersToInvestigate] Numbers for lookup
    # @param [Hash] opts the optional parameters
    # @return [SyncNumberLookupSuccess]
    def fetch_info(numbers_to_investigate, opts = {})
      data, _status_code, _headers = fetch_info_with_http_info(numbers_to_investigate, opts)
      data
    end

    # Requests info about phone numbers
    # @param numbers_to_investigate [NumbersToInvestigate] Numbers for lookup
    # @param [Hash] opts the optional parameters
    # @return [Array<(SyncNumberLookupSuccess, Integer, Hash)>] SyncNumberLookupSuccess data, response status code and response headers
    def fetch_info_with_http_info(numbers_to_investigate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NumberLookupApi.fetch_info ...'
      end
      # verify the required parameter 'numbers_to_investigate' is set
      if @api_client.config.client_side_validation && numbers_to_investigate.nil?
        fail ArgumentError, "Missing the required parameter 'numbers_to_investigate' when calling NumberLookupApi.fetch_info"
      end
      # resource path
      local_var_path = '/hlr/sync'

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
      post_body = opts[:body] || @api_client.object_to_http_body(numbers_to_investigate) 

      # return_type
      return_type = opts[:return_type] || 'SyncNumberLookupSuccess' 

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
        @api_client.config.logger.debug "API called: NumberLookupApi#fetch_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
