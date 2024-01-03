=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 3.2-SNAPSHOT
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'date'
require 'time'

module KoronaCloudClient
  class PromotionValidity
    attr_accessor :date_interval

    attr_accessor :days_of_month

    attr_accessor :days_of_week

    attr_accessor :organizational_units

    attr_accessor :time_of_day_interval

    attr_accessor :org_selection_mode

    attr_accessor :pos_types

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
        :'date_interval' => :'dateInterval',
        :'days_of_month' => :'daysOfMonth',
        :'days_of_week' => :'daysOfWeek',
        :'organizational_units' => :'organizationalUnits',
        :'time_of_day_interval' => :'timeOfDayInterval',
        :'org_selection_mode' => :'orgSelectionMode',
        :'pos_types' => :'posTypes'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'date_interval' => :'DateInterval',
        :'days_of_month' => :'Array<Integer>',
        :'days_of_week' => :'Array<String>',
        :'organizational_units' => :'Array<ModelReference>',
        :'time_of_day_interval' => :'TimeOfDayInterval',
        :'org_selection_mode' => :'String',
        :'pos_types' => :'Array<String>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `KoronaCloudClient::PromotionValidity` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KoronaCloudClient::PromotionValidity`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'date_interval')
        self.date_interval = attributes[:'date_interval']
      end

      if attributes.key?(:'days_of_month')
        if (value = attributes[:'days_of_month']).is_a?(Array)
          self.days_of_month = value
        end
      end

      if attributes.key?(:'days_of_week')
        if (value = attributes[:'days_of_week']).is_a?(Array)
          self.days_of_week = value
        end
      end

      if attributes.key?(:'organizational_units')
        if (value = attributes[:'organizational_units']).is_a?(Array)
          self.organizational_units = value
        end
      end

      if attributes.key?(:'time_of_day_interval')
        self.time_of_day_interval = attributes[:'time_of_day_interval']
      end

      if attributes.key?(:'org_selection_mode')
        self.org_selection_mode = attributes[:'org_selection_mode']
      end

      if attributes.key?(:'pos_types')
        if (value = attributes[:'pos_types']).is_a?(Array)
          self.pos_types = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      org_selection_mode_validator = EnumAttributeValidator.new('String', ["INCLUDE", "EXCLUDE"])
      return false unless org_selection_mode_validator.valid?(@org_selection_mode)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] days_of_month Value to be assigned
    def days_of_month=(days_of_month)
      if days_of_month.nil?
        fail ArgumentError, 'days_of_month cannot be nil'
      end

      @days_of_month = days_of_month
    end

    # Custom attribute writer method with validation
    # @param [Object] organizational_units Value to be assigned
    def organizational_units=(organizational_units)
      if organizational_units.nil?
        fail ArgumentError, 'organizational_units cannot be nil'
      end

      @organizational_units = organizational_units
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] org_selection_mode Object to be assigned
    def org_selection_mode=(org_selection_mode)
      validator = EnumAttributeValidator.new('String', ["INCLUDE", "EXCLUDE"])
      unless validator.valid?(org_selection_mode)
        fail ArgumentError, "invalid value for \"org_selection_mode\", must be one of #{validator.allowable_values}."
      end
      @org_selection_mode = org_selection_mode
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          date_interval == o.date_interval &&
          days_of_month == o.days_of_month &&
          days_of_week == o.days_of_week &&
          organizational_units == o.organizational_units &&
          time_of_day_interval == o.time_of_day_interval &&
          org_selection_mode == o.org_selection_mode &&
          pos_types == o.pos_types
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [date_interval, days_of_month, days_of_week, organizational_units, time_of_day_interval, org_selection_mode, pos_types].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
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
        # models (e.g. Pet) or oneOf
        klass = KoronaCloudClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
