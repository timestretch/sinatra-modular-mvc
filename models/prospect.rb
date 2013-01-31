require 'erb'

class Prospect
	
	attr_accessor :first, :last, :email

	def initialize(args={})
		@first = args[:first]
		@last = args[:last]
		@email = args[:email]
	end
	
	def validate
		return "First name is required" if first && first.length <= 0
		return "Last name is required" if last && last.length <= 0
		return "Email name is required" if email && email.length <= 0
	end
	
	def validation_error
		@validation_error ||= validate
	end
	
	def valid?
		validation_error == nil
	end
	
	def save
		# Do saving here..
	end
	
end