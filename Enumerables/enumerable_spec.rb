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
        it "should return an enumerator if no block given" do
            expect([1,2,3,4,5].my_select).to be_kind_of(Enumerator)
        end
        it "should execute block if given" do
            expect([1,2,3,4,5].my_select {|x| x > 2}).to eq([3,4,5])
        end
    end
    
    describe "#my_all?" do
        describe "without block" do
            it "should return true if implicit block never returns false or nil" do
                expect([1,2,3,4,5].my_all?) == true
            end
            it "should return false if implicit block returns false for any element" do
                expect([1,2,3,4,false].my_all?) == false
            end
            it "should return false if implicit block returns nil for any element" do
                expect([1,2,3,4,nil].my_all?) == false
            end
        end
        describe "with block" do
            it "should return true if block never returns false or nil" do
                expect([1,2,3,4,5].my_all? {|x| x < 6}) == true
            end
            it "should return false if block returns false" do
                expect([1,2,3,4,7].my_all? {|x| x < 6}) == false
            end
            it "should return false if block returns nil"do
                expect([nil,2,3,4,5].my_all? {|x| x < 6}) == true
            end
        end
    end
    
    describe "#my_any?" do
        describe "without block" do
            it "should return true if implicit block returns true at least once" do
                expect([nil,false,1].my_any?) == true
            end
            it "should return false if implicit block returns false or nil for all elements" do
                expect([nil,false,nil].my_any?) == false
            end
        end
        describe "with block" do
            it "should return true if block returns true at least once" do
                expect([1,2,3,4,5].my_any? {|x| x == 1}) == true
            end
            it "should return false if block returns false or nil for all elements" do
                expect([1,2,3,4,5].my_any? {|x| x == 0}) == false
            end
        end
    end
    
    describe "#my_none?" do
        describe "without block" do
            it "should return true if implicit block never returns true" do
                expect([false,nil,false].my_none?) == true
            end
            it "should return false if implicit block returns true for any element" do
                expect([false,true,false].my_none?) == false
            end
        end
        describe "with block" do
            it "should return true if block never returns true" do
                expect([1,2,3,4,5].my_none? {|x| x == 0}) == true
            end
            it "should return false if block returns true for any element"do
                expect([1,2,3,4,5].my_none? {|x| x == 1}) == false
            end
        end
    end
    
    describe "#my_count" do
        describe "with no argument or block" do
            it "should return the number of elements" do
                expect([1,2,3,4,5].my_count).to eq(5)
            end
        end
        describe "with argument" do
            it "should return elements which are equal to the argument" do
                expect(['a','b','c','d','e'].my_count('a')).to eq(1)
            end
        end
        describe "with block" do
            
            it "should return elements for which the block returns true" do
                expect(['a','ab'].my_count{|x| x.length == 2}).to eq(1)
            end
        end
    end
    
    describe "#my_map" do
        it "should return Enumerator if no block given" do
            expect([1,2,3,4,5].my_map).to be_kind_of(Enumerator)
        end
        it "return a new array with results of running block for every element" do
            expect([1,2,3,4,5].my_map {|x| x+=1}).to eq([2,3,4,5,6])
        end
    end
    
    describe "#my_inject" do
    end
    
    def muliplty_els
    end
    
end