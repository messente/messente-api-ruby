=begin
#Messente API

#[Messente](https://messente.com) is a global provider of messaging and user verification services.  * Send and receive SMS, Viber, WhatsApp and Telegram messages. * Manage contacts and groups. * Fetch detailed info about phone numbers. * Blacklist phone numbers to make sure you're not sending any unwanted messages.  Messente builds [tools](https://messente.com/documentation) to help organizations connect their services to people anywhere in the world.

The version of the OpenAPI document: 1.4.0
Contact: messente@messente.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'date'

module MessenteApi
  class Status
    ACK = "ACK".freeze
    DELIVRD = "DELIVRD".freeze
    UNDELIV = "UNDELIV".freeze
    FAILED = "FAILED".freeze
    UNKNOWN = "UNKNOWN".freeze
    ACCEPTD = "ACCEPTD".freeze
    REJECTD = "REJECTD".freeze
    DELETED = "DELETED".freeze
    EXPIRED = "EXPIRED".freeze
    NACK = "NACK".freeze
    SEEN = "SEEN".freeze

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
      constantValues = Status.constants.select { |c| Status::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #Status" if constantValues.empty?
      value
    end
  end
end
