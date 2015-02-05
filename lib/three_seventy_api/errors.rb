module ThreeSeventyApi
  module Errors
    class ThreeSeventyError < StandardError
      attr_reader :data
      def initialize(data)
        @data = data
        super
      end
    end

    class UnauthorizedError < ThreeSeventyError
    end
    
    class GeneralError < ThreeSeventyError
    end

    class AccessDeniedError < ThreeSeventyError
    end

    class NotFoundError < StandardError
    end

    class InformThreeSevntyError < StandardError
    end

    class UnavailableError < StandardError
    end

    class IdMissingError < StandardError
    end

    class InputFormatError < ThreeSeventyError
    end

    class UnknownError < StandardError
    end
  end
end