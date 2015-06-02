require 'rails_helper'

describe User do
  describe 'first_name' do
    it 'returns user first_name' do
      user = User.new(first_name: 'John')
      
      expect(user.first_name).to eq 'John'
    end
  end
  
  describe 'last_name' do
    it 'returns user last_name' do
      user = User.new(last_name: 'Smith')
      
      expect(user.last_name).to eq 'Smith'
    end
  end
end