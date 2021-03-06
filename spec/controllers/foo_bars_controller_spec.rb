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

describe FooBarsController do

  # This should return the minimal set of attributes required to create a valid
  # FooBar. As you add validations to FooBar, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FooBarsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all foo_bars as @foo_bars" do
      foo_bar = FooBar.create! valid_attributes
      get :index, {}, valid_session
      assigns(:foo_bars).should eq([foo_bar])
    end
  end

  describe "GET show" do
    it "assigns the requested foo_bar as @foo_bar" do
      foo_bar = FooBar.create! valid_attributes
      get :show, {:id => foo_bar.to_param}, valid_session
      assigns(:foo_bar).should eq(foo_bar)
    end
  end

  describe "GET new" do
    it "assigns a new foo_bar as @foo_bar" do
      get :new, {}, valid_session
      assigns(:foo_bar).should be_a_new(FooBar)
    end
  end

  describe "GET edit" do
    it "assigns the requested foo_bar as @foo_bar" do
      foo_bar = FooBar.create! valid_attributes
      get :edit, {:id => foo_bar.to_param}, valid_session
      assigns(:foo_bar).should eq(foo_bar)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new FooBar" do
        expect {
          post :create, {:foo_bar => valid_attributes}, valid_session
        }.to change(FooBar, :count).by(1)
      end

      it "assigns a newly created foo_bar as @foo_bar" do
        post :create, {:foo_bar => valid_attributes}, valid_session
        assigns(:foo_bar).should be_a(FooBar)
        assigns(:foo_bar).should be_persisted
      end

      it "redirects to the created foo_bar" do
        post :create, {:foo_bar => valid_attributes}, valid_session
        response.should redirect_to(FooBar.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved foo_bar as @foo_bar" do
        # Trigger the behavior that occurs when invalid params are submitted
        FooBar.any_instance.stub(:save).and_return(false)
        post :create, {:foo_bar => {}}, valid_session
        assigns(:foo_bar).should be_a_new(FooBar)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        FooBar.any_instance.stub(:save).and_return(false)
        post :create, {:foo_bar => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested foo_bar" do
        foo_bar = FooBar.create! valid_attributes
        # Assuming there are no other foo_bars in the database, this
        # specifies that the FooBar created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        FooBar.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => foo_bar.to_param, :foo_bar => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested foo_bar as @foo_bar" do
        foo_bar = FooBar.create! valid_attributes
        put :update, {:id => foo_bar.to_param, :foo_bar => valid_attributes}, valid_session
        assigns(:foo_bar).should eq(foo_bar)
      end

      it "redirects to the foo_bar" do
        foo_bar = FooBar.create! valid_attributes
        put :update, {:id => foo_bar.to_param, :foo_bar => valid_attributes}, valid_session
        response.should redirect_to(foo_bar)
      end
    end

    describe "with invalid params" do
      it "assigns the foo_bar as @foo_bar" do
        foo_bar = FooBar.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FooBar.any_instance.stub(:save).and_return(false)
        put :update, {:id => foo_bar.to_param, :foo_bar => {}}, valid_session
        assigns(:foo_bar).should eq(foo_bar)
      end

      it "re-renders the 'edit' template" do
        foo_bar = FooBar.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FooBar.any_instance.stub(:save).and_return(false)
        put :update, {:id => foo_bar.to_param, :foo_bar => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested foo_bar" do
      foo_bar = FooBar.create! valid_attributes
      expect {
        delete :destroy, {:id => foo_bar.to_param}, valid_session
      }.to change(FooBar, :count).by(-1)
    end

    it "redirects to the foo_bars list" do
      foo_bar = FooBar.create! valid_attributes
      delete :destroy, {:id => foo_bar.to_param}, valid_session
      response.should redirect_to(foo_bars_url)
    end
  end

end
