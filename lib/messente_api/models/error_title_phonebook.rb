=begin
#Messente API

#[Messente](https://messente.com) is a global provider of messaging and user verification services.  * Send and receive SMS, Viber, WhatsApp and Telegram messages. * Manage contacts and groups. * Fetch detailed info about phone numbers. * Blacklist phone numbers to make sure you're not sending any unwanted messages.  Messente builds [tools](https://messente.com/documentation) to help organizations connect their services to people anywhere in the world.

The version of the OpenAPI document: 1.2.0
Contact: messente@messente.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'date'

module MessenteApi
  class ErrorTitlePhonebook
    INVALID_DATA = "Invalid data".freeze
    UNAUTHORIZED = "Unauthorized".freeze
    MISSING_RESOURCE = "Missing resource".freeze
    CONFLICT = "Conflict".freeze
    CLIENT_ERROR = "Client error".freeze
    GENERAL_ERROR = "General error".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ErrorTitlePhonebook.constants.select { |c| ErrorTitlePhonebook::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ErrorTitlePhonebook" if constantValues.empty?
      value
    end
  end
end
