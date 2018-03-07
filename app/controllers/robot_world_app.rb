require_relative '../models/robot.rb'


class RobotWorldApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get "/" do
    @robots = Robot.all
    erb :"dashboard"
  end

  get '/robots' do
    @robots = Robot.all
    erb :"robots/index"
  end

  get '/robots/:id/show' do
    @robot = Robot.find(params[:id])
    erb :show
  end

  get '/robots/new'  do
    erb :"robots/new"
  end

  post "/robots" do
    item = Robot.new(params[:robot])
    item.save
    redirect "/robots"
  end

  get "/robots/:id/edit"  do
    @robot = Robot.find(params[:id])
    erb :"robots/edit"
  end

  post "/robots/:id" do |id|
  Robot.update(id.to_i, params[:robot])
  redirect "/robots/#{params[:id]}/show"
  end

  delete "/robots/:id" do |id|
  Robot.destroy(id.to_i)
  redirect "/robots"
  end

  not_found do
  status 404
  erb :"error"
  end

end
