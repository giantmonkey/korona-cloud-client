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
  class Inventory
    # indicates whether the object is active for use or not
    attr_accessor :active

    # global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
    attr_accessor :id

    # the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers.
    attr_accessor :revision

    # number of the object, like it is set in backoffice; will be removed when active=false
    attr_accessor :number

    attr_accessor :automatic_booking

    # only if isAutomaticBooking=true
    attr_accessor :automatic_booking_after_days

    attr_accessor :check_product_assortment_validity

    attr_accessor :check_product_listing

    # yyyy-MM-dd'T'HH:mm:ssXXX
    attr_accessor :create_time

    attr_accessor :description

    # only if type=PERPETUAL_INVENTORY
    attr_accessor :execution_days

    # yyyy-MM-dd'T'HH:mm:ssXXX
    attr_accessor :execution_time

    attr_accessor :has_booked_receipts

    # only if type=ANNUAL_INVENTORY | INVENTORY_IRREGULARITY
    attr_accessor :max_products_per_list

    # only if type=ANNUAL_INVENTORY | INVENTORY_IRREGULARITY
    attr_accessor :one_commodity_group_per_inventory_list

    # only if type=INVENTORY_IRREGULARITY
    attr_accessor :only_negative_product_stocks

    attr_accessor :organizational_units

    attr_accessor :product_filter

    attr_accessor :type

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
        :'active' => :'active',
        :'id' => :'id',
        :'revision' => :'revision',
        :'number' => :'number',
        :'automatic_booking' => :'automaticBooking',
        :'automatic_booking_after_days' => :'automaticBookingAfterDays',
        :'check_product_assortment_validity' => :'checkProductAssortmentValidity',
        :'check_product_listing' => :'checkProductListing',
        :'create_time' => :'createTime',
        :'description' => :'description',
        :'execution_days' => :'executionDays',
        :'execution_time' => :'executionTime',
        :'has_booked_receipts' => :'hasBookedReceipts',
        :'max_products_per_list' => :'maxProductsPerList',
        :'one_commodity_group_per_inventory_list' => :'oneCommodityGroupPerInventoryList',
        :'only_negative_product_stocks' => :'onlyNegativeProductStocks',
        :'organizational_units' => :'organizationalUnits',
        :'product_filter' => :'productFilter',
        :'type' => :'type'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'active' => :'Boolean',
        :'id' => :'String',
        :'revision' => :'Integer',
        :'number' => :'String',
        :'automatic_booking' => :'Boolean',
        :'automatic_booking_after_days' => :'Integer',
        :'check_product_assortment_validity' => :'Boolean',
        :'check_product_listing' => :'Boolean',
        :'create_time' => :'Time',
        :'description' => :'String',
        :'execution_days' => :'Array<String>',
        :'execution_time' => :'Time',
        :'has_booked_receipts' => :'Boolean',
        :'max_products_per_list' => :'Integer',
        :'one_commodity_group_per_inventory_list' => :'Boolean',
        :'only_negative_product_stocks' => :'Boolean',
        :'organizational_units' => :'Array<ModelReference>',
        :'product_filter' => :'String',
        :'type' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `KoronaCloudClient::Inventory` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KoronaCloudClient::Inventory`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'revision')
        self.revision = attributes[:'revision']
      end

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.key?(:'automatic_booking')
        self.automatic_booking = attributes[:'automatic_booking']
      end

      if attributes.key?(:'automatic_booking_after_days')
        self.automatic_booking_after_days = attributes[:'automatic_booking_after_days']
      end

      if attributes.key?(:'check_product_assortment_validity')
        self.check_product_assortment_validity = attributes[:'check_product_assortment_validity']
      end

      if attributes.key?(:'check_product_listing')
        self.check_product_listing = attributes[:'check_product_listing']
      end

      if attributes.key?(:'create_time')
        self.create_time = attributes[:'create_time']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'execution_days')
        if (value = attributes[:'execution_days']).is_a?(Array)
          self.execution_days = value
        end
      end

      if attributes.key?(:'execution_time')
        self.execution_time = attributes[:'execution_time']
      end

      if attributes.key?(:'has_booked_receipts')
        self.has_booked_receipts = attributes[:'has_booked_receipts']
      end

      if attributes.key?(:'max_products_per_list')
        self.max_products_per_list = attributes[:'max_products_per_list']
      end

      if attributes.key?(:'one_commodity_group_per_inventory_list')
        self.one_commodity_group_per_inventory_list = attributes[:'one_commodity_group_per_inventory_list']
      end

      if attributes.key?(:'only_negative_product_stocks')
        self.only_negative_product_stocks = attributes[:'only_negative_product_stocks']
      end

      if attributes.key?(:'organizational_units')
        if (value = attributes[:'organizational_units']).is_a?(Array)
          self.organizational_units = value
        end
      end

      if attributes.key?(:'product_filter')
        self.product_filter = attributes[:'product_filter']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
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
      product_filter_validator = EnumAttributeValidator.new('String', ["ACTIVE", "ALL", "DEACTIVATED"])
      return false unless product_filter_validator.valid?(@product_filter)
      type_validator = EnumAttributeValidator.new('String', ["ANNUAL_INVENTORY", "INVENTORY_IRREGULARITY", "INVENTORY_SAMPLING", "PERPETUAL_INVENTORY"])
      return false unless type_validator.valid?(@type)
      true
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
    # @param [Object] product_filter Object to be assigned
    def product_filter=(product_filter)
      validator = EnumAttributeValidator.new('String', ["ACTIVE", "ALL", "DEACTIVATED"])
      unless validator.valid?(product_filter)
        fail ArgumentError, "invalid value for \"product_filter\", must be one of #{validator.allowable_values}."
      end
      @product_filter = product_filter
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["ANNUAL_INVENTORY", "INVENTORY_IRREGULARITY", "INVENTORY_SAMPLING", "PERPETUAL_INVENTORY"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          active == o.active &&
          id == o.id &&
          revision == o.revision &&
          number == o.number &&
          automatic_booking == o.automatic_booking &&
          automatic_booking_after_days == o.automatic_booking_after_days &&
          check_product_assortment_validity == o.check_product_assortment_validity &&
          check_product_listing == o.check_product_listing &&
          create_time == o.create_time &&
          description == o.description &&
          execution_days == o.execution_days &&
          execution_time == o.execution_time &&
          has_booked_receipts == o.has_booked_receipts &&
          max_products_per_list == o.max_products_per_list &&
          one_commodity_group_per_inventory_list == o.one_commodity_group_per_inventory_list &&
          only_negative_product_stocks == o.only_negative_product_stocks &&
          organizational_units == o.organizational_units &&
          product_filter == o.product_filter &&
          type == o.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [active, id, revision, number, automatic_booking, automatic_booking_after_days, check_product_assortment_validity, check_product_listing, create_time, description, execution_days, execution_time, has_booked_receipts, max_products_per_list, one_commodity_group_per_inventory_list, only_negative_product_stocks, organizational_units, product_filter, type].hash
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
