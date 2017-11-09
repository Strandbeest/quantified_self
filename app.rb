
require 'sinatra'
require 'csv'
require 'pry'
require_relative 'config/environment'
get '/' do
	erb :index
end

