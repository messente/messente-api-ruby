=begin
#Messente API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: 0.0.1
Contact: messente@messente.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta2

=end

require 'date'

module MessenteApi
  class Status
    
    ACK = 'ACK'.freeze
    DELIVRD = 'DELIVRD'.freeze
    UNDELIV = 'UNDELIV'.freeze
    FAILED = 'FAILED'.freeze
    UNKNOWN = 'UNKNOWN'.freeze
    ACCEPTD = 'ACCEPTD'.freeze
    REJECTD = 'REJECTD'.freeze
    DELETED = 'DELETED'.freeze
    EXPIRED = 'EXPIRED'.freeze
    NACK = 'NACK'.freeze
    SEEN = 'SEEN'.freeze

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
