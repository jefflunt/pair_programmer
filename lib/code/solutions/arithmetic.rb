module Code
  module Solvers
    module Arithmetic
      def self.sum
        {
          params: ['a', 'b'],
          body: ['a + b']
        }
      end

      def self.diff
        {
          params: ['a', 'b'],
          body: ['a - b']
        }
      end
    end
  end
end
