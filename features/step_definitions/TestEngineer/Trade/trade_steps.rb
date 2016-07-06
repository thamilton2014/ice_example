When(/^I am on the trade page$/) do
    navigate_to(TradePage, :using => :trade_link)
end

Then(/^I should see signs of the trade page$/) do
    on(TradePage) do |page|
        page.wait_for_expected_title?
        # Do some other page assertions here
    end
end