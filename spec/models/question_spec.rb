require 'rails_helper'
describe Question do
  describe '#create' do
    it "is invalid without a title" do
      question = build(:question, title: nil)
      question.valid?
      expect(question.errors[:title]).to include("can't be blank")
    end
  end
end

describe Question do
  describe '#create' do
    it "is invalid without a text" do
      question = build(:question, text: nil)
      question.valid?
      expect(question.errors[:text]).to include("can't be blank")
    end
  end
end

describe Question do
  describe '#create' do
    it "is invalid without a word1" do
      question = build(:question, word1: nil)
      question.valid?
      expect(question.errors[:word1]).to include("can't be blank")
    end
  end
end

describe Question do
  describe '#create' do
    it "is invalid without a word2" do
      question = build(:question, word2: nil)
      question.valid?
      expect(question.errors[:word2]).to include("can't be blank")
    end
  end
end