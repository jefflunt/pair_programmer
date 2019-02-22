module Test
  class Spec
    attr_reader :desc,
                :colorized_desc,
                :func_name,
                :func_params,
                :tests

    # Read from a file, return an array of instances of this class
    def self.read(filename)
      specs = []
      curr_spec = []
      File.foreach("#{Dir.pwd}/specs/#{filename}.spec") do |line|
        if line.start_with?('func')
          specs << curr_spec unless curr_spec.empty?
          curr_spec = [] 
        end

        curr_spec << line.strip unless line.strip.empty?
      end
      specs << curr_spec

      specs.collect{ |spec| Spec.new(spec[0], spec[1..-1]) }
    end

    # desc: string, e.g. func sum a b
    # tests: [string], column-based
    def initialize(desc, tests)
      @desc = desc
      @tests = tests.map{|t| t.split(' ')
      parts = desc.split
      @func_name = parts[1]
      @func_params = parts[2..-1] || []
      @colorized_desc = "func #{@func_name.yellow} #{@func_params.join(' ').green}"
    end

    def solve
      solution = Arithmetic.singleton_methods.detect do |sol|
        details = {
          name: func_name,
          params: func_params,
          body: Arithmetic.send(sol)
        }

        tests.all?{ |t| eval(Composer.write(details)
      end
      # possible_solutions.each |sol|
      #   return sol if tests.all?{ |t| sol( ... ) == t.outcome }
      # end

      solution || ':('
    end

    def to_s
      [colorized_desc, tests].join("\n  ")
    end
  end
end
