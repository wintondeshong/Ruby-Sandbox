# -*- coding: utf-8 -*-
require_relative '../../../../lib/wordpress/comments/client'

describe Wordpress::Comments::Client do

  let(:client) { Wordpress::Comments::Client.new 'http://www.andculture.com/' }

  describe "#initialize" do

    it "stores a URL" do
      expect(client.url).to eq 'http://www.andculture.com/'
    end

  end

  describe "#parse" do

    let(:xml) { File.read(File.join('spec', 'fixtures', 'feed.xml')) }

    let(:comments) { client.parse xml }
    let(:comment) { comments.first }

    it "extracts the link" do
      link = 'http://mashable.com/2012/07/18/ipad-early-photos/comment-page-1/#comment-18239503'
      expect(comment[:link]).to eq link
    end

    it "extracts the title" do
      title = "Comment on The Earliest Photos of Apple’s iPad Hit the Web by Fido"
      expect(comment[:title]).to eq title
    end

  end

end
