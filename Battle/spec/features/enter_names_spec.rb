
feature 'Enter names' do
  scenario 'makes players to fill their names' do
    visit('/')
    fill_in :player_1_name, with: 'John'
    fill_in :player_2_name, with: 'Kelly'
    click_button 'Submit'
    expect(page).to have_content 'John vs. Kelly'
  end
end