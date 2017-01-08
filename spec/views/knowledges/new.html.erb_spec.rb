require 'rails_helper'

RSpec.describe "knowledges/new", type: :view do
  before(:each) do
    assign(:knowledge, Knowledge.new())
  end

  it "renders new knowledge form" do
    render

    assert_select "form[action=?][method=?]", knowledges_path, "post" do
    end
  end
end
