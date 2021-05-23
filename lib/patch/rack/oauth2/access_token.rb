module Rack
  module OAuth2
    class AccessToken
      def initialize_with_expires_support(attributes = {})
        initialize_without_expires_support attributes
        self.expires_in ||= attributes[:expires]
      end
      # alias_method_chain :initialize, :expires_support

      alias_method :initialize_without_expires_support, :initialize
      alias_method :initialize, :initialize_with_expires_support
    end
  end
end