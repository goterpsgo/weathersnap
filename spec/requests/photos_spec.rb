require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/photos", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Photo. As you add validations to Photo, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Photo.create! valid_attributes
      get photos_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      photo = Photo.create! valid_attributes
      get photo_url(photo)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_photo_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      photo = Photo.create! valid_attributes
      get edit_photo_url(photo)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Photo" do
        expect {
          post photos_url, params: { photo: valid_attributes }
        }.to change(Photo, :count).by(1)
      end

      it "redirects to the created photo" do
        post photos_url, params: { photo: valid_attributes }
        expect(response).to redirect_to(photo_url(Photo.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Photo" do
        expect {
          post photos_url, params: { photo: invalid_attributes }
        }.to change(Photo, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post photos_url, params: { photo: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested photo" do
        photo = Photo.create! valid_attributes
        patch photo_url(photo), params: { photo: new_attributes }
        photo.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the photo" do
        photo = Photo.create! valid_attributes
        patch photo_url(photo), params: { photo: new_attributes }
        photo.reload
        expect(response).to redirect_to(photo_url(photo))
      end
    end

    context "with invalid parameters" do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        photo = Photo.create! valid_attributes
        patch photo_url(photo), params: { photo: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested photo" do
      photo = Photo.create! valid_attributes
      expect {
        delete photo_url(photo)
      }.to change(Photo, :count).by(-1)
    end

    it "redirects to the photos list" do
      photo = Photo.create! valid_attributes
      delete photo_url(photo)
      expect(response).to redirect_to(photos_url)
    end
  end
end
