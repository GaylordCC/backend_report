class StatisticalCalculationsSearchService
    def self.search(curr_statisticalCalculation, query)
        curr_statisticalCalculation.where("name like '%#{query}%'")
    end
end