
require 'sinatra'
require 'csv'
require 'pry'
require_relative 'config/environment'
	@practice_variable = [1,2,3,4,5,6,7]

get '/' do

	sessions = Session.all
	erb :index, locals: {sessions: sessions} 
end

