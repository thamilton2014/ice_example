When(/^I am on the products page$/) do
    navigate_to(ProductsPage, :using => :products_link)
end

Then(/^I should see signs of futures, options, and otc products$/) do
    on(ProductsPage) do |page|
        page.wait_for_expected_title?
        page.has_expected_element_visible?
    end
end