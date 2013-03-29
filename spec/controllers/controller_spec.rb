require 'spec_helper'
require 'support/utilities'

describe "authorization" do
    describe "for non-signed-in users" do
      let(:user) { FactoryGirl.create(:user) }

      describe "in the Users controller" do
        
        describe "submiting to the update action" do
          before { put '/users/1'}
          specify { response.should redirect_to(signin_path)}
        end
      end
    end
  end