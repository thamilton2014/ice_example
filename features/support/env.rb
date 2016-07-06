$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "../../", "lib"))

require "page-object"
require "require_all"
require "fig_newton"
require "data_magic"
require "simplecov"

require_all "lib"

World(PageObject::PageFactory)

def load_yaml(filename)
    YAML.load_file(filename)
end

PageObject::PageFactory.routes = {
    default: [],
    products_link: [
        [HomePage, :products],
        [ProductsPage]
    ],
    trade_link: [
        [HomePage, :trade],
        [TradePage]
    ],
    clear_link: [
        [HomePage, :clear],
        [ClearPage]
    ],
    data_tech_link: [
        [HomePage, :data_tech],
        [DataTechPage]
    ],    
    benchmarks_link: [
        [HomePage, :benchmarks],
        [BenchmarksPage]
    ],
    reports_link: [
        [HomePage, :reports],
        [ReportsPage]
    ],
    insights_link: [
        [HomePage, :insights],
        [InsightsPage]
    ]
}