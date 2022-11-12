require 'rails_helper'
require_relative '../support/devise'

RSpec.describe User, type: :model do
  before :each do
    @user = FactoryBot.create(:user)
  end

  it 'should be invalid without an email' do
    @user.email = nil
    expect(@user.valid?).to be false
  end

  it 'should be invalid without an password' do
    @user.password = nil
    expect(@user.valid?).to be false
  end

  it 'should be invalid with a password less than 5 characters' do
    @user.password = 1234
    expect(@user.valid?).to be false
  end

end


