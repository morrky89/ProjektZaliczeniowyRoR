require 'rails_helper'

describe Project do
  describe 'title' do
    it 'returns project title' do
      project = Project.new(title: 'Projekt')
      
      expect(project.title).to eq 'Projekt'
    end
    
    it 'project title should not be nil' do
      project = Project.new(title: 'Projekt')
      
      expect(project.title).not_to be_empty
    end
  end
  
  describe 'text' do
    it 'returns project text' do
      project = Project.new(text: 'Opis projektu')
      
      expect(project.text).to eq 'Opis projektu'
    end
    
    it 'project text should not be nil' do
      project = Project.new(text: 'Opis projektu')
      
      expect(project.text).not_to be_empty
    end
  end
end
