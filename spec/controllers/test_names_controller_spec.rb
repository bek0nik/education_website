require 'spec_helper'

describe TestNamesController do
  describe "GET url" do
    get :index
    responce.should be_success  
    
  end
end
