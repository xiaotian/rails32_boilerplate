require 'spec_helper'

describe "foo_bars/edit" do
  before(:each) do
    @foo_bar = assign(:foo_bar, stub_model(FooBar,
      :name => "MyString"
    ))
  end

  it "renders the edit foo_bar form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => foo_bars_path(@foo_bar), :method => "post" do
      assert_select "input#foo_bar_name", :name => "foo_bar[name]"
    end
  end
end
