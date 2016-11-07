#bubble_sort_spec.rb
#spec files for bubble_sort and bubble_bort_by

require_relative 'bubble_sort'

describe "BubbleSort" do
    describe "bubble_sort" do
        
        it "should sort an array of numbers" do
            expect(bubble_sort([1,2,3,5,4])).to eq([1,2,3,4,5])
        end
        
        it "should sort an array of letters" do
            expect(bubble_sort(['f','e','p','a','l'])).to eq(['a','e','f','l','p'])
        end
    end
    
    describe "bubble_sort_by" do
        it "should sort an array"
    end
end
