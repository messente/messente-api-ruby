=begin
#Messente API

#[Messente](https://messente.com) is a global provider of messaging and user verification services.  * Send and receive SMS, Viber, WhatsApp and Telegram messages. * Manage contacts and groups. * Fetch detailed info about phone numbers. * Blacklist phone numbers to make sure you're not sending any unwanted messages.  Messente builds [tools](https://messente.com/documentation) to help organizations connect their services to people anywhere in the world.

The version of the OpenAPI document: 1.1.1
Contact: messente@messente.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.3

=end

require 'cgi'

module MessenteApi
  class GroupsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new group with the provided name
    # @param group_name [GroupName] 
    # @param [Hash] opts the optional parameters
    # @return [GroupEnvelope]
    def create_group(group_name, opts = {})
      data, _status_code, _headers = create_group_with_http_info(group_name, opts)
      data
    end

    # Creates a new group with the provided name
    # @param group_name [GroupName] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupEnvelope, Integer, Hash)>] GroupEnvelope data, response status code and response headers
    def create_group_with_http_info(group_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupsApi.create_group ...'
      end
      # verify the required parameter 'group_name' is set
      if @api_client.config.client_side_validation && group_name.nil?
        fail ArgumentError, "Missing the required parameter 'group_name' when calling GroupsApi.create_group"
      end
      # resource path
      local_var_path = '/phonebook/groups'

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
      post_body = opts[:body] || @api_client.object_to_http_body(group_name) 

      # return_type
      return_type = opts[:return_type] || 'GroupEnvelope' 

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
        @api_client.config.logger.debug "API called: GroupsApi#create_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a group
    # @param group_id [String] String in UUID format
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_group(group_id, opts = {})
      delete_group_with_http_info(group_id, opts)
      nil
    end

    # Deletes a group
    # @param group_id [String] String in UUID format
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_group_with_http_info(group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupsApi.delete_group ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupsApi.delete_group"
      end
      # resource path
      local_var_path = '/phonebook/groups/{groupId}'.sub('{' + 'groupId' + '}', CGI.escape(group_id.to_s))

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
        @api_client.config.logger.debug "API called: GroupsApi#delete_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lists a group
    # @param group_id [String] String in UUID format
    # @param [Hash] opts the optional parameters
    # @return [GroupEnvelope]
    def fetch_group(group_id, opts = {})
      data, _status_code, _headers = fetch_group_with_http_info(group_id, opts)
      data
    end

    # Lists a group
    # @param group_id [String] String in UUID format
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupEnvelope, Integer, Hash)>] GroupEnvelope data, response status code and response headers
    def fetch_group_with_http_info(group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupsApi.fetch_group ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupsApi.fetch_group"
      end
      # resource path
      local_var_path = '/phonebook/groups/{groupId}'.sub('{' + 'groupId' + '}', CGI.escape(group_id.to_s))

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
      return_type = opts[:return_type] || 'GroupEnvelope' 

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
        @api_client.config.logger.debug "API called: GroupsApi#fetch_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns all groups
    # @param [Hash] opts the optional parameters
    # @return [GroupListEnvelope]
    def fetch_groups(opts = {})
      data, _status_code, _headers = fetch_groups_with_http_info(opts)
      data
    end

    # Returns all groups
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupListEnvelope, Integer, Hash)>] GroupListEnvelope data, response status code and response headers
    def fetch_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupsApi.fetch_groups ...'
      end
      # resource path
      local_var_path = '/phonebook/groups'

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
      return_type = opts[:return_type] || 'GroupListEnvelope' 

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
        @api_client.config.logger.debug "API called: GroupsApi#fetch_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a group with the provided name
    # @param group_id [String] String in UUID format
    # @param group_name [GroupName] 
    # @param [Hash] opts the optional parameters
    # @return [GroupEnvelope]
    def update_group(group_id, group_name, opts = {})
      data, _status_code, _headers = update_group_with_http_info(group_id, group_name, opts)
      data
    end

    # Updates a group with the provided name
    # @param group_id [String] String in UUID format
    # @param group_name [GroupName] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupEnvelope, Integer, Hash)>] GroupEnvelope data, response status code and response headers
    def update_group_with_http_info(group_id, group_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupsApi.update_group ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupsApi.update_group"
      end
      # verify the required parameter 'group_name' is set
      if @api_client.config.client_side_validation && group_name.nil?
        fail ArgumentError, "Missing the required parameter 'group_name' when calling GroupsApi.update_group"
      end
      # resource path
      local_var_path = '/phonebook/groups/{groupId}'.sub('{' + 'groupId' + '}', CGI.escape(group_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(group_name) 

      # return_type
      return_type = opts[:return_type] || 'GroupEnvelope' 

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

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupsApi#update_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
