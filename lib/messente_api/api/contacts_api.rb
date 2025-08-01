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
  class ContactsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Adds a contact to a group
    # @param group_id [String] String in UUID format
    # @param phone [String] A phone number
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def add_contact_to_group(group_id, phone, opts = {})
      data, _status_code, _headers = add_contact_to_group_with_http_info(group_id, phone, opts)
      data
    end

    # Adds a contact to a group
    # @param group_id [String] String in UUID format
    # @param phone [String] A phone number
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def add_contact_to_group_with_http_info(group_id, phone, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.add_contact_to_group ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling ContactsApi.add_contact_to_group"
      end
      # verify the required parameter 'phone' is set
      if @api_client.config.client_side_validation && phone.nil?
        fail ArgumentError, "Missing the required parameter 'phone' when calling ContactsApi.add_contact_to_group"
      end
      # resource path
      local_var_path = '/phonebook/groups/{groupId}/contacts/{phone}'.sub('{' + 'groupId' + '}', CGI.escape(group_id.to_s)).sub('{' + 'phone' + '}', CGI.escape(phone.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"ContactsApi.add_contact_to_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#add_contact_to_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates a new contact
    # @param contact_fields [ContactFields] 
    # @param [Hash] opts the optional parameters
    # @return [ContactEnvelope]
    def create_contact(contact_fields, opts = {})
      data, _status_code, _headers = create_contact_with_http_info(contact_fields, opts)
      data
    end

    # Creates a new contact
    # @param contact_fields [ContactFields] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactEnvelope, Integer, Hash)>] ContactEnvelope data, response status code and response headers
    def create_contact_with_http_info(contact_fields, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.create_contact ...'
      end
      # verify the required parameter 'contact_fields' is set
      if @api_client.config.client_side_validation && contact_fields.nil?
        fail ArgumentError, "Missing the required parameter 'contact_fields' when calling ContactsApi.create_contact"
      end
      # resource path
      local_var_path = '/phonebook/contacts'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(contact_fields)

      # return_type
      return_type = opts[:debug_return_type] || 'ContactEnvelope'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"ContactsApi.create_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#create_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a contact
    # @param phone [String] A phone number
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_contact(phone, opts = {})
      delete_contact_with_http_info(phone, opts)
      nil
    end

    # Deletes a contact
    # @param phone [String] A phone number
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_contact_with_http_info(phone, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.delete_contact ...'
      end
      # verify the required parameter 'phone' is set
      if @api_client.config.client_side_validation && phone.nil?
        fail ArgumentError, "Missing the required parameter 'phone' when calling ContactsApi.delete_contact"
      end
      # resource path
      local_var_path = '/phonebook/contacts/{phone}'.sub('{' + 'phone' + '}', CGI.escape(phone.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"ContactsApi.delete_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#delete_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lists a contact
    # @param phone [String] A phone number
    # @param [Hash] opts the optional parameters
    # @return [ContactEnvelope]
    def fetch_contact(phone, opts = {})
      data, _status_code, _headers = fetch_contact_with_http_info(phone, opts)
      data
    end

    # Lists a contact
    # @param phone [String] A phone number
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactEnvelope, Integer, Hash)>] ContactEnvelope data, response status code and response headers
    def fetch_contact_with_http_info(phone, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.fetch_contact ...'
      end
      # verify the required parameter 'phone' is set
      if @api_client.config.client_side_validation && phone.nil?
        fail ArgumentError, "Missing the required parameter 'phone' when calling ContactsApi.fetch_contact"
      end
      # resource path
      local_var_path = '/phonebook/contacts/{phone}'.sub('{' + 'phone' + '}', CGI.escape(phone.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ContactEnvelope'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"ContactsApi.fetch_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#fetch_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lists groups of a contact
    # @param phone [String] A phone number
    # @param [Hash] opts the optional parameters
    # @return [GroupListEnvelope]
    def fetch_contact_groups(phone, opts = {})
      data, _status_code, _headers = fetch_contact_groups_with_http_info(phone, opts)
      data
    end

    # Lists groups of a contact
    # @param phone [String] A phone number
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupListEnvelope, Integer, Hash)>] GroupListEnvelope data, response status code and response headers
    def fetch_contact_groups_with_http_info(phone, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.fetch_contact_groups ...'
      end
      # verify the required parameter 'phone' is set
      if @api_client.config.client_side_validation && phone.nil?
        fail ArgumentError, "Missing the required parameter 'phone' when calling ContactsApi.fetch_contact_groups"
      end
      # resource path
      local_var_path = '/phonebook/contacts/{phone}/groups'.sub('{' + 'phone' + '}', CGI.escape(phone.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GroupListEnvelope'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"ContactsApi.fetch_contact_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#fetch_contact_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns all contacts
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :group_ids Optional one or many group id strings in UUID format. For example: \&quot;/contacts?groupIds&#x3D;group_id_one&amp;groupIds&#x3D;group_id_two\&quot; 
    # @return [ContactListEnvelope]
    def fetch_contacts(opts = {})
      data, _status_code, _headers = fetch_contacts_with_http_info(opts)
      data
    end

    # Returns all contacts
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :group_ids Optional one or many group id strings in UUID format. For example: \&quot;/contacts?groupIds&#x3D;group_id_one&amp;groupIds&#x3D;group_id_two\&quot; 
    # @return [Array<(ContactListEnvelope, Integer, Hash)>] ContactListEnvelope data, response status code and response headers
    def fetch_contacts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.fetch_contacts ...'
      end
      # resource path
      local_var_path = '/phonebook/contacts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'groupIds'] = @api_client.build_collection_param(opts[:'group_ids'], :multi) if !opts[:'group_ids'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ContactListEnvelope'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"ContactsApi.fetch_contacts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#fetch_contacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Removes a contact from a group
    # @param group_id [String] String in UUID format
    # @param phone [String] A phone number
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def remove_contact_from_group(group_id, phone, opts = {})
      remove_contact_from_group_with_http_info(group_id, phone, opts)
      nil
    end

    # Removes a contact from a group
    # @param group_id [String] String in UUID format
    # @param phone [String] A phone number
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def remove_contact_from_group_with_http_info(group_id, phone, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.remove_contact_from_group ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling ContactsApi.remove_contact_from_group"
      end
      # verify the required parameter 'phone' is set
      if @api_client.config.client_side_validation && phone.nil?
        fail ArgumentError, "Missing the required parameter 'phone' when calling ContactsApi.remove_contact_from_group"
      end
      # resource path
      local_var_path = '/phonebook/groups/{groupId}/contacts/{phone}'.sub('{' + 'groupId' + '}', CGI.escape(group_id.to_s)).sub('{' + 'phone' + '}', CGI.escape(phone.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"ContactsApi.remove_contact_from_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#remove_contact_from_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a contact
    # @param phone [String] A phone number
    # @param contact_update_fields [ContactUpdateFields] 
    # @param [Hash] opts the optional parameters
    # @return [ContactEnvelope]
    def update_contact(phone, contact_update_fields, opts = {})
      data, _status_code, _headers = update_contact_with_http_info(phone, contact_update_fields, opts)
      data
    end

    # Updates a contact
    # @param phone [String] A phone number
    # @param contact_update_fields [ContactUpdateFields] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactEnvelope, Integer, Hash)>] ContactEnvelope data, response status code and response headers
    def update_contact_with_http_info(phone, contact_update_fields, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.update_contact ...'
      end
      # verify the required parameter 'phone' is set
      if @api_client.config.client_side_validation && phone.nil?
        fail ArgumentError, "Missing the required parameter 'phone' when calling ContactsApi.update_contact"
      end
      # verify the required parameter 'contact_update_fields' is set
      if @api_client.config.client_side_validation && contact_update_fields.nil?
        fail ArgumentError, "Missing the required parameter 'contact_update_fields' when calling ContactsApi.update_contact"
      end
      # resource path
      local_var_path = '/phonebook/contacts/{phone}'.sub('{' + 'phone' + '}', CGI.escape(phone.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(contact_update_fields)

      # return_type
      return_type = opts[:debug_return_type] || 'ContactEnvelope'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"ContactsApi.update_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#update_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
