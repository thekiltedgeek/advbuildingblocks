module Enumerable
    
    def my_each
        return to_enum(:my_each) unless block_given?
        for i in self
            yield
        end
    end
    
    def my_each_with_index
        return to_enum(:my_each_with_index) unless block_given?
        for i in (0..self.length - 1)
            yield(self[i], i)
        end
        self
    end
    
    def my_select
    end
    
    def my_all
    end
    
    def my_any
    end
    
    def my_none
    end
    
    def my_count
    end
    
    def my_map
    end
    
    def my_inject
    end
    
    def mulitply_els
    end
    
end