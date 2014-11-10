require 'rails_helper'

RSpec.describe "authors/index", :type => :view do
  before(:each) do
    assign(:authors, [
      Author.create!(
        :firstname => "Firstname",
        :surname => "Surname"
      ),
      Author.create!(
        :firstname => "Firstname",
        :surname => "Surname"
      )
    ])
  end

  it "renders a list of authors" do
    render
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Surname".to_s, :count => 2
  end
end
