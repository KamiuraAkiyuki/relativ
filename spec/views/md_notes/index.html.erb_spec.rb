require 'rails_helper'

RSpec.describe "md_notes/index", type: :view do
  before(:each) do
    assign(:md_notes, [
      MdNote.create!(
        :title => "Title",
        :content => "MyText"
      ),
      MdNote.create!(
        :title => "Title",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of md_notes" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
