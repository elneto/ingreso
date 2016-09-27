class MembersController < ApplicationController
	def show
		@member = Member.find(params[:id])
	end
	
	def new
	end

  def create
    @member = Member.new(member_params)

    @member.save
    redirect_to @member
  end

  private
  	def member_params
  		params.require(:member).permit(:nombre, :apellido, :index, :fecha_inicio, :fecha_fin, :tipo_contrato)
  	end
end
