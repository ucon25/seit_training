Given("I on backoffice mokapos login page") do
  visit("https://backoffice.mokapos.com")
end

When("I login to backoffice") do
  fill_in('email', :with => 'wdh@mailinator.com')
  fill_in('password', :with => '123456')
  find('div.app-pages-Login-__style-form___2LTAX > button').click

  begin
    asikjoss = page.execute_script 'return $("#wrapper>div>div").css("width");'
  end while asikjoss != "0px"
end

When("Success login") do
  expect(page).to have_content("Dashboard")
  # visit("https://backoffice-staging.mokapos.com/library/list")
  find('li.dropdown:nth-child(5) > a:nth-child(1)').click
  find('li.dropdown:nth-child(5) > ul:nth-child(2) > li:nth-child(1) > a:nth-child(1)').click
  begin
    joss = page.execute_script 'return $("#wrapper>div>div").css("width");'
  end while joss != "0px"
end

When("I create item_{int} library") do |item_name|
  find('li.app-pages-Library-Item-ActionBar-__ActionBar___2tDXG:nth-child(1) > button:nth-child(1)').click
  fill_in('name', :with => "#{item_name}")
  find('button.btn:nth-child(3)').click
end

Then("I should see item_{int}") do |item_result|
  list_item = page.all("tbody > tr > td:nth-child(1)", :text => "#{item_result}").count
  puts list_item
end
