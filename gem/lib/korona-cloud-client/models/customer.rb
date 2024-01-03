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
  class Customer
    # indicates whether the object is active for use or not
    attr_accessor :active

    # global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
    attr_accessor :id

    # the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers.
    attr_accessor :revision

    # number of the object, like it is set in backoffice; will be removed when active=false
    attr_accessor :number

    attr_accessor :address

    # yyyy-MM-dd'T'HH:mm:ssXXX
    attr_accessor :birthday

    attr_accessor :cards

    attr_accessor :company

    attr_accessor :customer_group

    attr_accessor :economic_zone

    attr_accessor :email

    attr_accessor :external_id

    attr_accessor :firstname

    attr_accessor :gender

    attr_accessor :informations

    attr_accessor :lastname

    attr_accessor :phone

    attr_accessor :tax_id

    attr_accessor :privacy_policy_accepted

    attr_accessor :marketing_contact_permitted

    # yyyy-MM-dd
    attr_accessor :create_time

    # yyyy-MM-dd
    attr_accessor :last_receipt_time

    attr_accessor :use_email_for_digital_receipt

    attr_accessor :lock_delivery_note_sales

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
        :'address' => :'address',
        :'birthday' => :'birthday',
        :'cards' => :'cards',
        :'company' => :'company',
        :'customer_group' => :'customerGroup',
        :'economic_zone' => :'economicZone',
        :'email' => :'email',
        :'external_id' => :'externalId',
        :'firstname' => :'firstname',
        :'gender' => :'gender',
        :'informations' => :'informations',
        :'lastname' => :'lastname',
        :'phone' => :'phone',
        :'tax_id' => :'taxId',
        :'privacy_policy_accepted' => :'privacyPolicyAccepted',
        :'marketing_contact_permitted' => :'marketingContactPermitted',
        :'create_time' => :'createTime',
        :'last_receipt_time' => :'lastReceiptTime',
        :'use_email_for_digital_receipt' => :'useEmailForDigitalReceipt',
        :'lock_delivery_note_sales' => :'lockDeliveryNoteSales'
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
        :'birthday' => :'Time',
        :'cards' => :'Array<CustomerCard>',
        :'company' => :'String',
        :'customer_group' => :'ModelReference',
        :'economic_zone' => :'ModelReference',
        :'email' => :'String',
        :'external_id' => :'String',
        :'firstname' => :'String',
        :'gender' => :'String',
        :'informations' => :'Array<CustomerInformation>',
        :'lastname' => :'String',
        :'phone' => :'String',
        :'tax_id' => :'String',
        :'privacy_policy_accepted' => :'Boolean',
        :'marketing_contact_permitted' => :'Boolean',
        :'create_time' => :'Date',
        :'last_receipt_time' => :'Date',
        :'use_email_for_digital_receipt' => :'Boolean',
        :'lock_delivery_note_sales' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `KoronaCloudClient::Customer` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KoronaCloudClient::Customer`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'birthday')
        self.birthday = attributes[:'birthday']
      end

      if attributes.key?(:'cards')
        if (value = attributes[:'cards']).is_a?(Array)
          self.cards = value
        end
      end

      if attributes.key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.key?(:'customer_group')
        self.customer_group = attributes[:'customer_group']
      end

      if attributes.key?(:'economic_zone')
        self.economic_zone = attributes[:'economic_zone']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'external_id')
        self.external_id = attributes[:'external_id']
      end

      if attributes.key?(:'firstname')
        self.firstname = attributes[:'firstname']
      end

      if attributes.key?(:'gender')
        self.gender = attributes[:'gender']
      end

      if attributes.key?(:'informations')
        if (value = attributes[:'informations']).is_a?(Array)
          self.informations = value
        end
      end

      if attributes.key?(:'lastname')
        self.lastname = attributes[:'lastname']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.key?(:'tax_id')
        self.tax_id = attributes[:'tax_id']
      end

      if attributes.key?(:'privacy_policy_accepted')
        self.privacy_policy_accepted = attributes[:'privacy_policy_accepted']
      end

      if attributes.key?(:'marketing_contact_permitted')
        self.marketing_contact_permitted = attributes[:'marketing_contact_permitted']
      end

      if attributes.key?(:'create_time')
        self.create_time = attributes[:'create_time']
      end

      if attributes.key?(:'last_receipt_time')
        self.last_receipt_time = attributes[:'last_receipt_time']
      end

      if attributes.key?(:'use_email_for_digital_receipt')
        self.use_email_for_digital_receipt = attributes[:'use_email_for_digital_receipt']
      end

      if attributes.key?(:'lock_delivery_note_sales')
        self.lock_delivery_note_sales = attributes[:'lock_delivery_note_sales']
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
      gender_validator = EnumAttributeValidator.new('String', ["MALE", "FEMALE"])
      return false unless gender_validator.valid?(@gender)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] cards Value to be assigned
    def cards=(cards)
      if cards.nil?
        fail ArgumentError, 'cards cannot be nil'
      end

      @cards = cards
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gender Object to be assigned
    def gender=(gender)
      validator = EnumAttributeValidator.new('String', ["MALE", "FEMALE"])
      unless validator.valid?(gender)
        fail ArgumentError, "invalid value for \"gender\", must be one of #{validator.allowable_values}."
      end
      @gender = gender
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
          birthday == o.birthday &&
          cards == o.cards &&
          company == o.company &&
          customer_group == o.customer_group &&
          economic_zone == o.economic_zone &&
          email == o.email &&
          external_id == o.external_id &&
          firstname == o.firstname &&
          gender == o.gender &&
          informations == o.informations &&
          lastname == o.lastname &&
          phone == o.phone &&
          tax_id == o.tax_id &&
          privacy_policy_accepted == o.privacy_policy_accepted &&
          marketing_contact_permitted == o.marketing_contact_permitted &&
          create_time == o.create_time &&
          last_receipt_time == o.last_receipt_time &&
          use_email_for_digital_receipt == o.use_email_for_digital_receipt &&
          lock_delivery_note_sales == o.lock_delivery_note_sales
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [active, id, revision, number, address, birthday, cards, company, customer_group, economic_zone, email, external_id, firstname, gender, informations, lastname, phone, tax_id, privacy_policy_accepted, marketing_contact_permitted, create_time, last_receipt_time, use_email_for_digital_receipt, lock_delivery_note_sales].hash
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
