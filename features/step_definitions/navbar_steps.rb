Given("I am on the Mokapos home page") do
  visit ('https://www.mokapos.com')
end

When("I click menu one by one") do
  find('#about-menu').click
end

Then("I should see main page base on clicked menu") do
   page.should have_content('Tentang Moka POS')
end
