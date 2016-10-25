class Member < ApplicationRecord
	include ActiveModel::Validations

	validates :nombre, :apellido, :nombre_solicitante, :email_solicitante, presence: { message: "no puede estar vacío"}, length: {minimum: 2, message: "es muy corto (mínimo 2 letras)"}
	validates :fecha_inicio, :fecha_fin, :tipo_contrato, :index, presence: { message: "no puede estar vacío"}
	validates :index, numericality: { only_integer: true, message: "debe tener sólo números" }
	validates :email_solicitante, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "debe ser un correo electronico correcto"}
	validate :validate_fechas
	before_save :upcase_fields
					   
	def upcase_fields
		self.apellido.upcase!
	end

	def validate_fechas
		unless fecha_inicio.nil? || fecha_fin.nil?
			if fecha_inicio >= fecha_fin
				errors.add(:fecha_fin, "no puede ser menor o igual a la fecha de inicio")
			end
		end
	end
end
