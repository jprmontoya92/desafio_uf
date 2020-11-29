module Api
   module V1
        class ClientsController < ApplicationController
            def show
                @client = Client.find_by(name: params[:name])
                if @client != nil
                    render json: @client      
                else
                    render json: [Error: 'true', Mensaje: 'Usuario no existe']
                end
            end
        end
    end
end