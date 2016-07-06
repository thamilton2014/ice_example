class ClearPage < HomePage
    #
    # This waits for the expected title to show up to initialize the page object.
    #
    wait_for_expected_title "ICE: Clearing", 10

end