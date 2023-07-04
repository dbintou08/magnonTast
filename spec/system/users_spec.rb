require 'rails_helper'

RSpec.describe 'User Management Functions', type: :system do
  describe 'Registration function' do
    context 'When a user is registered' do
      it 'Transition to task list screenする' do
      end
    end
    context 'When transitioning to the task list screen without logging in' do
      it 'The user is redirected to the login screen and the message "Please log in" is displayed.' do
      end
    end
  end

  describe 'Login function' do
    context 'When logged in as a registered user' do
      it 'Transition to task list screen and the message "You are logged in.' do
      end
      it 'Access to your own detail screen.' do
      end
      it 'Transition to task list screen when accessing others details screen' do
      end
      it 'When logging out, the user is taken to the login screen and the message "You have logged out" is displayed.' do
      end
    end
  end

  describe 'Administrator function' do
    context 'When the administrator logs in' do
      it 'Access to the user list screen' do
      end
      it 'Can register administrators' do
      end
      it 'Access to user details screen' do
      end
      it 'Edit users other than yourself from the user edit screen' do
      end
      it 'Users can be deleted.' do
      end
    end
    context 'When a general user accesses the User List screen' do
      it 'Transition to task list screen with error message "Only administrators have access".' do
      end
    end
  end
end