require 'spec_helper'

describe Menu do
  context 'validations and structure' do
    should_belong_to :restaurant
  end
end
