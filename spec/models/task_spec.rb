require 'rails_helper'
require_relative '../support/devise'

RSpec.describe Task, type: :model do
  let(:task) { Task.create(name: 'Testing Task', description: 'Testing Testing 123!', status: 'Complete') }

  it 'should be invalid without an name' do
    task.name = nil
    expect(task.valid?).to be false
  end

  it 'should be invalid without an description' do
    task.description = nil
    expect(task.valid?).to be false
  end

  # Inclusion test

  it 'should be invalid without a status' do
    task.status = nil
    expect(task.valid?).to be false
  end
end