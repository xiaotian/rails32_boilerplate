require 'spec_helper'

describe "FooBars" do
  describe "GET /foo_bars" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get foo_bars_path
      response.status.should be(200)
    end
  end
end
