FactoryBot.define do
  factory :page do
    user { create(:user) }
    # title { "test" }
    sequence(:title) { |n| "Page Title #{n}"}
    sequence(:slug) { |n| "page-title-#{n}"}
    sequence(:summary) { |n| "<p>Page summary goes here #{n}</p>" }
    sequence(:content) { |n| "<p>Page content goes here #{n}</p>" }
    created_at { Time.zone.now }
    published { false }

    # traits streamline the creation of objects in different states
    trait :published do
      published { true }
    end
  end
end
