When(/^I am on the data and tech page$/) do
    navigate_to(DataTechPage, :using => :data_tech_link)
end

Then(/^I should see signs of the data and tech page$/) do
    on(DataTechPage) do |page|
        page.wait_for_expected_title?
        # Do some other page assertions here        
    end
end    