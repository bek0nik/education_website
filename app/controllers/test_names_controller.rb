#encoding:UTF-8
class TestNamesController < ApplicationController
  respond_to :html
   
  def index
    @tests = TestName.all
    @questions = Question.all.sample(30)
  end
  
  def show
    @test = TestName.find(params[:id])    
  end
  
  def start
    session[:question_id] ||= {} 
    @test = TestName.find(params[:id])
    @questions = @test.question_ids.sample(30)
    @question = Question.where('test_name_id' => @questions).page(params[:page]).per(1)
#    session[:question_id] = @questio
#    @question = session[:question_id]

    
    #@question = @test.questions.where(:test_name_id => @questions)
    #@question = Kaminari.paginate_array(@question).page(params[:page]).per(1)
#    session[:test_step].deep_merge!(params[:f]) if params[:f]
#    @test.current_step = session[:test_step]
#    if params[:back_button]
#      @test.previous_step
##    elsif @test.last_step?
##      @test.result
#    else
#      @test.next_step      
#    end
#    session[:test_step] = @test.current_step
    
      
  end
#<%= render "#{@test.current_step}_step", :f => f %>
#<%= submit_tag "Предыдущий", :name => "back_button" unless @test.first_step? %>
#  <%= submit_tag "Следующий" %> 
end
