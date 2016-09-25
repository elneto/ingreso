class MembersController < ApplicationController
	def new
	end

        def create
          render plain: params[:member].inspect
        end
end
