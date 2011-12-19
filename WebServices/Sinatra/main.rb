require 'rubygems'
require 'sinatra'
 
## Config
set :environment, :development
set :sessions, false
set :method_override, false
set :clean_trace, true
set :logging, true
set :dump_errors, true
set :static, false
 
set :bind, 'localhost'
set :port, 4567
set :run, true
 
## Read the submodules
require 'user_info'
