World(ShowMeTheCookies)
require 'curb'

Given("i mokapos website") do
  visit('https://backoffice.mokapos.com/login')
end

When("i login into website") do
  fill_in 'email', :with => 'wdh@mailinator.com'
  fill_in 'password', :with => '123456'
  find('.app-pages-Login-__style-form___2LTAX').click
  begin
    loading_bar = page.execute_script 'return $("#wrapper > div:nth-child(1) > div:nth-child(1)").css("width");'
  end while loading_bar != "0px"
  expect(page).to have_content("DASHBOARD")
end

Then("i should see outlate name from API") do
  @cookiess = get_me_the_cookie('remember_token')
  @param = Curl.get("https://service.mokapos.com/account/v1/profile") do |curl|
    curl.headers['Authorization'] = "#{@cookiess[:value]}"
  end
  data = JSON.parse @param.body
  # binding.pry
  data_outlets = data["outlets"]
  data_outlets_name = data_outlets[0]["name"]
  #buat debug kodingan
  puts "nama outlets = #{data_outlets_name}"

  @data = {"name":"John Doe","permissions":[39,40,41,42,43,44]}
  @params_roles = Curl.post("https://service.mokapos.com/account/v1/roles", @data.to_json) do |curl|
    curl.headers['Authorization'] = "#{@cookiess[:value]}"
    curl.headers['Content-Type'] = "application/json"
  end
  hasil = JSON.parse @params_roles.body
  binding.pry
end
