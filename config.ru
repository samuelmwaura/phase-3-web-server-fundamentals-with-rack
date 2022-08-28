#The ru extension means that this file is being used by rack because thay are normally loaded by rackup command.It is our server definition file
require "rack"  #this is a gem on which the server functionality is built on
require 'pry'
class App
    def call(env) #the env here refers to the request made from the browser and that contains several properties
        path = env["PATH_INFO"]
        if path == '/'
            [200, { "Content-Type" => "text/html" }, ["<h2>Hello <em>World</em>!</h2>"]]
        elsif path == '/potato'
            [200,{"content_Type" => "text/html"},["<p>Boil 'em, mash 'em, stick 'em in a stew</p>"]]  #This array is being returned from this instance method
        else
            [404, { "Content-Type" => "text/html" }, ["Page not found"]]
        end
    end
    
     
end

run App.new