require 'spec_helper'

describe "foo_bars/index" do
  before(:each) do
    assign(:foo_bars, [
      stub_model(FooBar,
        :name => "Name"
      ),
      stub_model(FooBar,
        :name => "Name"
      )
    ])
  end

  it "renders a list of foo_bars" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
