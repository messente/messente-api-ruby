=begin
#Messente API

#[Messente](https://messente.com) is a global provider of messaging and user verification services. Use Messente API library to send and receive SMS, Viber, WhatsApp and Telegram messages, blacklist phone numbers to make sure you're not sending any unwanted messages, manage contacts and groups.  Messente builds [tools](https://messente.com/documentation) to help organizations connect their services to people anywhere in the world.

The version of the OpenAPI document: 1.1.0
Contact: messente@messente.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.3

=end

require 'cgi'

module MessenteApi
  class DeliveryReportApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves the delivery report for the Omnimessage
    # @param omnimessage_id [String] UUID of the omnimessage to for which the delivery report is to be retrieved
    # @param [Hash] opts the optional parameters
    # @return [DeliveryReportResponse]
    def retrieve_delivery_report(omnimessage_id, opts = {})
      data, _status_code, _headers = retrieve_delivery_report_with_http_info(omnimessage_id, opts)
      data
    end

    # Retrieves the delivery report for the Omnimessage
    # @param omnimessage_id [String] UUID of the omnimessage to for which the delivery report is to be retrieved
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeliveryReportResponse, Integer, Hash)>] DeliveryReportResponse data, response status code and response headers
    def retrieve_delivery_report_with_http_info(omnimessage_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeliveryReportApi.retrieve_delivery_report ...'
      end
      # verify the required parameter 'omnimessage_id' is set
      if @api_client.config.client_side_validation && omnimessage_id.nil?
        fail ArgumentError, "Missing the required parameter 'omnimessage_id' when calling DeliveryReportApi.retrieve_delivery_report"
      end
      # resource path
      local_var_path = '/omnimessage/{omnimessageId}/status'.sub('{' + 'omnimessageId' + '}', CGI.escape(omnimessage_id.to_s))

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
      return_type = opts[:return_type] || 'DeliveryReportResponse' 

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
        @api_client.config.logger.debug "API called: DeliveryReportApi#retrieve_delivery_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
