class DataTechPage < HomePage
    #
    # This waits for the expected title to show up to initialize the page object.
    #
    wait_for_expected_title "ICE Data Services", 10

end