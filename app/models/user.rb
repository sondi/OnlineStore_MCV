class User < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]{2,}\z/i
	validates :email, presence: true, 
										format: {with: VALID_EMAIL_REGEX},
										uniqueness: true
  validates :age, numericality: { greater_than: 18 }
  # VALID_PHONE_REGEX = /\d{10,}/
  validate :phone_validator


# Implementa los métodos y validaciones de tu modelo aquí. 
	def name
		"#{first_name} #{last_name}"
	end

	def age
		year_now = Time.now.year
		year_birthday = birthday.year
		year_now - year_birthday
	end

	def phone_validator
		count = 0
		phone.each_char do |char|
			if char =~ /\d/
				count += 1
			end
		end
		puts "Count #{count}"
		if count < 10
			errors.add(:phone, "not enough phone numbers")
		end
	end
end
