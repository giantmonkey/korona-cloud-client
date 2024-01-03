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
  class PosButtonFunction
    attr_accessor :product

    attr_accessor :macro

    attr_accessor :payment_method

    attr_accessor :button_layout

    attr_accessor :info_text

    attr_accessor :customer_group

    attr_accessor :account

    attr_accessor :type

    attr_accessor :tag

    attr_accessor :button_status

    attr_accessor :external_system_call

    attr_accessor :internal_system_call_type

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
        :'product' => :'product',
        :'macro' => :'macro',
        :'payment_method' => :'paymentMethod',
        :'button_layout' => :'buttonLayout',
        :'info_text' => :'infoText',
        :'customer_group' => :'customerGroup',
        :'account' => :'account',
        :'type' => :'type',
        :'tag' => :'tag',
        :'button_status' => :'buttonStatus',
        :'external_system_call' => :'externalSystemCall',
        :'internal_system_call_type' => :'internalSystemCallType'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'product' => :'ModelReference',
        :'macro' => :'String',
        :'payment_method' => :'ModelReference',
        :'button_layout' => :'ModelReference',
        :'info_text' => :'ModelReference',
        :'customer_group' => :'ModelReference',
        :'account' => :'ModelReference',
        :'type' => :'String',
        :'tag' => :'ModelReference',
        :'button_status' => :'String',
        :'external_system_call' => :'ModelReference',
        :'internal_system_call_type' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `KoronaCloudClient::PosButtonFunction` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KoronaCloudClient::PosButtonFunction`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'product')
        self.product = attributes[:'product']
      end

      if attributes.key?(:'macro')
        self.macro = attributes[:'macro']
      end

      if attributes.key?(:'payment_method')
        self.payment_method = attributes[:'payment_method']
      end

      if attributes.key?(:'button_layout')
        self.button_layout = attributes[:'button_layout']
      end

      if attributes.key?(:'info_text')
        self.info_text = attributes[:'info_text']
      end

      if attributes.key?(:'customer_group')
        self.customer_group = attributes[:'customer_group']
      end

      if attributes.key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'tag')
        self.tag = attributes[:'tag']
      end

      if attributes.key?(:'button_status')
        self.button_status = attributes[:'button_status']
      end

      if attributes.key?(:'external_system_call')
        self.external_system_call = attributes[:'external_system_call']
      end

      if attributes.key?(:'internal_system_call_type')
        self.internal_system_call_type = attributes[:'internal_system_call_type']
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
      macro_validator = EnumAttributeValidator.new('String', ["ADJUST_PAYMENT", "SELECT_ALL", "EXIT_APPLICATION", "APPLY_PAYMENT_TIP", "SHOW_PRODUCT_SEARCH", "TOGGLE_AUTO_RECEIPT_PRINT", "OPEN_RECEIPT_VIA_ORDER_NUMBER", "SHOW_RECEIPT_ARCHIVE", "COPY_TOTAL_TO_INPUT", "PRINT_TREAT_RECEIPT", "CANCEL_RECEIPT", "PARK_RECEIPT", "PRINT", "ENABLE_PRINT_PREVIEW", "DISABLE_PRINT_PREVIEW", "ENTER", "CLEAR_INPUT", "BACKSPACE", "MANUFACTURE", "BACKGROUND_IMAGE", "BALANCE", "BALANCE_POS", "OPEN_CASHDRAWER", "PRINT_POS_MONTH_REPORT", "PRINT_POS_REPORT", "PRINT_POS_WEEK_REPORT", "CASHIER_QUICK_CHANGE", "PRINT_CASHIER_REPORT", "CHANGE_CASHIER", "SHOW_KORONA_INFO", "COST_ACCOUNT", "CUSTOMER_GROUP", "DESELECT", "BIND_ITEMS", "ADD_FREE_INFO_TEXT", "REMOVE_INFO_TEXTS", "SPLIT_ITEMS", "TRANSFER_ITEMS", "ITEM_SEQUENCE", "ITEM_INFO_TEXT", "CHANGE_QUANTITY", "CHANGE_PRICE", "ITEM_DISCOUNT", "REOPEN_RECEIPT", "RETURN", "TOGGLE_QUICK_KEY_MODE", "SCROLL_UP", "SCROLL_DOWN", "SELECT", "VOID_ITEM", "VOID_RECEIPT", "FINISH_DAY", "KEY_0", "KEY_1", "KEY_2", "KEY_3", "KEY_4", "KEY_5", "KEY_6", "KEY_7", "KEY_8", "KEY_9", "KEY_COMMA", "KEY_PERIOD", "KEY_MULT", "KEY_MINUS", "SHOW_BUTTONLAYOUT", "TOTAL", "TOGGLE_SECTOR", "TOGGLE_SECTOR_DEFAULT", "TOGGLE_SECTOR_ALTERNATIV", "PAYMENT", "BIND_PAYMENTS", "RETRIEVE_MASTER_DATA", "SHOW_HANDHELD_MANAGER", "SHOW_TICKETCHECK", "SHOW_TABLEOVERVIEW", "SET_ORDER_NUMBER", "STOCK_RECEIPT", "INVENTORY_RECEIPT", "TIME_TRACKING", "SHOW_LABEL_PRINT_PAGE", "COPY_RECEIPT_DATA", "PRICE_INFO", "CHECK_PREPAID_ACCOUNT", "EVENT_SALES_PAGE", "EVENT_PRESALES_PAGE", "SET_CUSTOMER_NUMBER", "CUSTOMER_LOOKUP", "SHOW_CUSTOMER", "SHOW_RECEIPT_CUSTOMER", "REVISION", "PREPARATION_RECEIPT", "STOCK_RETURN", "PRINT_GIFT_RECEIPT", "SHOW_ITEM_INFO_TEXT_SELECTION", "SHOW_OPEN_STOCK_MANAGEMENT_RECEIPTS", "SAVE_STOCK_MANAGEMENT_RECEIPT", "PRODUCTTEXT_ALLERGENS", "PRODUCTTEXT_MANUAL", "PRODUCTTEXT_DESCRIPTION", "PRODUCTTEXT_INGREDIENTS", "PRODUCTTEXT_NUTRITIONAL_VALUE", "PRODUCTTEXT_CARE_INSTRUCTIONS", "PRODUCTTEXT_RECIPE", "PRODUCTTEXT_CERTIFICATE", "RESTART_POS", "SET_CUSTOMER_BY_NR", "CASHIER_PAUSE", "CASH_VOID", "CANCEL", "ZVT_ENDOFDAY", "ZVT_CLAIM", "ZVT_RELEASE", "CREDIT_AUTHORIZATION_TERMINAL_DIAGNOSIS", "CREDIT_AUTHORIZATION_TERMINAL_REPEAT_RECEIPT", "CREDIT_AUTHORIZATION_TERMINAL_INITIALZATION", "CREDIT_AUTHORIZATION_TERMINAL_CONFIGURATION", "CREATE_STORE_ORDERS", "LOAD_STORE_ORDERS", "CHANGE_BOOKING", "LIST_STOCKS_BY_PRODUCT", "FIND_BOOKING", "SET_RECEIPT_DISCOUNT_PERCENT", "SET_RECEIPT_DISCOUNT_SUBTRACTION", "BLOYAL_SNIPPET_FIND_CUSTOMER", "BLOYAL_SNIPPET_QUICK_SIGNUP", "BLOYAL_SNIPPET_APPLY_COUPON", "BLOYAL_SNIPPET_RECORD_VISIT", "BLOYAL_SNIPPET_VIEW_CUSTOMER", "BLOYAL_SNIPPET_CREATE_ORDER", "BLOYAL_SNIPPET_RETURN_ORDER", "BLOYAL_SNIPPET_CHECK_INVENTORY", "CLEAR_BUTTON_STATUS", "SWITCH_BUTTON_STATUS", "CROSS_SELLING", "TOGGLE_OSK", "LOAD_RECEIPT", "DEACTIVATE_OVERRIDE", "DENOMINATION_INPUT", "SWITCH_BLOYAL_STATE", "EXCHANGE_SALE", "RECEIPT_PRINT", "SHOW_RETURN_PAGE", "SHOW_RETURN_PAGE_WITH_CURRENT_RECEIPT", "CASH_CHECK", "ADVANCED_BOOKINGEDITING", "SHOW_PREAUTH_PAYMENTS", "SHOW_TAG_BUTTON_LAYOUT", "TARGET_PRICE_DISCOUNT", "APPLY_SPECIAL_OFFER", "SHOW_GODB_EXPORT", "SET_SERIAL", "CHANGE_ECONOMIC_ZONE", "CUSTOMER_ORDER_SEARCH", "CUSTOMER_ORDER_CREATE", "CUSTOMER_ORDER_EDIT", "ROUND_RECEIPT_TOTAL_DOWN", "SET_SALE_SELLER", "SWITCH_BATCH_PRINTING", "ACTIVATE_BATCH_PRINTING", "DEACTIVATE_BATCH_PRINTING", "DEACTIVATE_PRODUCER_PRINTING", "SET_PERCENTAGE_OF_RECEIPTTOTAL", "SHOW_PAYMENT_PAGE", "SET_COUPONING_CAMPAIGN_CARD", "EVENT_SALE", "EVENT_OVERVIEW_PRINT", "EVENT_OVERVIEW_SHOW", "CREATE_EVENT_RESOURCE", "KEY_UPPER_A", "KEY_UPPER_B", "KEY_UPPER_C", "KEY_UPPER_D", "KEY_UPPER_E", "KEY_UPPER_F", "KEY_UPPER_G", "KEY_UPPER_H", "KEY_UPPER_I", "KEY_UPPER_J", "KEY_UPPER_K", "KEY_UPPER_L", "KEY_UPPER_M", "KEY_UPPER_N", "KEY_UPPER_O", "KEY_UPPER_P", "KEY_UPPER_Q", "KEY_UPPER_R", "KEY_UPPER_S", "KEY_UPPER_T", "KEY_UPPER_U", "KEY_UPPER_V", "KEY_UPPER_W", "KEY_UPPER_X", "KEY_UPPER_Y", "KEY_UPPER_Z", "KEY_LOWER_A", "KEY_LOWER_B", "KEY_LOWER_C", "KEY_LOWER_D", "KEY_LOWER_E", "KEY_LOWER_F", "KEY_LOWER_G", "KEY_LOWER_H", "KEY_LOWER_I", "KEY_LOWER_J", "KEY_LOWER_K", "KEY_LOWER_L", "KEY_LOWER_M", "KEY_LOWER_N", "KEY_LOWER_O", "KEY_LOWER_P", "KEY_LOWER_Q", "KEY_LOWER_R", "KEY_LOWER_S", "KEY_LOWER_T", "KEY_LOWER_U", "KEY_LOWER_V", "KEY_LOWER_W", "KEY_LOWER_X", "KEY_LOWER_Y", "KEY_LOWER_Z", "RENTAL_SEARCH", "RENTAL_CREATE", "RENTAL_EDIT", "QUOTE_SEARCH", "QUOTE_CREATE", "QUOTE_EDIT", "DELIVERY_NOTE_SEARCH", "DELIVERY_NOTE_CREATE", "DELIVERY_NOTE_EDIT", "DEPOSIT_REFUNDMODE_SWITCH", "DEPOSIT_REFUNDMODE_ACTIVATE", "DEPOSIT_REFUNDMODE_DEACTIVATE", "RECORD_START_COMMAND_ID", "RECORT_END_COMMAND_ID", "ADD_SALEITEM_DISCOUNT", "ADD_CHANGE_CARRY_FORWARD", "ADD_AUTOMATIC_CHANGE_CARRY_FORWARD", "ADD_CHANGE_CARRY_FORWARD_DIFF", "ADD_AUTOMATIC_CHANGE_CARRY_FORWARD_DIFF", "CENTRAL_BALANCE", "CENTRAL_BALANCE_POS", "COMBINE_SALE_ITEMS", "ACTIVATE_COMBINE_SALE_ITEMS", "DEACTIVATE_COMBINE_SALE_ITEMS", "SWITCH_CONTAINER_MODE", "CONVERT_CONTAINER_TO_SINGLE_ITEM", "CONVERT_SINGLE_ITEM_TO_CONTAINER_BY_CAPACITY", "CONVERT_SINGLE_ITEM_TO_CONTAINER_BY_NUMBER", "EXTRACT_DEPOSIT_ITEMS", "REMOVE_SUB_PRODUCTS_FROM_CONTAINER", "ACTIVATE_MANDATORY_SIGNATURE_ON_RECEIPT", "DEACTIVATE_MANDATORY_SIGNATURE_ON_RECEIPT", "SWITCH_MANDATORY_SIGNATURE_ON_RECEIPT", "CREATE_VOUCHER", "REDEEM_VOUCHER", "CANCEL_VOUCHER", "SHOW_VOUCHER", "SET_RECEIPT_FINALIZATION_LOCK", "REMOVE_RECEIPT_FINALIZATION_LOCK", "TSE_SETUP_FORM", "SET_SALE_ITEM_SELECTION_MODE_SINGLE", "SET_SALE_ITEM_SELECTION_MODE_MULTI", "SET_DIGITAL_RECEIPT_EMAIL", "MACRO_CHANGE_ORG_ONCE_ON_RECEIPT", "MACRO_CHANGE_ORG_ON_RECEIPTS", "MACRO_CHANGE_PRICE_GROUP", "MACRO_REMOVE_ALL_COUPONS_FROM_RECEIPT", "UPLOAD_POS_JOURNAL", "CANCEL_SALE_IMMEDIATELY", "BARCODE_SCANNER_ACTIVATE", "BARCODE_SCANNER_DEACTIVATE", "BARCODE_SCANNER_SUCCESS_SIGNAL", "BARCODE_SCANNER_FAILURE_SIGNAL", "RETURN_ITEM", "RECEIPT_REVERSAL", "CHANGE_ECONOMIC_ZONE_FOR_ALL", "INVERT_INPUTLINE", "MACRO_CHANGE_PRICE_SHOW_NOTIFICATION", "SET_RECEIPT_PAYMENT_LOCK", "REMOVE_RECEIPT_PAYMENT_LOCK", "SET_SALE_ITEM_DISCOUNT_SUBTRACTION"])
      return false unless macro_validator.valid?(@macro)
      type_validator = EnumAttributeValidator.new('String', ["PRODUCT", "BUTTON_LAYOUT", "MACRO", "PAYMENT_METHOD", "CUSTOMER_GROUP", "ACCOUNT", "ITEM_SEQUENCE", "INFO_TEXT", "BUTTON_STATUS", "CHARACTER_STRING", "EXTERNAL_SYSTEM_CALL", "CHARACTER", "PRODUCT_TAG", "INTERNAL_SYSTEM_CALL"])
      return false unless type_validator.valid?(@type)
      button_status_validator = EnumAttributeValidator.new('String', ["NONE", "GREEN", "YELLOW", "RED", "HIDDEN"])
      return false unless button_status_validator.valid?(@button_status)
      internal_system_call_type_validator = EnumAttributeValidator.new('String', ["MESSAGE", "STOCK", "CUSTOMER", "CASHIER", "DAY_RATING", "BONUS_POINTS", "RESOLVE_UNKNOWN_PRODUCTS", "EVENTS", "EVENTS_VALIDATION", "CASHIER_SALES"])
      return false unless internal_system_call_type_validator.valid?(@internal_system_call_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] macro Object to be assigned
    def macro=(macro)
      validator = EnumAttributeValidator.new('String', ["ADJUST_PAYMENT", "SELECT_ALL", "EXIT_APPLICATION", "APPLY_PAYMENT_TIP", "SHOW_PRODUCT_SEARCH", "TOGGLE_AUTO_RECEIPT_PRINT", "OPEN_RECEIPT_VIA_ORDER_NUMBER", "SHOW_RECEIPT_ARCHIVE", "COPY_TOTAL_TO_INPUT", "PRINT_TREAT_RECEIPT", "CANCEL_RECEIPT", "PARK_RECEIPT", "PRINT", "ENABLE_PRINT_PREVIEW", "DISABLE_PRINT_PREVIEW", "ENTER", "CLEAR_INPUT", "BACKSPACE", "MANUFACTURE", "BACKGROUND_IMAGE", "BALANCE", "BALANCE_POS", "OPEN_CASHDRAWER", "PRINT_POS_MONTH_REPORT", "PRINT_POS_REPORT", "PRINT_POS_WEEK_REPORT", "CASHIER_QUICK_CHANGE", "PRINT_CASHIER_REPORT", "CHANGE_CASHIER", "SHOW_KORONA_INFO", "COST_ACCOUNT", "CUSTOMER_GROUP", "DESELECT", "BIND_ITEMS", "ADD_FREE_INFO_TEXT", "REMOVE_INFO_TEXTS", "SPLIT_ITEMS", "TRANSFER_ITEMS", "ITEM_SEQUENCE", "ITEM_INFO_TEXT", "CHANGE_QUANTITY", "CHANGE_PRICE", "ITEM_DISCOUNT", "REOPEN_RECEIPT", "RETURN", "TOGGLE_QUICK_KEY_MODE", "SCROLL_UP", "SCROLL_DOWN", "SELECT", "VOID_ITEM", "VOID_RECEIPT", "FINISH_DAY", "KEY_0", "KEY_1", "KEY_2", "KEY_3", "KEY_4", "KEY_5", "KEY_6", "KEY_7", "KEY_8", "KEY_9", "KEY_COMMA", "KEY_PERIOD", "KEY_MULT", "KEY_MINUS", "SHOW_BUTTONLAYOUT", "TOTAL", "TOGGLE_SECTOR", "TOGGLE_SECTOR_DEFAULT", "TOGGLE_SECTOR_ALTERNATIV", "PAYMENT", "BIND_PAYMENTS", "RETRIEVE_MASTER_DATA", "SHOW_HANDHELD_MANAGER", "SHOW_TICKETCHECK", "SHOW_TABLEOVERVIEW", "SET_ORDER_NUMBER", "STOCK_RECEIPT", "INVENTORY_RECEIPT", "TIME_TRACKING", "SHOW_LABEL_PRINT_PAGE", "COPY_RECEIPT_DATA", "PRICE_INFO", "CHECK_PREPAID_ACCOUNT", "EVENT_SALES_PAGE", "EVENT_PRESALES_PAGE", "SET_CUSTOMER_NUMBER", "CUSTOMER_LOOKUP", "SHOW_CUSTOMER", "SHOW_RECEIPT_CUSTOMER", "REVISION", "PREPARATION_RECEIPT", "STOCK_RETURN", "PRINT_GIFT_RECEIPT", "SHOW_ITEM_INFO_TEXT_SELECTION", "SHOW_OPEN_STOCK_MANAGEMENT_RECEIPTS", "SAVE_STOCK_MANAGEMENT_RECEIPT", "PRODUCTTEXT_ALLERGENS", "PRODUCTTEXT_MANUAL", "PRODUCTTEXT_DESCRIPTION", "PRODUCTTEXT_INGREDIENTS", "PRODUCTTEXT_NUTRITIONAL_VALUE", "PRODUCTTEXT_CARE_INSTRUCTIONS", "PRODUCTTEXT_RECIPE", "PRODUCTTEXT_CERTIFICATE", "RESTART_POS", "SET_CUSTOMER_BY_NR", "CASHIER_PAUSE", "CASH_VOID", "CANCEL", "ZVT_ENDOFDAY", "ZVT_CLAIM", "ZVT_RELEASE", "CREDIT_AUTHORIZATION_TERMINAL_DIAGNOSIS", "CREDIT_AUTHORIZATION_TERMINAL_REPEAT_RECEIPT", "CREDIT_AUTHORIZATION_TERMINAL_INITIALZATION", "CREDIT_AUTHORIZATION_TERMINAL_CONFIGURATION", "CREATE_STORE_ORDERS", "LOAD_STORE_ORDERS", "CHANGE_BOOKING", "LIST_STOCKS_BY_PRODUCT", "FIND_BOOKING", "SET_RECEIPT_DISCOUNT_PERCENT", "SET_RECEIPT_DISCOUNT_SUBTRACTION", "BLOYAL_SNIPPET_FIND_CUSTOMER", "BLOYAL_SNIPPET_QUICK_SIGNUP", "BLOYAL_SNIPPET_APPLY_COUPON", "BLOYAL_SNIPPET_RECORD_VISIT", "BLOYAL_SNIPPET_VIEW_CUSTOMER", "BLOYAL_SNIPPET_CREATE_ORDER", "BLOYAL_SNIPPET_RETURN_ORDER", "BLOYAL_SNIPPET_CHECK_INVENTORY", "CLEAR_BUTTON_STATUS", "SWITCH_BUTTON_STATUS", "CROSS_SELLING", "TOGGLE_OSK", "LOAD_RECEIPT", "DEACTIVATE_OVERRIDE", "DENOMINATION_INPUT", "SWITCH_BLOYAL_STATE", "EXCHANGE_SALE", "RECEIPT_PRINT", "SHOW_RETURN_PAGE", "SHOW_RETURN_PAGE_WITH_CURRENT_RECEIPT", "CASH_CHECK", "ADVANCED_BOOKINGEDITING", "SHOW_PREAUTH_PAYMENTS", "SHOW_TAG_BUTTON_LAYOUT", "TARGET_PRICE_DISCOUNT", "APPLY_SPECIAL_OFFER", "SHOW_GODB_EXPORT", "SET_SERIAL", "CHANGE_ECONOMIC_ZONE", "CUSTOMER_ORDER_SEARCH", "CUSTOMER_ORDER_CREATE", "CUSTOMER_ORDER_EDIT", "ROUND_RECEIPT_TOTAL_DOWN", "SET_SALE_SELLER", "SWITCH_BATCH_PRINTING", "ACTIVATE_BATCH_PRINTING", "DEACTIVATE_BATCH_PRINTING", "DEACTIVATE_PRODUCER_PRINTING", "SET_PERCENTAGE_OF_RECEIPTTOTAL", "SHOW_PAYMENT_PAGE", "SET_COUPONING_CAMPAIGN_CARD", "EVENT_SALE", "EVENT_OVERVIEW_PRINT", "EVENT_OVERVIEW_SHOW", "CREATE_EVENT_RESOURCE", "KEY_UPPER_A", "KEY_UPPER_B", "KEY_UPPER_C", "KEY_UPPER_D", "KEY_UPPER_E", "KEY_UPPER_F", "KEY_UPPER_G", "KEY_UPPER_H", "KEY_UPPER_I", "KEY_UPPER_J", "KEY_UPPER_K", "KEY_UPPER_L", "KEY_UPPER_M", "KEY_UPPER_N", "KEY_UPPER_O", "KEY_UPPER_P", "KEY_UPPER_Q", "KEY_UPPER_R", "KEY_UPPER_S", "KEY_UPPER_T", "KEY_UPPER_U", "KEY_UPPER_V", "KEY_UPPER_W", "KEY_UPPER_X", "KEY_UPPER_Y", "KEY_UPPER_Z", "KEY_LOWER_A", "KEY_LOWER_B", "KEY_LOWER_C", "KEY_LOWER_D", "KEY_LOWER_E", "KEY_LOWER_F", "KEY_LOWER_G", "KEY_LOWER_H", "KEY_LOWER_I", "KEY_LOWER_J", "KEY_LOWER_K", "KEY_LOWER_L", "KEY_LOWER_M", "KEY_LOWER_N", "KEY_LOWER_O", "KEY_LOWER_P", "KEY_LOWER_Q", "KEY_LOWER_R", "KEY_LOWER_S", "KEY_LOWER_T", "KEY_LOWER_U", "KEY_LOWER_V", "KEY_LOWER_W", "KEY_LOWER_X", "KEY_LOWER_Y", "KEY_LOWER_Z", "RENTAL_SEARCH", "RENTAL_CREATE", "RENTAL_EDIT", "QUOTE_SEARCH", "QUOTE_CREATE", "QUOTE_EDIT", "DELIVERY_NOTE_SEARCH", "DELIVERY_NOTE_CREATE", "DELIVERY_NOTE_EDIT", "DEPOSIT_REFUNDMODE_SWITCH", "DEPOSIT_REFUNDMODE_ACTIVATE", "DEPOSIT_REFUNDMODE_DEACTIVATE", "RECORD_START_COMMAND_ID", "RECORT_END_COMMAND_ID", "ADD_SALEITEM_DISCOUNT", "ADD_CHANGE_CARRY_FORWARD", "ADD_AUTOMATIC_CHANGE_CARRY_FORWARD", "ADD_CHANGE_CARRY_FORWARD_DIFF", "ADD_AUTOMATIC_CHANGE_CARRY_FORWARD_DIFF", "CENTRAL_BALANCE", "CENTRAL_BALANCE_POS", "COMBINE_SALE_ITEMS", "ACTIVATE_COMBINE_SALE_ITEMS", "DEACTIVATE_COMBINE_SALE_ITEMS", "SWITCH_CONTAINER_MODE", "CONVERT_CONTAINER_TO_SINGLE_ITEM", "CONVERT_SINGLE_ITEM_TO_CONTAINER_BY_CAPACITY", "CONVERT_SINGLE_ITEM_TO_CONTAINER_BY_NUMBER", "EXTRACT_DEPOSIT_ITEMS", "REMOVE_SUB_PRODUCTS_FROM_CONTAINER", "ACTIVATE_MANDATORY_SIGNATURE_ON_RECEIPT", "DEACTIVATE_MANDATORY_SIGNATURE_ON_RECEIPT", "SWITCH_MANDATORY_SIGNATURE_ON_RECEIPT", "CREATE_VOUCHER", "REDEEM_VOUCHER", "CANCEL_VOUCHER", "SHOW_VOUCHER", "SET_RECEIPT_FINALIZATION_LOCK", "REMOVE_RECEIPT_FINALIZATION_LOCK", "TSE_SETUP_FORM", "SET_SALE_ITEM_SELECTION_MODE_SINGLE", "SET_SALE_ITEM_SELECTION_MODE_MULTI", "SET_DIGITAL_RECEIPT_EMAIL", "MACRO_CHANGE_ORG_ONCE_ON_RECEIPT", "MACRO_CHANGE_ORG_ON_RECEIPTS", "MACRO_CHANGE_PRICE_GROUP", "MACRO_REMOVE_ALL_COUPONS_FROM_RECEIPT", "UPLOAD_POS_JOURNAL", "CANCEL_SALE_IMMEDIATELY", "BARCODE_SCANNER_ACTIVATE", "BARCODE_SCANNER_DEACTIVATE", "BARCODE_SCANNER_SUCCESS_SIGNAL", "BARCODE_SCANNER_FAILURE_SIGNAL", "RETURN_ITEM", "RECEIPT_REVERSAL", "CHANGE_ECONOMIC_ZONE_FOR_ALL", "INVERT_INPUTLINE", "MACRO_CHANGE_PRICE_SHOW_NOTIFICATION", "SET_RECEIPT_PAYMENT_LOCK", "REMOVE_RECEIPT_PAYMENT_LOCK", "SET_SALE_ITEM_DISCOUNT_SUBTRACTION"])
      unless validator.valid?(macro)
        fail ArgumentError, "invalid value for \"macro\", must be one of #{validator.allowable_values}."
      end
      @macro = macro
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["PRODUCT", "BUTTON_LAYOUT", "MACRO", "PAYMENT_METHOD", "CUSTOMER_GROUP", "ACCOUNT", "ITEM_SEQUENCE", "INFO_TEXT", "BUTTON_STATUS", "CHARACTER_STRING", "EXTERNAL_SYSTEM_CALL", "CHARACTER", "PRODUCT_TAG", "INTERNAL_SYSTEM_CALL"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] button_status Object to be assigned
    def button_status=(button_status)
      validator = EnumAttributeValidator.new('String', ["NONE", "GREEN", "YELLOW", "RED", "HIDDEN"])
      unless validator.valid?(button_status)
        fail ArgumentError, "invalid value for \"button_status\", must be one of #{validator.allowable_values}."
      end
      @button_status = button_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] internal_system_call_type Object to be assigned
    def internal_system_call_type=(internal_system_call_type)
      validator = EnumAttributeValidator.new('String', ["MESSAGE", "STOCK", "CUSTOMER", "CASHIER", "DAY_RATING", "BONUS_POINTS", "RESOLVE_UNKNOWN_PRODUCTS", "EVENTS", "EVENTS_VALIDATION", "CASHIER_SALES"])
      unless validator.valid?(internal_system_call_type)
        fail ArgumentError, "invalid value for \"internal_system_call_type\", must be one of #{validator.allowable_values}."
      end
      @internal_system_call_type = internal_system_call_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          product == o.product &&
          macro == o.macro &&
          payment_method == o.payment_method &&
          button_layout == o.button_layout &&
          info_text == o.info_text &&
          customer_group == o.customer_group &&
          account == o.account &&
          type == o.type &&
          tag == o.tag &&
          button_status == o.button_status &&
          external_system_call == o.external_system_call &&
          internal_system_call_type == o.internal_system_call_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [product, macro, payment_method, button_layout, info_text, customer_group, account, type, tag, button_status, external_system_call, internal_system_call_type].hash
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
