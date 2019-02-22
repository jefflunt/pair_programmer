module Test
  class Test
    attr_reader :inputs,
                :output

    # aa.inject { |sol, item| item & sol }
    def initialize(parts)
      @inputs = *parts[0..-2]
      @output = *parts[-1]
    end
  end
end
