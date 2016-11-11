module Enumerable
    
    def my_each
        return to_enum(:my_each) unless block_given?
        for i in self
            yield(i)
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
        return to_enum(:my_select) unless block_given?
        result = []
        self.my_each {|e| result << e if yield(e)}
        return result
    end
    
    def my_all?
        if block_given?
            result = self.length == self.my_select(&Proc.new {}).length
        else
            result = self.length == (self.my_select {|obj| obj}).length
        end
    end
    
    def my_any?
        if block_given?
            result = (self.my_select(&Proc.new {})).length > 0
        else
            result = (self.my_select {|obj| obj}).length > 0
        end
    end
    
    def my_none?
        if block_given?
            result = (self.my_select(&Proc.new {})).length == 0
        else
            result = (self.my_select {|obj| obj}).length == 0
        end
    end
    
    def my_count(*args)
        if block_given?
            result = []
            self.my_each {|e| result << e if yield(e)}
            return result.length
        end
        
        if args.length == 1
            return (self.my_select {|e| e == args[0]}).length
        end
        
        return self.length
    end
    
    def my_map
        return to_enum(:my_map) unless block_given?
        result = []
            self.my_each {|e| result << yield(e)}
        return result
    end
    
    def my_inject(*args)
        if args.length == 1
            memo = args[0]
        else
            memo = self[0]
        end
        
        self.each {|e| memo = yield(memo, e)}
        
        return memo
    end
    
    
    
end