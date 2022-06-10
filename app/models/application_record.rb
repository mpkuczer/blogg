class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end

module ActiveRecord
  class Base
    def self.random
      if count != 0
        find(rand(count)+1)
      end
    end
  end
end
