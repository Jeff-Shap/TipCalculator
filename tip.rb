#tip.rb

#require 'sinatra'
enable 'sessions'


get "/" do 	
	erb :inputform
end

post '/' do
	 load 'billclass.rb'
	 bill = params[:bill].to_i
	 tip = params[:tip].to_i
	 num_ppl = params[:numofppl].to_i
	 bill = Bill.new(bill,tip,num_ppl).to_s
	 session[:bill] = bill
	 redirect ('/results')
end

get '/results' do
	"<html><body>#{session[:bill]}</body></html>"
end


