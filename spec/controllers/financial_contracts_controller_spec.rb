require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe FinancialContractsController do

  # This should return the minimal set of attributes required to create a valid
  # FinancialContract. As you add validations to FinancialContract, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FinancialContractsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all financial_contracts as @financial_contracts" do
      financial_contract = FinancialContract.create! valid_attributes
      get :index, {}, valid_session
      assigns(:financial_contracts).should eq([financial_contract])
    end
  end

  describe "GET show" do
    it "assigns the requested financial_contract as @financial_contract" do
      financial_contract = FinancialContract.create! valid_attributes
      get :show, {:id => financial_contract.to_param}, valid_session
      assigns(:financial_contract).should eq(financial_contract)
    end
  end

  describe "GET new" do
    it "assigns a new financial_contract as @financial_contract" do
      get :new, {}, valid_session
      assigns(:financial_contract).should be_a_new(FinancialContract)
    end
  end

  describe "GET edit" do
    it "assigns the requested financial_contract as @financial_contract" do
      financial_contract = FinancialContract.create! valid_attributes
      get :edit, {:id => financial_contract.to_param}, valid_session
      assigns(:financial_contract).should eq(financial_contract)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new FinancialContract" do
        expect {
          post :create, {:financial_contract => valid_attributes}, valid_session
        }.to change(FinancialContract, :count).by(1)
      end

      it "assigns a newly created financial_contract as @financial_contract" do
        post :create, {:financial_contract => valid_attributes}, valid_session
        assigns(:financial_contract).should be_a(FinancialContract)
        assigns(:financial_contract).should be_persisted
      end

      it "redirects to the created financial_contract" do
        post :create, {:financial_contract => valid_attributes}, valid_session
        response.should redirect_to(FinancialContract.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved financial_contract as @financial_contract" do
        # Trigger the behavior that occurs when invalid params are submitted
        FinancialContract.any_instance.stub(:save).and_return(false)
        post :create, {:financial_contract => {}}, valid_session
        assigns(:financial_contract).should be_a_new(FinancialContract)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        FinancialContract.any_instance.stub(:save).and_return(false)
        post :create, {:financial_contract => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested financial_contract" do
        financial_contract = FinancialContract.create! valid_attributes
        # Assuming there are no other financial_contracts in the database, this
        # specifies that the FinancialContract created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        FinancialContract.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => financial_contract.to_param, :financial_contract => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested financial_contract as @financial_contract" do
        financial_contract = FinancialContract.create! valid_attributes
        put :update, {:id => financial_contract.to_param, :financial_contract => valid_attributes}, valid_session
        assigns(:financial_contract).should eq(financial_contract)
      end

      it "redirects to the financial_contract" do
        financial_contract = FinancialContract.create! valid_attributes
        put :update, {:id => financial_contract.to_param, :financial_contract => valid_attributes}, valid_session
        response.should redirect_to(financial_contract)
      end
    end

    describe "with invalid params" do
      it "assigns the financial_contract as @financial_contract" do
        financial_contract = FinancialContract.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FinancialContract.any_instance.stub(:save).and_return(false)
        put :update, {:id => financial_contract.to_param, :financial_contract => {}}, valid_session
        assigns(:financial_contract).should eq(financial_contract)
      end

      it "re-renders the 'edit' template" do
        financial_contract = FinancialContract.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FinancialContract.any_instance.stub(:save).and_return(false)
        put :update, {:id => financial_contract.to_param, :financial_contract => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested financial_contract" do
      financial_contract = FinancialContract.create! valid_attributes
      expect {
        delete :destroy, {:id => financial_contract.to_param}, valid_session
      }.to change(FinancialContract, :count).by(-1)
    end

    it "redirects to the financial_contracts list" do
      financial_contract = FinancialContract.create! valid_attributes
      delete :destroy, {:id => financial_contract.to_param}, valid_session
      response.should redirect_to(financial_contracts_url)
    end
  end

end
