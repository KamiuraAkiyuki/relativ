require 'rails_helper'

RSpec.describe "knowledges/index", type: :view do
  before(:each) do
    assign(:knowledges, [
      Knowledge.create!(),
      Knowledge.create!()
    ])
  end

  it "renders a list of knowledges" do
    render
  end
end
