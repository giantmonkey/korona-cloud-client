=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 3.1.64
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'date'
require 'time'

module KoronaCloudClient
  class OrganizationalUnit
    # indicates whether the object is active for use or not
    attr_accessor :active

    # global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
    attr_accessor :id

    # the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers.
    attr_accessor :revision

    # number of the object, like it is set in backoffice; will be removed when active=false
    attr_accessor :number

    attr_accessor :address

    attr_accessor :cost_center

    attr_accessor :economic_zone

    attr_accessor :eh_number

    attr_accessor :identification

    attr_accessor :name

    attr_accessor :opening_hours

    attr_accessor :parent_organizational_unit

    attr_accessor :price_group

    attr_accessor :warehouse

    attr_accessor :org_from_order

    attr_accessor :receipt_share_secret

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'active' => :'active',
        :'id' => :'id',
        :'revision' => :'revision',
        :'number' => :'number',
        :'address' => :'address',
        :'cost_center' => :'costCenter',
        :'economic_zone' => :'economicZone',
        :'eh_number' => :'ehNumber',
        :'identification' => :'identification',
        :'name' => :'name',
        :'opening_hours' => :'openingHours',
        :'parent_organizational_unit' => :'parentOrganizationalUnit',
        :'price_group' => :'priceGroup',
        :'warehouse' => :'warehouse',
        :'org_from_order' => :'orgFromOrder',
        :'receipt_share_secret' => :'receiptShareSecret'
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
        :'address' => :'AddressInformation',
        :'cost_center' => :'ModelReference',
        :'economic_zone' => :'ModelReference',
        :'eh_number' => :'Integer',
        :'identification' => :'CompanyIdentification',
        :'name' => :'String',
        :'opening_hours' => :'Array<OpeningHours>',
        :'parent_organizational_unit' => :'ModelReference',
        :'price_group' => :'ModelReference',
        :'warehouse' => :'Boolean',
        :'org_from_order' => :'Boolean',
        :'receipt_share_secret' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `KoronaCloudClient::OrganizationalUnit` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KoronaCloudClient::OrganizationalUnit`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'cost_center')
        self.cost_center = attributes[:'cost_center']
      end

      if attributes.key?(:'economic_zone')
        self.economic_zone = attributes[:'economic_zone']
      end

      if attributes.key?(:'eh_number')
        self.eh_number = attributes[:'eh_number']
      end

      if attributes.key?(:'identification')
        self.identification = attributes[:'identification']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'opening_hours')
        if (value = attributes[:'opening_hours']).is_a?(Array)
          self.opening_hours = value
        end
      end

      if attributes.key?(:'parent_organizational_unit')
        self.parent_organizational_unit = attributes[:'parent_organizational_unit']
      end

      if attributes.key?(:'price_group')
        self.price_group = attributes[:'price_group']
      end

      if attributes.key?(:'warehouse')
        self.warehouse = attributes[:'warehouse']
      end

      if attributes.key?(:'org_from_order')
        self.org_from_order = attributes[:'org_from_order']
      end

      if attributes.key?(:'receipt_share_secret')
        self.receipt_share_secret = attributes[:'receipt_share_secret']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @name.nil?
      true
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
          address == o.address &&
          cost_center == o.cost_center &&
          economic_zone == o.economic_zone &&
          eh_number == o.eh_number &&
          identification == o.identification &&
          name == o.name &&
          opening_hours == o.opening_hours &&
          parent_organizational_unit == o.parent_organizational_unit &&
          price_group == o.price_group &&
          warehouse == o.warehouse &&
          org_from_order == o.org_from_order &&
          receipt_share_secret == o.receipt_share_secret
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [active, id, revision, number, address, cost_center, economic_zone, eh_number, identification, name, opening_hours, parent_organizational_unit, price_group, warehouse, org_from_order, receipt_share_secret].hash
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
