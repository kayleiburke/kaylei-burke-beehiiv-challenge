# frozen_string_literal: true

require 'rspec'

RSpec.describe 'Subscriber' do
  context 'when saving a subscriber' do
    let(:subscriber1) { Subscriber.new(name: 'John Doe', email: 'john@example.com') }
    let(:subscriber2) { Subscriber.new(name: 'Jane Smith', email: 'jane@example.com') }

    it 'succeeds when email is unique' do
      expect(subscriber1.email).to be_unique
    end

    it 'succeeds when name is present' do
      expect(subscriber1.name).to be_present
    end

    it 'fails when email is not unique' do
      subscriber1.save
      subscriber2.email = subscriber1.email
      expect(subscriber2).not_to be_valid
      expect(subscriber2.errors[:email]).to include('has already been taken')
    end

    it 'fails when name is not present' do
      expect(subscriber2.valid?).to be_false
      expect(subscriber2.errors[:name]).to include("can't be blank")
    end
  end
end
