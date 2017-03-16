FactoryGirl.define do
  factory :page do
    url "https://en.wikipedia.org/wiki/Main_Page"
    association :entry, factory: :entry
  end
end
