class Member < ApplicationRecord
	include ActiveModel::Validations

	validates :nombre, :apellido, presence: { message: "no puede estar vacío"}, length: {minimum: 2, message: "es muy corto (mínimo 2 letras)"}
	validates :fecha_inicio, :fecha_fin, :tipo_contrato, :index, presence: { message: "no puede estar vacío"}
	validates :index, numericality: { only_integer: true, message: "debe tener sólo números" }
	before_save :upcase_fields
					   
	def upcase_fields
		self.apellido.upcase!
	end
end
