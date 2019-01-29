Given("I visit mokapos.com") do
  visit('https://www.mokapos.com')
end

When("I on landing page") do
  page.should have_content('Atur kasir lebih mudah dengan Moka POS')
end

Then("I should see mokapos landing page") do
  # link = page.find(:css, 'a[href="https://www.mokapos.com/"]')
  # expect(page).to have_selector(:css, 'a[href="https://www.mokapos.com/"]')
  page.should have_content('Atur kasir lebih mudah dengan Moka POS')
end

Given("I on mokapos landing page") do
  visit('https://www.mokapos.com')
end

When("I click Point Of Sale drop down menu") do
  find('div.nav__dropdown__1mk6W:nth-child(2) > button:nth-child(1)').click
end

When("I should see drop down content") do
  find('.pos__paddingLeftPOS__MdrFQ')
  sleep 2
end

When("I click Rangkuman Fitur") do
  find('.pos__paddingLeftPOS__MdrFQ > div:nth-child(1) > a:nth-child(1)').click
end

Then("I should see main Rangkuman Fitur page") do
  page.should have_content('Bisnis jadi mudah dengan aplikasi kasir Moka')
  sleep 2
end

When("I click Manajemen Meja") do
  find('div.nav__dropdown__1mk6W:nth-child(2) > button:nth-child(1)').click
  sleep 2
  find('.pos__paddingLeftPOS__MdrFQ > div:nth-child(1) > a:nth-child(2)').click
end

Then("I should see main Manajemen Meja page") do
  page.should have_content('Manage Tables With Ease')
  sleep 2
end

When("I on Point Of Sale page") do
  visit('https://www.mokapos.com/pos')
end

When("I click Payment menu") do
  find('div.nav__customLink__1izlJ:nth-child(3) > a:nth-child(1)').click
end

Then("I should see main Payment page") do
  page.should have_content('Kemudahan menerima pembayaran yang aman')
end

When("I on Payment page") do
  visit('https://www.mokapos.com/payments')
end

When("I click Capital menu") do
  find('div.nav__customLink__1izlJ:nth-child(4) > a:nth-child(1)').click
end

Then("I should see main Capital page") do
  sleep 5
  # page.should have_content('')
  # expect(page).to have_content('Pendanaan untuk meningkatkan laju bisnis')
  # expect(page).to have_link(nil, href:'https://mokapos.com/capital')
  expect(page.current_url).to eq("https://www.mokapos.com/capital")
end

When("I on Capital page") do
  visit('https://www.mokapos.com/capital')
end

When("I click Lainya drop down menu") do
  find('div.nav__dropdown__1mk6W:nth-child(5) > button:nth-child(1)').click
  sleep 1
end

When("I should see drop down Lainya content") do
  find('.navModal__showOthers__ThD0T')
  sleep 1
end

When("I click Kedai Kopi menu") do
  find('div.others__width225__5tlx7:nth-child(1) > a:nth-child(2)').click
end

Then("I should see main Kedai Kopi page") do
  sleep 5
  expect(page.current_url).to eq("https://www.mokapos.com/business_type/coffee_shop")
  # page.should have_content('Moka untuk Bisnis Kedai Kopi')
end

When("I click Barber Shop & Salon") do
  page.evaluate_script('window.history.back()')
  find('div.nav__dropdown__1mk6W:nth-child(5) > button:nth-child(1)').click
  sleep 1
  find('div.others__width225__5tlx7:nth-child(2) > a:nth-child(2)').click
end

Then("I should see main Barber Shop & Salon page") do
  page.should have_content('Moka untuk Barbershop')
  sleep 3
end
