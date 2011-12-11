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

describe ChatroomsController do

  # This should return the minimal set of attributes required to create a valid
  # Chatroom. As you add validations to Chatroom, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all chatrooms as @chatrooms" do
      chatroom = Chatroom.create! valid_attributes
      get :index
      assigns(:chatrooms).should eq([chatroom])
    end
  end

  describe "GET show" do
    it "assigns the requested chatroom as @chatroom" do
      chatroom = Chatroom.create! valid_attributes
      get :show, :id => chatroom.id
      assigns(:chatroom).should eq(chatroom)
    end
  end

  describe "GET new" do
    it "assigns a new chatroom as @chatroom" do
      get :new
      assigns(:chatroom).should be_a_new(Chatroom)
    end
  end

  describe "GET edit" do
    it "assigns the requested chatroom as @chatroom" do
      chatroom = Chatroom.create! valid_attributes
      get :edit, :id => chatroom.id
      assigns(:chatroom).should eq(chatroom)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Chatroom" do
        expect {
          post :create, :chatroom => valid_attributes
        }.to change(Chatroom, :count).by(1)
      end

      it "assigns a newly created chatroom as @chatroom" do
        post :create, :chatroom => valid_attributes
        assigns(:chatroom).should be_a(Chatroom)
        assigns(:chatroom).should be_persisted
      end

      it "redirects to the created chatroom" do
        post :create, :chatroom => valid_attributes
        response.should redirect_to(Chatroom.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved chatroom as @chatroom" do
        # Trigger the behavior that occurs when invalid params are submitted
        Chatroom.any_instance.stub(:save).and_return(false)
        post :create, :chatroom => {}
        assigns(:chatroom).should be_a_new(Chatroom)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Chatroom.any_instance.stub(:save).and_return(false)
        post :create, :chatroom => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested chatroom" do
        chatroom = Chatroom.create! valid_attributes
        # Assuming there are no other chatrooms in the database, this
        # specifies that the Chatroom created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Chatroom.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => chatroom.id, :chatroom => {'these' => 'params'}
      end

      it "assigns the requested chatroom as @chatroom" do
        chatroom = Chatroom.create! valid_attributes
        put :update, :id => chatroom.id, :chatroom => valid_attributes
        assigns(:chatroom).should eq(chatroom)
      end

      it "redirects to the chatroom" do
        chatroom = Chatroom.create! valid_attributes
        put :update, :id => chatroom.id, :chatroom => valid_attributes
        response.should redirect_to(chatroom)
      end
    end

    describe "with invalid params" do
      it "assigns the chatroom as @chatroom" do
        chatroom = Chatroom.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Chatroom.any_instance.stub(:save).and_return(false)
        put :update, :id => chatroom.id, :chatroom => {}
        assigns(:chatroom).should eq(chatroom)
      end

      it "re-renders the 'edit' template" do
        chatroom = Chatroom.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Chatroom.any_instance.stub(:save).and_return(false)
        put :update, :id => chatroom.id, :chatroom => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested chatroom" do
      chatroom = Chatroom.create! valid_attributes
      expect {
        delete :destroy, :id => chatroom.id
      }.to change(Chatroom, :count).by(-1)
    end

    it "redirects to the chatrooms list" do
      chatroom = Chatroom.create! valid_attributes
      delete :destroy, :id => chatroom.id
      response.should redirect_to(chatrooms_url)
    end
  end

end
