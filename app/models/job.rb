# linter
class Job < ActiveRecord::Base
  belongs_to :user, inverse_of: :jobs
  
end
