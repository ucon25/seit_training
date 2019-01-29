Given("I on back office mokapos login page") do
  visit("https://backoffice.mokapos.com")
end

When("I login to back office") do
  fill_in('email', :with => 'wdh@mailinator.com')
  fill_in('password', :with => '123456')
  find('div.app-pages-Login-__style-form___2LTAX > button').click

  begin
    asikjoss = page.execute_script 'return $("#wrapper>div>div").css("width");'
  end while asikjoss != "0px"
end

When("I should success login") do
  expect(page).to have_content("Dashboard")
  # visit("https://backoffice-staging.mokapos.com/library/list")
  find('li.dropdown:nth-child(5) > a:nth-child(1)').click
  find('li.dropdown:nth-child(5) > ul:nth-child(2) > li:nth-child(6) > a:nth-child(1)').click
  begin
    joss = page.execute_script 'return $("#wrapper>div>div").css("width");'
  end while joss != "0px"
end

When("I create tax name tax_{int} library") do |tax_name|
  find('button.btn-primary:nth-child(1)').click
  fill_in('name', :with => "#{tax_name}")
  sleep 1
end

When("I create tax amount {int} library") do |amount|
  fill_in('amount', :with => "#{amount}")
  sleep 2
  find('button.btn:nth-child(3)').click
end

Then("I should see tax tax_{int}") do |tax_result|
  tax_list = page.all("tbody > tr > td:nth-child(1)", :text => "#{tax_result}").count
  puts tax_list
end
