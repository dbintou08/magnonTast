require 'rails_helper'

RSpec.describe 'Task management function', type: :system do
  describe 'Registration function' do
    context 'When registering a task' do
      it 'The registered task is displayed' do
        visit new_task_path
        fill_in "Titre", with: "title"
        fill_in "Content", with: "content"
        click_button "Create Task"
        expect(page).to have_content "Task was successfully created."
      end
    end
  end

  describe 'List display function' do
    context 'When transitioning to the list screen' do
      it 'A list of registered tasks is displayed' do
        FactoryBot.create(:task)
        visit tasks_path
        expect(page).to have_content 'Test1'
      end
    end
  end

  describe 'Detailed display function' do
     context 'When transitioned to any task details screen' do
           let (:task) {FactoryBot.create(:task, titre: 'Test', content: 'Je suis un contenu')}
        it 'The content of the task is displayed' do

          visit task_path(task)
          expect(page).to have_content 'Je suis un contenu'
        end
     end
  end
end