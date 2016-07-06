When(/^I am on the reports page$/) do
    navigate_to(ReportsPage, :using => :reports_link)
end

Then(/^I should see signs of the reports page$/) do
    on(ReportsPage) do |page|
        page.wait_for_expected_title?
        # Do some other page assertions here
    end
end