require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  let(:name) { RandomData.random_sentence }
  let(:description) { RandomData.random_paragraph }
  let(:title) { RandomData.random_sentence }
  let(:body) { RandomData.random_paragraph }
  let(:price) { RandomData.random_integer }

  let(:topic) { Topic.create!(name: name, description: description) }
  let(:sponsored_post) { topic.sponsored_posts.create!(title: title, body: body, price: price, topic: topic) }

  it { is_expected.to belong_to(:topic) }

  describe "attributes" do
    it "has a title, body, price attributes and topic reference" do
       expect(sponsored_post).to have_attributes(title: title, body: body, price: price, topic: topic)
    end
  end
end
