require 'rails_helper'
require_relative '../support/devise'

RSpec.describe Project, type: :model do
  before :each do
    @user = FactoryBot.create(:user)
  end

  let(:project) { Project.create(user:@user, name: "Testing", description: "Testing is important and it very essential")}

  it 'should be invalid without an name' do
    project.name = nil
    expect(project.valid?).to be false
  end

  it 'should be invalid without an description' do
    project.description = nil
    expect(project.valid?).to be false
  end
end