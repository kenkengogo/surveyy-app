FactoryBot.define do

  factory :question do
    title              {"米かパンか"}
    text                 {"米派ですか？パン派ですか？"}
    word1              {"米"}
    word2 {"パン"}
    user
    category
    created_at { Faker::Time.between(2.days.ago, Time.now, :all) }
  end

end