module ArbitraryMock
  class Base

    def initialize(property_hash={})
      @property_hash = property_hash
    end

    def method_missing(*args)
      method_name = args.first
      arg_position = 1

      if method_name == :try
        method_name = args[1]
        arg_position += 1
      end

      setter_method_match = /(.*)=$/.match(method_name)

      return @property_hash[method_name] if setter_method_match.nil?

      setter_method = setter_method_match.captures.first.to_sym
      @property_hash[setter_method] = args[arg_position]
    end

    def try(*args)
      self.send *args
    end
  end
end
