module Test
  module TestParser
    def self.columns(test)
      cols = []
      in_value = false
      test.chars.each_with_index do |c, i|
        in_value = true unless c.eql?(' ')

        if in_value && c.eql?(' ')
        cols.push(i) if 
      end
    end

    def self.parts(test)
      first_char = test.strip.chars.first
      type = case first_char
             when '['       then :array
             when '{'       then :hash
             when '"'       then :string
             when 't', 'f'  then :boolean
             when 'n'       then :null
             when ':'       then :symbol
             else
               :number
             end
    end
  end
end
