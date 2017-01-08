require 'rails_helper'

RSpec.describe "knowledges/edit", type: :view do
  before(:each) do
    @knowledge = assign(:knowledge, Knowledge.create!())
  end

  it "renders the edit knowledge form" do
    render

    assert_select "form[action=?][method=?]", knowledge_path(@knowledge), "post" do
    end
  end
end
