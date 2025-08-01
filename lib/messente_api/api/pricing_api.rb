=begin
#Messente API

#[Messente](https://messente.com) is a global provider of messaging and user verification services.  * Send and receive SMS, Viber and WhatsApp messages. * Manage contacts and groups. * Fetch detailed info about phone numbers. * Blacklist phone numbers to make sure you're not sending any unwanted messages.  Messente builds [tools](https://messente.com/documentation) to help organizations connect their services to people anywhere in the world.

The version of the OpenAPI document: 2.0.0
Contact: messente@messente.com
Generated by: https://openapi-generator.tech
Generator version: 7.11.0

=end

require 'cgi'

module MessenteApi
  class PricingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get pricelist for account
    # @param username [String] The API username
    # @param password [String] The API password
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_pricelist(username, password, opts = {})
      data, _status_code, _headers = get_pricelist_with_http_info(username, password, opts)
      data
    end

    # Get pricelist for account
    # @param username [String] The API username
    # @param password [String] The API password
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_pricelist_with_http_info(username, password, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PricingApi.get_pricelist ...'
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling PricingApi.get_pricelist"
      end
      # verify the required parameter 'password' is set
      if @api_client.config.client_side_validation && password.nil?
        fail ArgumentError, "Missing the required parameter 'password' when calling PricingApi.get_pricelist"
      end
      # resource path
      local_var_path = '/pricelist'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'username'] = username
      query_params[:'password'] = password

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiPassword', 'apiUsername']

      new_options = opts.merge(
        :operation => :"PricingApi.get_pricelist",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingApi#get_pricelist\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get pricing for a specific country
    # @param username [String] The API username
    # @param password [String] The API password
    # @param country [String] The country code, for which to get the prices
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The format of the response. Can be either &#39;json&#39; or &#39;xml&#39;. If not specified, defaults to &#39;json&#39;.
    # @return [Price]
    def get_prices(username, password, country, opts = {})
      data, _status_code, _headers = get_prices_with_http_info(username, password, country, opts)
      data
    end

    # Get pricing for a specific country
    # @param username [String] The API username
    # @param password [String] The API password
    # @param country [String] The country code, for which to get the prices
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The format of the response. Can be either &#39;json&#39; or &#39;xml&#39;. If not specified, defaults to &#39;json&#39;.
    # @return [Array<(Price, Integer, Hash)>] Price data, response status code and response headers
    def get_prices_with_http_info(username, password, country, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PricingApi.get_prices ...'
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling PricingApi.get_prices"
      end
      # verify the required parameter 'password' is set
      if @api_client.config.client_side_validation && password.nil?
        fail ArgumentError, "Missing the required parameter 'password' when calling PricingApi.get_prices"
      end
      # verify the required parameter 'country' is set
      if @api_client.config.client_side_validation && country.nil?
        fail ArgumentError, "Missing the required parameter 'country' when calling PricingApi.get_prices"
      end
      # resource path
      local_var_path = '/prices'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'username'] = username
      query_params[:'password'] = password
      query_params[:'country'] = country
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml', 'text/plain; charset=utf-8']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Price'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiPassword', 'apiUsername']

      new_options = opts.merge(
        :operation => :"PricingApi.get_prices",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingApi#get_prices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
