# bowling_spec.rb
require 'caesar'

describe Caesar do
    context "should initialize" do
        it "with a default shift value" do
            caesar = Caesar.new
            caesar.shift.should eq(4)
        end

        it "with a specific shift value" do
            caesar = Caesar.new 6
            caesar.shift.should eq(6)
        end
    end

    context "should cipher" do
        it "without a shift value" do
            caesar = Caesar.new 
            output = caesar.cipher "w"
            output.should eq("a")
        end
    end
end