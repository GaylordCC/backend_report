class CompaniesSearchService
    def self.search(curr_company, query)
        curr_company.where("name like '%#{query}%'")
    end
end