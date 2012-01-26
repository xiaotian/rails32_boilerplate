require 'spec_helper'

describe "foo_bars/show" do
  before(:each) do
    @foo_bar = assign(:foo_bar, stub_model(FooBar,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
