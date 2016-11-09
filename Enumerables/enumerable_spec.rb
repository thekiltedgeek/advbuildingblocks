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
    end
    
    describe "#my_any?" do
    end
    
    describe "#my_none?" do
    end
    
    describe "#my_count" do
    end
    
    describe "#my_map" do
    end
    
    describe "#my_inject" do
    end
    
    def muliplty_els
    end
    
end