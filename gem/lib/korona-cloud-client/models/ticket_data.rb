=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.13.40
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'date'

module KoronaCloudClient
  class TicketData
    attr_accessor :valid_from

    attr_accessor :daily_valid_from

    attr_accessor :max_possible_admissions

    attr_accessor :valid_to

    attr_accessor :daily_valid_to

    attr_accessor :entry_gate_numbers

    attr_accessor :ticket_number_prefix

    attr_accessor :days_blocked_after_use

    attr_accessor :activation_delay

    attr_accessor :validity_period_after_purchase

    attr_accessor :validity_period_after_entrance

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'valid_from' => :'validFrom',
        :'daily_valid_from' => :'dailyValidFrom',
        :'max_possible_admissions' => :'maxPossibleAdmissions',
        :'valid_to' => :'validTo',
        :'daily_valid_to' => :'dailyValidTo',
        :'entry_gate_numbers' => :'entryGateNumbers',
        :'ticket_number_prefix' => :'ticketNumberPrefix',
        :'days_blocked_after_use' => :'daysBlockedAfterUse',
        :'activation_delay' => :'activationDelay',
        :'validity_period_after_purchase' => :'validityPeriodAfterPurchase',
        :'validity_period_after_entrance' => :'validityPeriodAfterEntrance'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'valid_from' => :'DateTime',
        :'daily_valid_from' => :'String',
        :'max_possible_admissions' => :'Integer',
        :'valid_to' => :'DateTime',
        :'daily_valid_to' => :'String',
        :'entry_gate_numbers' => :'Array<String>',
        :'ticket_number_prefix' => :'String',
        :'days_blocked_after_use' => :'Integer',
        :'activation_delay' => :'TimePeriod',
        :'validity_period_after_purchase' => :'TimePeriod',
        :'validity_period_after_entrance' => :'TimePeriod'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `KoronaCloudClient::TicketData` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KoronaCloudClient::TicketData`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'valid_from')
        self.valid_from = attributes[:'valid_from']
      end

      if attributes.key?(:'daily_valid_from')
        self.daily_valid_from = attributes[:'daily_valid_from']
      end

      if attributes.key?(:'max_possible_admissions')
        self.max_possible_admissions = attributes[:'max_possible_admissions']
      end

      if attributes.key?(:'valid_to')
        self.valid_to = attributes[:'valid_to']
      end

      if attributes.key?(:'daily_valid_to')
        self.daily_valid_to = attributes[:'daily_valid_to']
      end

      if attributes.key?(:'entry_gate_numbers')
        if (value = attributes[:'entry_gate_numbers']).is_a?(Array)
          self.entry_gate_numbers = value
        end
      end

      if attributes.key?(:'ticket_number_prefix')
        self.ticket_number_prefix = attributes[:'ticket_number_prefix']
      end

      if attributes.key?(:'days_blocked_after_use')
        self.days_blocked_after_use = attributes[:'days_blocked_after_use']
      end

      if attributes.key?(:'activation_delay')
        self.activation_delay = attributes[:'activation_delay']
      end

      if attributes.key?(:'validity_period_after_purchase')
        self.validity_period_after_purchase = attributes[:'validity_period_after_purchase']
      end

      if attributes.key?(:'validity_period_after_entrance')
        self.validity_period_after_entrance = attributes[:'validity_period_after_entrance']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          valid_from == o.valid_from &&
          daily_valid_from == o.daily_valid_from &&
          max_possible_admissions == o.max_possible_admissions &&
          valid_to == o.valid_to &&
          daily_valid_to == o.daily_valid_to &&
          entry_gate_numbers == o.entry_gate_numbers &&
          ticket_number_prefix == o.ticket_number_prefix &&
          days_blocked_after_use == o.days_blocked_after_use &&
          activation_delay == o.activation_delay &&
          validity_period_after_purchase == o.validity_period_after_purchase &&
          validity_period_after_entrance == o.validity_period_after_entrance
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [valid_from, daily_valid_from, max_possible_admissions, valid_to, daily_valid_to, entry_gate_numbers, ticket_number_prefix, days_blocked_after_use, activation_delay, validity_period_after_purchase, validity_period_after_entrance].hash
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
      when :Boolean
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
        KoronaCloudClient.const_get(type).build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
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