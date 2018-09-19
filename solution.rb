require 'sinatra'

get '/' do
  if params[:nombre] == nil
    @saludo = "Hola desconocido"
  else
    @saludo = "Hola #{params[:nombre].capitalize}"
  end
  # @saludo = "Hola #{params[:nombre]}"
  erb :index
end
