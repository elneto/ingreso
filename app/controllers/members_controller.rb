class MembersController < ApplicationController
	def index
		@members = Member.order('members.fecha_fin DESC').all
	end

	def show
		@member = Member.find(params[:id])
		#TODO send email to all approvers about this new request
	end
	
	def new
		@member = Member.new
	end

	def edit
		@member = Member.find(params[:id])
	end

  def create
    @member = Member.new(member_params)
    
    if @member.save
			redirect_to @member
		else
			render 'new'
		end
  end

  def update
  	@member = Member.find(params[:id])
    
    if @member.update(member_params)
			redirect_to @member
		else
			render 'edit'
		end
  end

  def destroy
  	@member = Member.find(params[:id])
  	@member.destroy

  	redirect_to members_path
  end

  private
  	def member_params
  		params.require(:member).permit(:nombre, :apellido, :index, :fecha_inicio, :fecha_fin, :tipo_contrato, :oficina, :computo, :telefono, :llamadas_ld, :usuario_novell, :lotus_notes, :acceso_umoja, :lista_correo, :acceso_shared, :numero_oficina, :extension, :roles_umoja, :programas)
  	end
end
