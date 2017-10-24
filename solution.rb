require 'sinatra'

get '/' do
  if params[:nombre] == nil
    @saludo = "hola desconocido"
  else
    @saludo = "Hola #{params[:nombre]}"
  end
  # @saludo = "Hola #{params[:nombre]}"
  erb :index
end
