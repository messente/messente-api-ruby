=begin
#Messente API

#[Messente](https://messente.com) is a global provider of messaging and user verification services.  * Send and receive SMS, Viber, WhatsApp and Telegram messages. * Manage contacts and groups. * Fetch detailed info about phone numbers. * Blacklist phone numbers to make sure you're not sending any unwanted messages.  Messente builds [tools](https://messente.com/documentation) to help organizations connect their services to people anywhere in the world.

The version of the OpenAPI document: 1.3.0
Contact: messente@messente.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

# Common files
require 'messente_api/api_client'
require 'messente_api/api_error'
require 'messente_api/version'
require 'messente_api/configuration'

# Models
require 'messente_api/models/channel'
require 'messente_api/models/contact_envelope'
require 'messente_api/models/contact_fields'
require 'messente_api/models/contact_list_envelope'
require 'messente_api/models/contact_response_fields'
require 'messente_api/models/contact_update_fields'
require 'messente_api/models/delivery_report_response'
require 'messente_api/models/delivery_result'
require 'messente_api/models/error_code_omnichannel'
require 'messente_api/models/error_code_omnichannel_machine'
require 'messente_api/models/error_code_phonebook'
require 'messente_api/models/error_code_statistics'
require 'messente_api/models/error_item_number_lookup'
require 'messente_api/models/error_item_number_lookup_error'
require 'messente_api/models/error_item_omnichannel'
require 'messente_api/models/error_item_phonebook'
require 'messente_api/models/error_item_statistics'
require 'messente_api/models/error_number_lookup'
require 'messente_api/models/error_omnichannel'
require 'messente_api/models/error_phonebook'
require 'messente_api/models/error_statistics'
require 'messente_api/models/error_title_omnichannel'
require 'messente_api/models/error_title_phonebook'
require 'messente_api/models/fetch_blacklist_success'
require 'messente_api/models/group_envelope'
require 'messente_api/models/group_list_envelope'
require 'messente_api/models/group_name'
require 'messente_api/models/group_response_fields'
require 'messente_api/models/message_result'
require 'messente_api/models/mobile_network'
require 'messente_api/models/number_to_blacklist'
require 'messente_api/models/numbers_to_investigate'
require 'messente_api/models/omni_message_create_success_response'
require 'messente_api/models/omnimessage'
require 'messente_api/models/priority'
require 'messente_api/models/sms'
require 'messente_api/models/statistics_report'
require 'messente_api/models/statistics_report_settings'
require 'messente_api/models/statistics_report_success'
require 'messente_api/models/status'
require 'messente_api/models/sync_number_lookup_result'
require 'messente_api/models/sync_number_lookup_success'
require 'messente_api/models/telegram'
require 'messente_api/models/text_store'
require 'messente_api/models/viber'
require 'messente_api/models/whats_app'
require 'messente_api/models/whats_app_audio'
require 'messente_api/models/whats_app_document'
require 'messente_api/models/whats_app_image'
require 'messente_api/models/whats_app_text'

# APIs
require 'messente_api/api/blacklist_api'
require 'messente_api/api/contacts_api'
require 'messente_api/api/delivery_report_api'
require 'messente_api/api/groups_api'
require 'messente_api/api/number_lookup_api'
require 'messente_api/api/omnimessage_api'
require 'messente_api/api/statistics_api'

module MessenteApi
  class << self
    # Customize default settings for the SDK using block.
    #   MessenteApi.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
