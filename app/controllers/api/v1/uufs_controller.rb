module Api
    module V1
        class UufsController < ApplicationController
            
            def show

                @uf = Uuf.find_by(date: params[:date])
                if @uf != nil
                    @client = Client.find_by(name: request.headers["X-CLIENTE"])
                    @client.log_in_count +=1
                    @client.save
                    render json: @uf
                else 
                    render json: [Error: 'true', Mensaje: 'No existen datos para la fecha ingresada']
                end
              

            end
            
        end
    end
    
end
