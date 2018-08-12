class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/student' do
    @student = Student.from_params(params[:student])
    params[:student][:courses].each do |course|
      Course.from_params(course)
    end
    @courses = Course.all
    erb :student
  end
end
