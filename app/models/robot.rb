class Robot < ActiveRecord::Base
  validates_presence_of :name,
                        :city,
                        :state,
                        :department


end
