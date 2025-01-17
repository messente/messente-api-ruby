=begin
#Messente API

#[Messente](https://messente.com) is a global provider of messaging and user verification services.  * Send and receive SMS, Viber, WhatsApp and Telegram messages. * Manage contacts and groups. * Fetch detailed info about phone numbers. * Blacklist phone numbers to make sure you're not sending any unwanted messages.  Messente builds [tools](https://messente.com/documentation) to help organizations connect their services to people anywhere in the world.

The version of the OpenAPI document: 2.0.0
Contact: messente@messente.com
Generated by: https://openapi-generator.tech
Generator version: 7.6.0

=end

require 'date'
require 'time'

module MessenteApi
  class ErrorCodeStatistics
    N100 = "100".freeze
    N103 = "103".freeze
    N104 = "104".freeze
    N105 = "105".freeze

    def self.all_vars
      @all_vars ||= [N100, N103, N104, N105].freeze
    end

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
      return value if ErrorCodeStatistics.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ErrorCodeStatistics"
    end
  end
end
