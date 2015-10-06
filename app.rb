require "sinatra"
require "mandrill"
require "geolocater"
require "tilt/erubis"
require "gon-sinatra"


m = Mandrill::API.new

set :bind, "0.0.0.0"

get "/home" do
	erb :index
end

get "/about" do
	erb :about
end

get "/contact" do
	erb :contact
end

get "/products" do
	erb :products
end

get "/fullproducts" do
	erb :fullproducts
end


post "/sendmail" do
	if !params[:u_email].nil? &&
	   !params[:flname].nil? &&
	   !params[:email_body].nil?

		message = {
				:subject=> "Hello from the sky!",
				:from_name=> "Test",
				:text=>"Word up?",
				:to=>[{:email=> "#{params[:u_email]}",
						:name=> "#{params[:fl_name]}"}
					],
				:html=>"<html>#{params[:email_body]}
						<p><i>#{params[:flname]} sent you this message. You should thank them by sending them the below link!
						</p></i><br>
						<a href =http://retailmenot.com/coupons/energydrinks?c=3980614>Special Discount</a></em></p>
						</html>",
				:from_email=>"#{params[:f_email]}"
			}
		sending = m.messages.send(message)
		"#{sending}"
	else
		"You forgot to fill out all of the fields!"
	end
end
