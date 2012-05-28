#encoding:UTF-8
class TestNamesController < ApplicationController
  respond_to :html
  layout 'testing'
  before_filter :test_deny 
   
  def index
    @tests = TestName.all
  end
  
  def show
    @test = TestName.find(params[:id])
#    question = Hash.new(@test.questions.all.sample(25))
#    @question = @test.questions.limit(25)
    #render :action => :start
#    session[:test_step] = nil
  end
  
  def start
    @test = TestName.find(params[:id])
    @question = @test.questions.all.sample(5)
    counter = 0
#    @question.each_index { |q| 
      if params[:correct]
        counter += 1  
      else
        counter += 0 
      end
#      }
    counter
    @result = Report.create(:user_id => current_user.id, :test_name_id => @test.id, :result => counter, :finished => Time.now)
#    if @result.save
#      render "reports/result"      
#    end
    
#    if @question[1..5] == params[:correct]
#      flash[:notice] = "Successfully"
#    elsif  == params[:fail]
#      flash[:notice] = "error"     
#    end
#    @question = @test.questions.limit(25)
#    session[:test_step].deep_merge!(params[:f]) if params[:f]
#    @test.current_step = session[:test_step]
#    if params[:back_button]
#      @test.previous_step
#    elsif @test.last_step? 
#      @test.result
#    else
#      @test.next_step   
#    end
#    session[:test_step] = @test.current_step       
  end
  private
end
