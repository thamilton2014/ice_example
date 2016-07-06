Given(/^I am on the Home page$/) do
    visit(HomePage) do |page|
        page.wait_for_expected_title?
        page.has_expected_element_visible?
    end
end