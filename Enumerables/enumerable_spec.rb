#rspec file for enumerables module
require_relative 'enumerable'

describe "Enumerable" do
    
    describe "#my_each" do
        test = [1,2,3,4,5]
        it "should return Enumerator if no block given" do
            expect(test.my_each).to be_kind_of(Enumerator)
        end
        it "should execute block if given" do
            expect(test.my_each {|x|}).to eq([1,2,3,4,5])
        end
    end
    
    describe "#my_each_with_index" do
        letters = ['a','b','c','d','e']
        
        it "should return an enumerator if no block given" do
            expect(letters.my_each_with_index).to be_kind_of(Enumerator)
        end
        
        it "should execute block if given" do
            expect(letters.my_each_with_index {|e,i| letters[i].upcase!.to_s}).to eq(['A','B','C','D','E'])
        end
    end
    
    describe "#my_select" do
        numbers = [1,2,3,4,5]
        it "should return an enumerator if no block given" do
            expect(numbers.my_select).to be_kind_of(Enumerator)
        end
        it "should execute block if given" do
            expect(numbers.select {|x| x.even?}).to eq([2,4])
        end
    end
    
    describe "#my_all?" do
        describe "without block" do
            it "should return true if implicit block never returns false or nil"
            it "should return false if implicit block returns false for any element"
            it "should return false if implicit block returns nil for any element"
        end
        describe "with block" do
            it "should return true if block never returns false or nil"
            it "should return false if block returns false"
            it "should return false if block returns nil"
        end
    end
    
    describe "#my_any?" do
        describe "without block" do
            it "should return true if implicit block returns true at least once"
            it "should return false if implicit block returns false or nil for all elements"
        end
        describe "with block" do
            it "should return true if block returns true at least once"
            it "should return false if block returns false or nil for all elements"
        end
    end
    
    describe "#my_none?" do
        describe "without block" do
            it "should return true if implicit block never returns true"
            it "should return false if implicit block returns true for any element"
        end
        describe "with block" do
            it "should return true if block never returns true"
            it "should return false if block returns true for any element"
        end
    end
    
    describe "#my_count" do
        describe "with no argument or block" do
            it "should return the number of elements"
        end
        describe "with argument" do
            it "should return elements which are equal to the argument"
        end
        describe "with block" do
            it "should return elements for which the block returns true"
        end
    end
    
    describe "#my_map" do
        it "should return an enumerator if no block given"
        it "return a new array with results of running block for every element"
    end
    
    describe "#my_inject" do
    end
    
    def muliplty_els
    end
    
end