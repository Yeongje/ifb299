class Job < ActiveRecord::Base
    belongs_to :driver, :foreign_key => "driver_id"
end
