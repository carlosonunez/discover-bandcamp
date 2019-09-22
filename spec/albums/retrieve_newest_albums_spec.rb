require 'spec_helper'

describe 'Fetching albums' do
  it 'Should get at least the first page' do
    albums_found = Bandcamp::Albums.discover genre: 'melodic-punk'
    expect(albums_found).to eq @sample_albums
  end
end
