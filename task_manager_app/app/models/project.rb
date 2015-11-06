class Project < ActiveRecord::Base
	attr_accessor :name, :user_id
	belongs_to :user
	has_many :tasks
end
