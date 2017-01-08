require 'rails_helper'

RSpec.describe "md_notes/edit", type: :view do
  before(:each) do
    @md_note = assign(:md_note, MdNote.create!(
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit md_note form" do
    render

    assert_select "form[action=?][method=?]", md_note_path(@md_note), "post" do

      assert_select "input#md_note_title[name=?]", "md_note[title]"

      assert_select "textarea#md_note_content[name=?]", "md_note[content]"
    end
  end
end
