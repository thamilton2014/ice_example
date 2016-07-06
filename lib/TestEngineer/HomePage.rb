require "page-object"
require "fig_newton"

class HomePage
    include PageObject
    include FigNewton
    include DataMagic
    #
    # Sets the expected url to visit
    #
    page_url FigNewton.base_url

    #
    # This waits for the expected title to show up to initialize the page object.
    #
    wait_for_expected_title "ICE", 10
    
    #
    # This waits for the expected element to show up to initialize the page object.
    #
    div :main_content, id: /content-\d+/
    expected_element_visible :main_content, 10, true

    link :products, text: "Products"
    link :trade, text: "Trade"
    link :clear, text: "Clear"
    link :data_tech, text: "Data & Tech"
    link :benchmarks, text: "Benchmarks"
    link :reports, text: "Reports"
    link :insights, text: "Insights"

end