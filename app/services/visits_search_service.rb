class VisitsSearchServices
    def self.search(curr_visit, query)
        curr_visit.where("name like '%#{query}%'")
    end
end