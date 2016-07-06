When(/^I am on the clear page$/) do
    navigate_to(ClearPage, :using => :clear_link)
end

Then(/^I should see signs of the clear page$/) do
    on(ClearPage) do |page|
        page.wait_for_expected_title?
        # Do some other page assertions here
    end
end