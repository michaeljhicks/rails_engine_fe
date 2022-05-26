require 'rails_helper'

 RSpec.describe 'merchants index' do
   it 'retrieves a list of merchants' do
     visit merchants_path
     expect(page).to have_content('Merchants')
     expect(page).to have_content('Schroeder-Jerde')

     click_on 'Schroeder-Jerde'
     expect(current_path).to eq('/merchants/1')
     expect(page).to have_content('Schroeder-Jerde')

     expect(page).to have_content('Item')
   end
 end
