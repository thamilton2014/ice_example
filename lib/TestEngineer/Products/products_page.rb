class ProductsPage < HomePage
    #
    # This waits for the expected title to show up to initialize the page object.
    #
    wait_for_expected_title "All Futures, Options, and OTC Products | ICE", 10
    
    #
    # This waits for the expected element to show up to initialize the page object.
    #
    h1 :main_content, text: "All Futures, Options, and OTC Products"
    expected_element_visible :main_content, 10, true

end