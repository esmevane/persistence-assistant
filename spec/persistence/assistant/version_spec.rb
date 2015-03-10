require 'spec_helper'

describe Persistence::Assistant do
  it 'has a version number' do
    Persistence::Assistant::VERSION.must_equal "0.1.0"
  end
end
