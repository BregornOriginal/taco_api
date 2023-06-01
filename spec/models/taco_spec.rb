require "rails_helper"

RSpec.describe Taco, type: :model do
  subject(:taco) do
    Taco.create(meat: "Chicken", rice: "false", salsa: "false", notes: "Delicious")
  end
  it "is valid with valid attributes" do
    expect(taco).to be_valid
  end
  describe "validations" do
    it "validates presence of notes" do
      taco = Taco.new(meat: "Chicken", rice: "false", salsa: "false", notes: "")
      expect(taco).not_to be_valid
      expect(taco.errors[:notes]).to include("is too short (minimum is 1 character)")
    end
  end
end
