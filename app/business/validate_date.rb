class ValidateDate
    def initialize
    end


    def validation?(foundationDate)
        if foundationDate 
            date = DateTime.now - 1.year
            
            return date > foundationDate
        end
        
        true
    end

end