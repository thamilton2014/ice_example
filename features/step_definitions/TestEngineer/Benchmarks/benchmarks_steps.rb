When(/^I am on the benchmarks page$/) do
    navigate_to(BenchmarksPage, :using => :benchmarks_link)
end

Then(/^I should see signs of the benchmark page$/) do
    on(BenchmarksPage) do |page|
        page.wait_for_expected_title?
        # Do some other page assertions here
    end
end