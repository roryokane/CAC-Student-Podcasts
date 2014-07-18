require 'rails_helper'

RSpec.describe Podcast, :type => :model do
  it "rejects podcasts with no title" do
    podcast = create(:podcast)
    podcast.title = ""
    expect(podcast.save).to be false
  end

  it "rejects podcasts with no description" do
    podcast = create(:podcast)
    podcast.description = ""
    expect(podcast.save).to be false
  end
end
