class Member < ApplicationRecord
	include ActiveModel::Validations

	attr_accessor :nombre, :appellido

	validates :nombre, presence: true, length: {minimum: 2}
	validates :apellido, presence: true, length: {minimum: 2}
					   
end
