require 'string_calculator'

RSpec.describe StringCalculator do
  subject(:calculator) { input.extend(StringCalculator) }

  describe "#add" do
    let(:input) { "" }

    it "returns 0 for the empty string" do
      expect(calculator.add).to eq(0)
    end

    context "with single number" do
      let(:input) { "5" }

      it "returns the number" do
        expect(calculator.add).to eq(5)
      end
    end

    context "with two numbers" do
      let(:input) { "2,3" }

      it "returns the sum" do
        expect(calculator.add).to eq(5)
      end
    end

    context "with three numbers" do
      let(:input) { "1,2,3" }

      it "returns the sum" do
        expect(calculator.add).to eq(6)
      end
    end

    context "with many numbers" do
      let(:input) { (["20"] * 100).join(',') }

      it "returns the sum" do
        expect(calculator.add).to eq(2000)
      end
    end

    context "with newlines as delimiters" do
      let(:input) { "1\n2" }

      it "supports newlines" do
        expect(calculator.add).to eq(3)
      end
    end

    context "with custom delimiters" do
      context "with semicolon as delimiter" do
        let(:input) { "//;\n1;2;3" }

        it "allows the semicolon" do
          expect(calculator.add).to eq(6)
        end
      end

      context "with letter 'x' as delimiter" do
        let(:input) { "//x\n45x55x65" }

        it "allows a letter as a delimiter" do
          expect(calculator.add).to eq(165)
        end
      end
    end


    context "with negative numbers" do
      context "with a single negative number" do
        let(:input) { "-1" }

        it "raises an exception if it finds one" do
          expect { calculator.add }.to raise_error
        end

        it "includes the negative number in the error message" do
          expect { calculator.add }.to raise_error("Negatives not allowed: -1")
        end
      end

      context "with multiple negative numbers" do
        let(:input) { "-1,2,-25" }

        it "raises an exception if it finds one" do
          expect { calculator.add }.to raise_error
        end

        it "includes the negatives in the error message" do
          expect { calculator.add }.to raise_error("Negatives not allowed: -1, -25")
        end
      end
    end

  end
end
