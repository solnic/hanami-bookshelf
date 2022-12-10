# spec/requests/books/index_spec.rb

RSpec.describe "GET /books", :web do
  it "returns a list of books" do
    visit "/books"

    expect(page.body).to include("Test Driven Development")
    expect(page.body).to include("Practical Object-Oriented Design in Ruby")
  end
end
