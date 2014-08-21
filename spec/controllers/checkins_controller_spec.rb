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

describe CheckinsController do

  # This should return the minimal set of attributes required to create a valid
  # Checkin. As you add validations to Checkin, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CheckinsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all checkins as @checkins" do
      checkin = Checkin.create! valid_attributes
      get :index, {}, valid_session
      assigns(:checkins).should eq([checkin])
    end
  end

  describe "GET show" do
    it "assigns the requested checkin as @checkin" do
      checkin = Checkin.create! valid_attributes
      get :show, {:id => checkin.to_param}, valid_session
      assigns(:checkin).should eq(checkin)
    end
  end

  describe "GET new" do
    it "assigns a new checkin as @checkin" do
      get :new, {}, valid_session
      assigns(:checkin).should be_a_new(Checkin)
    end
  end

  describe "GET edit" do
    it "assigns the requested checkin as @checkin" do
      checkin = Checkin.create! valid_attributes
      get :edit, {:id => checkin.to_param}, valid_session
      assigns(:checkin).should eq(checkin)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Checkin" do
        expect {
          post :create, {:checkin => valid_attributes}, valid_session
        }.to change(Checkin, :count).by(1)
      end

      it "assigns a newly created checkin as @checkin" do
        post :create, {:checkin => valid_attributes}, valid_session
        assigns(:checkin).should be_a(Checkin)
        assigns(:checkin).should be_persisted
      end

      it "redirects to the created checkin" do
        post :create, {:checkin => valid_attributes}, valid_session
        response.should redirect_to(Checkin.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved checkin as @checkin" do
        # Trigger the behavior that occurs when invalid params are submitted
        Checkin.any_instance.stub(:save).and_return(false)
        post :create, {:checkin => { "title" => "invalid value" }}, valid_session
        assigns(:checkin).should be_a_new(Checkin)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Checkin.any_instance.stub(:save).and_return(false)
        post :create, {:checkin => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested checkin" do
        checkin = Checkin.create! valid_attributes
        # Assuming there are no other checkins in the database, this
        # specifies that the Checkin created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Checkin.any_instance.should_receive(:update).with({ "title" => "MyString" })
        put :update, {:id => checkin.to_param, :checkin => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested checkin as @checkin" do
        checkin = Checkin.create! valid_attributes
        put :update, {:id => checkin.to_param, :checkin => valid_attributes}, valid_session
        assigns(:checkin).should eq(checkin)
      end

      it "redirects to the checkin" do
        checkin = Checkin.create! valid_attributes
        put :update, {:id => checkin.to_param, :checkin => valid_attributes}, valid_session
        response.should redirect_to(checkin)
      end
    end

    describe "with invalid params" do
      it "assigns the checkin as @checkin" do
        checkin = Checkin.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Checkin.any_instance.stub(:save).and_return(false)
        put :update, {:id => checkin.to_param, :checkin => { "title" => "invalid value" }}, valid_session
        assigns(:checkin).should eq(checkin)
      end

      it "re-renders the 'edit' template" do
        checkin = Checkin.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Checkin.any_instance.stub(:save).and_return(false)
        put :update, {:id => checkin.to_param, :checkin => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested checkin" do
      checkin = Checkin.create! valid_attributes
      expect {
        delete :destroy, {:id => checkin.to_param}, valid_session
      }.to change(Checkin, :count).by(-1)
    end

    it "redirects to the checkins list" do
      checkin = Checkin.create! valid_attributes
      delete :destroy, {:id => checkin.to_param}, valid_session
      response.should redirect_to(checkins_url)
    end
  end

end
