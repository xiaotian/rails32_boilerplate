require 'spec_helper'

describe "foo_bars/new" do
  before(:each) do
    assign(:foo_bar, stub_model(FooBar,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new foo_bar form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => foo_bars_path, :method => "post" do
      assert_select "input#foo_bar_name", :name => "foo_bar[name]"
    end
  end
end
