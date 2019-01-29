Given("I on backoffice moka") do
  visit("https://backoffice.mokapos.com")
end

When("I login to moka backoffice") do
  fill_in('email', :with => 'wdh@mailinator.com')
  fill_in('password', :with => '123456')
  find('div.app-pages-Login-__style-form___2LTAX > button').click

  begin
    asikjoss = page.execute_script 'return $("#wrapper>div>div").css("width");'
  end while asikjoss != "0px"
end

When("I should login successfully") do
  expect(page).to have_content("Dashboard")
  find('li.dropdown:nth-child(5) > a:nth-child(1)').click
  find('li.dropdown:nth-child(5) > ul:nth-child(2) > li:nth-child(7) > a:nth-child(1)').click
  begin
    joss = page.execute_script 'return $("#wrapper>div>div").css("width");'
  end while joss != "0px"
end

When("I create gratuity name gratuity_{int} library") do |gratuity_name|
  find('button.btn-primary:nth-child(1)').click
  fill_in('name', :with => "#{gratuity_name}")
  sleep 1
end

When("I create gratuity amount {int} library") do |amount|
  fill_in('amount', :with => "#{amount}")
  sleep 2
  find('button.btn:nth-child(3)').click
end

Then("I should see gratuity gratuity_{int}") do |gratuity_result|
  gratuity_list = page.all("tbody > tr > td:nth-child(1)", :text => "#{gratuity_result}").count
  puts gratuity_list
end
