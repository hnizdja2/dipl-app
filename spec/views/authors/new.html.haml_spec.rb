require 'rails_helper'

RSpec.describe "authors/new", :type => :view do
  before(:each) do
    assign(:author, Author.new(
      :firstname => "MyString",
      :surname => "MyString"
    ))
  end

  it "renders new author form" do
    render

    assert_select "form[action=?][method=?]", authors_path, "post" do

      assert_select "input#author_firstname[name=?]", "author[firstname]"

      assert_select "input#author_surname[name=?]", "author[surname]"
    end
  end
end
