class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end

module ActiveRecord
  class Base
    def self.random
      if (c = count) != 0
        find(rand(c)+1)
      end
    end
  end
end
