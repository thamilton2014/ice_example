class TradePage < HomePage
    #
    # This waits for the expected title to show up to initialize the page object.
    #
    wait_for_expected_title "This is intended to fail!", 10
    
end