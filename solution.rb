require 'sinatra'

get '/' do
  if params[:nombre].nil? || params[:nombre].blank?
    @saludo = "Hola desconocido"
  else
    @saludo = "Hola #{params[:nombre].capitalize}"
  end
  # @saludo = "Hola #{params[:nombre]}"
  erb :index
end
