class MembersController < ApplicationController
	def index
		@members = Member.all
	end

	def show
		@member = Member.find(params[:id])
		#TODO send email to all approvers about this new request
	end
	
	def new
		@member = Member.new
	end

  def create
    @member = Member.new(member_params)
    
    if @member.save
			redirect_to @member
		else
			render 'new'
		end
  end

  private
  	def member_params
  		params.require(:member).permit(:nombre, :apellido, :index, :fecha_inicio, :fecha_fin, :tipo_contrato)
  	end
end
