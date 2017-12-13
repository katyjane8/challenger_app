class Student < ActiveRecord::Base
  validates :name, presence: true

  def self.foo
  end 
end
