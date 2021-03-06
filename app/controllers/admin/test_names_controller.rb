#encoding:UTF-8
class Admin::TestNamesController < ApplicationController
  respond_to :html
  layout 'admin'
  def index
    @tests = TestName.all
  end
  
  def show
    @test = TestName.find(params[:id])    
  end
  
  
  def new
    @test = TestName.new    
  end
  
  def create
    @test = TestName.new(params[:test_name])
    if @test.save
      flash[:notice] = "Successfully"
      respond_with(@test, :location => admin_test_names_path)
    else  
      render "new"
      flash[:error] = "Попробуйте еще раз"  
    end 
  end
  
  def edit
    @test = Testname.find(params[:id])    
  end
  
  def update
    @test = Testname.find(params[:id])
    if @test.update_attributes(params[:test_name])
      flash[:notice] = "Обновлено"
      respond_with(@test, :location => admin_test_names_path)
    else
      render "edit"
    end    
  end
  
  def destroy
    @test = Testname.find(params[:id])
    @test.destroy
    flash[:notice] = "Удалено"
    redirect_to admin_test_names_path    
  end
end
