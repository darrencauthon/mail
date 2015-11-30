module Mail

  module StringHelper

    def self.blank?(string)
      if string.is_a?(NilClass)
        true
      elsif string.is_a?(String)
        string !~ /\S/
      else
        if string.respond_to?(:empty?)
          string.empty?
        else
          !string
        end
      end
    end

  end

end
