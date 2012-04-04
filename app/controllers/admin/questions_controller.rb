class Admin::QuestionsController < ApplicationController
  respond_to :html
  layout 'admin'
  
  def show
    @test = Testname.find(params[:id])
    @question = @test.question.all    
  end
  
  def index
    @tests = TestName.all        
  end
  
  def new
    @question = Question.new
    respond_with @question    
  end
  
  def edit
    @question = Question.find(params[:id])
    respond_with @question    
  end
  
  def create
    @question = Question.new(params[:question])
    if @question.save
      flash[:notice] = "Successfully"
      respond_with(@question, :location => admin_questions_path)
    else
      render "new"      
    end    
  end
  
  def update
    @question = Question.find(params[:id])
    if @question.update_attributes(params[:question])
      flash[:notice] = "Successfully"
      respond_with(@question, :location => admin_questions_path)
    else
      render "edit"
    end    
  end
  
end
