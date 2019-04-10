=begin
#Messente API

#[Messente](https://messente.com) is a global provider of messaging and user verification services. Use Messente API library to send and receive SMS, Viber and WhatsApp messages, blacklist phone numbers to make sure you're not sending any unwanted messages, manage contacts and groups.  Messente builds [tools](https://messente.com/documentation) to help organizations connect their services to people anywhere in the world.

OpenAPI spec version: 0.0.1
Contact: messente@messente.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta2

=end

require 'date'

module MessenteApi
  # Viber message content
  class Viber
    # Phone number or alphanumeric sender name
    attr_accessor :sender

    # After how many minutes this channel is considered as failed and the next channel is attempted
    attr_accessor :validity

    # Plaintext content for Viber
    attr_accessor :text

    # URL for the embedded image.    Valid combinations:    1) image_url,    2) text, image_url, button_url, button_text
    attr_accessor :image_url

    # URL of the button, must be specified along with ''text'', ''button_text'' and ''image_url'' (optional)
    attr_accessor :button_url

    # Must be specified along with ''text'', ''button_url'', ''button_text'', ''image_url'' (optional)
    attr_accessor :button_text

    attr_accessor :channel

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'sender' => :'sender',
        :'validity' => :'validity',
        :'text' => :'text',
        :'image_url' => :'image_url',
        :'button_url' => :'button_url',
        :'button_text' => :'button_text',
        :'channel' => :'channel'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'sender' => :'String',
        :'validity' => :'Integer',
        :'text' => :'String',
        :'image_url' => :'String',
        :'button_url' => :'String',
        :'button_text' => :'String',
        :'channel' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'sender')
        self.sender = attributes[:'sender']
      end

      if attributes.has_key?(:'validity')
        self.validity = attributes[:'validity']
      end

      if attributes.has_key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.has_key?(:'image_url')
        self.image_url = attributes[:'image_url']
      end

      if attributes.has_key?(:'button_url')
        self.button_url = attributes[:'button_url']
      end

      if attributes.has_key?(:'button_text')
        self.button_text = attributes[:'button_text']
      end

      if attributes.has_key?(:'channel')
        self.channel = attributes[:'channel']
      else
        self.channel = 'viber'
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @channel.nil?
        invalid_properties.push('invalid value for "channel", channel cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @channel.nil?
      channel_validator = EnumAttributeValidator.new('String', ['viber'])
      return false unless channel_validator.valid?(@channel)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] channel Object to be assigned
    def channel=(channel)
      validator = EnumAttributeValidator.new('String', ['viber'])
      unless validator.valid?(channel)
        fail ArgumentError, 'invalid value for "channel", must be one of #{validator.allowable_values}.'
      end
      @channel = channel
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          sender == o.sender &&
          validity == o.validity &&
          text == o.text &&
          image_url == o.image_url &&
          button_url == o.button_url &&
          button_text == o.button_text &&
          channel == o.channel
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [sender, validity, text, image_url, button_url, button_text, channel].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        MessenteApi.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
