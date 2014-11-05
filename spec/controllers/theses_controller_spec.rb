require 'rails_helper'

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

RSpec.describe ThesesController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Thesis. As you add validations to Thesis, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ThesesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all theses as @theses" do
      thesis = Thesis.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:theses)).to eq([thesis])
    end
  end

  describe "GET show" do
    it "assigns the requested thesis as @thesis" do
      thesis = Thesis.create! valid_attributes
      get :show, {:id => thesis.to_param}, valid_session
      expect(assigns(:thesis)).to eq(thesis)
    end
  end

  describe "GET new" do
    it "assigns a new thesis as @thesis" do
      get :new, {}, valid_session
      expect(assigns(:thesis)).to be_a_new(Thesis)
    end
  end

  describe "GET edit" do
    it "assigns the requested thesis as @thesis" do
      thesis = Thesis.create! valid_attributes
      get :edit, {:id => thesis.to_param}, valid_session
      expect(assigns(:thesis)).to eq(thesis)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Thesis" do
        expect {
          post :create, {:thesis => valid_attributes}, valid_session
        }.to change(Thesis, :count).by(1)
      end

      it "assigns a newly created thesis as @thesis" do
        post :create, {:thesis => valid_attributes}, valid_session
        expect(assigns(:thesis)).to be_a(Thesis)
        expect(assigns(:thesis)).to be_persisted
      end

      it "redirects to the created thesis" do
        post :create, {:thesis => valid_attributes}, valid_session
        expect(response).to redirect_to(Thesis.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved thesis as @thesis" do
        post :create, {:thesis => invalid_attributes}, valid_session
        expect(assigns(:thesis)).to be_a_new(Thesis)
      end

      it "re-renders the 'new' template" do
        post :create, {:thesis => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested thesis" do
        thesis = Thesis.create! valid_attributes
        put :update, {:id => thesis.to_param, :thesis => new_attributes}, valid_session
        thesis.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested thesis as @thesis" do
        thesis = Thesis.create! valid_attributes
        put :update, {:id => thesis.to_param, :thesis => valid_attributes}, valid_session
        expect(assigns(:thesis)).to eq(thesis)
      end

      it "redirects to the thesis" do
        thesis = Thesis.create! valid_attributes
        put :update, {:id => thesis.to_param, :thesis => valid_attributes}, valid_session
        expect(response).to redirect_to(thesis)
      end
    end

    describe "with invalid params" do
      it "assigns the thesis as @thesis" do
        thesis = Thesis.create! valid_attributes
        put :update, {:id => thesis.to_param, :thesis => invalid_attributes}, valid_session
        expect(assigns(:thesis)).to eq(thesis)
      end

      it "re-renders the 'edit' template" do
        thesis = Thesis.create! valid_attributes
        put :update, {:id => thesis.to_param, :thesis => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested thesis" do
      thesis = Thesis.create! valid_attributes
      expect {
        delete :destroy, {:id => thesis.to_param}, valid_session
      }.to change(Thesis, :count).by(-1)
    end

    it "redirects to the theses list" do
      thesis = Thesis.create! valid_attributes
      delete :destroy, {:id => thesis.to_param}, valid_session
      expect(response).to redirect_to(theses_url)
    end
  end

end