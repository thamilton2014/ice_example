When(/^I am on the insights page$/) do
    navigate_to(InsightsPage, :using => :insights_link)
end

Then(/^I should see signs of the insights page$/) do
    on(InsightsPage) do |page|
        page.wait_for_expected_title?
        # Do some other page assertions here
    end
end