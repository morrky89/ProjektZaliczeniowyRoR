require 'rails_helper'

describe Ticket do
  describe 'title' do
    it 'returns ticket title' do
      ticket = Ticket.new(title: 'ticket')
      
      expect(ticket.title).to eq 'ticket'
    end
    
    it 'ticket title should not be nil' do
      ticket = Ticket.new(title: 'ticket')
      
      expect(ticket.title).not_to be_empty
    end
  end
  
  describe 'text' do
    it 'returns ticket text' do
      ticket = Ticket.new(text: 'Opis ticketu')
      
      expect(ticket.text).to eq 'Opis ticketu'
    end
    
    it 'ticket text should not be nil' do
      ticket = Ticket.new(text: 'Opis ticketu')
      
      expect(ticket.text).not_to be_empty
    end
  end
  
  describe 'priority' do
    
    it 'ticket priority should not be nil' do
      ticket = Ticket.new(priority: 'Niski')
      
      expect(ticket.priority).not_to be_empty
    end
  end
end
