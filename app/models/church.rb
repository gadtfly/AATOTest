class Church < ActiveRecord::Base
  acts_as_taggable_on :denominations, :tags
end
