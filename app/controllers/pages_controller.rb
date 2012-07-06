class PagesController < ApplicationController

def home
	
end

def about
@titulo="NOSOTROS"	
end

def services
@titulo="SERVICIOS"
end

def web
 respond_to do |format|
      format.js
      format.html
    end	
end

def desarrollo
 respond_to do |format|
      format.js
      format.html
    end	
end

def grafico
 respond_to do |format|
      format.js
      format.html
    end	
end

def imagen
 respond_to do |format|
      format.js
      format.html
    end	
end

def desarrollo
 respond_to do |format|
      format.js
      format.html
    end	
end

def multimedia
 respond_to do |format|
      format.js
      format.html
    end	
end

def mkt
 respond_to do |format|
      format.js
      format.html
    end	
end

def portfolio
  @titulo="PORTAFOLIO"
 respond_to do |format|
      format.js
      format.html
    end 
end

end
