require 'rails_helper'

RSpec.describe "md_notes/show", type: :view do
  before(:each) do
    @md_note = assign(:md_note, MdNote.create!(
      :title => "Title",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
