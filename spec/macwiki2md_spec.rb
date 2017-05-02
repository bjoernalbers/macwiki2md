require 'spec_helper'

describe MacWiki2MD do
  it 'has a version number' do
    expect(`bundle exec exe/macwiki2md --version`).to include MacWiki2MD::VERSION
  end
end
