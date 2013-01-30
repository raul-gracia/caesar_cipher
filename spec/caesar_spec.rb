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
        context "without a shift value" do
            it "one downcase letter" do
                caesar = Caesar.new 
                output = caesar.cipher "a"
                output.should eq("e")
                output = caesar.cipher "n"
                output.should eq("r")
                output = caesar.cipher "z"
                output.should eq("d")
                output = caesar.cipher "w"
                output.should eq("a")
                output = caesar.cipher "k"
                output.should eq("o")
            end
            it "a doncase string" do
                caesar = Caesar.new
                output = caesar.cipher "my name is raul"
                output.should eq("qc reqi mw veyp")
                output = caesar.cipher "this is a test"
                output.should eq("xlmw mw e xiwx")
                output = caesar.cipher "caesar cipher"
                output.should eq("geiwev gmtliv")
            end

            it "a downcase string with non alphabet caracters" do
                caesar = Caesar.new
                output = caesar.cipher "my_name.is/raul"
                output.should eq("qc_reqi.mw/veyp")                
            end


        end
    end
end