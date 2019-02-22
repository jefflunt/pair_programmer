module Code
  module Composer
    def self.write(solution)
      <<~FUNC
      def #{solution[:name]}(#{solution[:params].join(', ')})
        #{solution[:body].join("\n")}
      end
      FUNC
    end
  end
end
