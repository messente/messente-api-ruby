=begin
#Messente API

#[Messente](https://messente.com) is a global provider of messaging and user verification services. Use Messente API library to send and receive SMS, Viber and WhatsApp messages, blacklist phone numbers to make sure you're not sending any unwanted messages, manage contacts and groups.  Messente builds [tools](https://messente.com/documentation) to help organizations connect their services to people anywhere in the world.

The version of the OpenAPI document: 1.0.0
Contact: messente@messente.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0

=end

require 'uri'

module MessenteApi
  class OmnimessageApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancels a scheduled Omnimessage.
    # @param omnimessage_id [String] UUID of the scheduled Omnimessage to be cancelled
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def cancel_scheduled_message(omnimessage_id, opts = {})
      cancel_scheduled_message_with_http_info(omnimessage_id, opts)
      nil
    end

    # Cancels a scheduled Omnimessage.
    # @param omnimessage_id [String] UUID of the scheduled Omnimessage to be cancelled
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def cancel_scheduled_message_with_http_info(omnimessage_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OmnimessageApi.cancel_scheduled_message ...'
      end
      # verify the required parameter 'omnimessage_id' is set
      if @api_client.config.client_side_validation && omnimessage_id.nil?
        fail ArgumentError, "Missing the required parameter 'omnimessage_id' when calling OmnimessageApi.cancel_scheduled_message"
      end
      # resource path
      local_var_path = '/omnimessage/{omnimessageId}'.sub('{' + 'omnimessageId' + '}', omnimessage_id.to_s)

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
        @api_client.config.logger.debug "API called: OmnimessageApi#cancel_scheduled_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sends an Omnimessage.
    # @param omnimessage [Omnimessage] Omnimessage to be sent
    # @param [Hash] opts the optional parameters
    # @return [OmniMessageCreateSuccessResponse]
    def send_omnimessage(omnimessage, opts = {})
      data, _status_code, _headers = send_omnimessage_with_http_info(omnimessage, opts)
      data
    end

    # Sends an Omnimessage.
    # @param omnimessage [Omnimessage] Omnimessage to be sent
    # @param [Hash] opts the optional parameters
    # @return [Array<(OmniMessageCreateSuccessResponse, Integer, Hash)>] OmniMessageCreateSuccessResponse data, response status code and response headers
    def send_omnimessage_with_http_info(omnimessage, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OmnimessageApi.send_omnimessage ...'
      end
      # verify the required parameter 'omnimessage' is set
      if @api_client.config.client_side_validation && omnimessage.nil?
        fail ArgumentError, "Missing the required parameter 'omnimessage' when calling OmnimessageApi.send_omnimessage"
      end
      # resource path
      local_var_path = '/omnimessage'

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
      post_body = opts[:body] || @api_client.object_to_http_body(omnimessage) 

      # return_type
      return_type = opts[:return_type] || 'OmniMessageCreateSuccessResponse' 

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
        @api_client.config.logger.debug "API called: OmnimessageApi#send_omnimessage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
