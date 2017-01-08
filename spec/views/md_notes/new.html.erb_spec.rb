require 'rails_helper'

RSpec.describe "md_notes/new", type: :view do
  before(:each) do
    assign(:md_note, MdNote.new(
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders new md_note form" do
    render

    assert_select "form[action=?][method=?]", md_notes_path, "post" do

      assert_select "input#md_note_title[name=?]", "md_note[title]"

      assert_select "textarea#md_note_content[name=?]", "md_note[content]"
    end
  end
end
