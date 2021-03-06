require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('./models/student.rb')
require_relative('./models/house.rb')
also_reload('./models/*')


get '/' do
  erb ( :home )
end

get '/students-houses' do
  @students = Student.all()
  erb( :index )
end

get '/new' do
  @houses = House.all
  erb( :new )
end

post '/students-houses' do
  @student = Student.new(params)
  @student.save()
  erb ( :create )
end
