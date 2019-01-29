When("I click Coba Gratis Sekarang button") do
  find('#mpIndexRegister1').click
end

Then("I should see register page") do
  sleep 5
  page.should have_content('Start your free 14-day trial now.')
  # expect(page.current_url).to eq("https://backoffice.mokapos.com/register")
  sleep 1
  page.evaluate_script('window.history.back()')
end

When("I click Tonton Video Kami") do
  find('.Jumbotron__play__1Vkux').click
end

Then("I should wach the video") do
  within_frame(find('.modal-body > div:nth-child(2) > iframe:nth-child(1)')) do
    sleep 5
    find('div.html5-video-player').click
    sleep 2
    find('div.html5-video-player').click
    sleep 5
  end
end

Then("I close the video") do
  find('.close').click
end

When("I click Pelajari Lebih Lanjut") do
  find('a.Button__btn__XI5E1:nth-child(5)').click
  sleep 2
end

When("I click Pelajari Lebih Lanjut on payments section") do
  find('.SectionInfo__reverse__3qI8X > div:nth-child(2) > a:nth-child(6)').click
  sleep 2
end

When("I click Pelajari Lebih Lanjut on capital section") do
  # page.evaluate_script('window.history.back()')
  sleep 5
  # binding.pry
  find('section:nth-child(5) > div:nth-child(1) > div:nth-child(2) > a').click
end

When("I click Kedai Kopi") do
  find('.Section4__business-type__12cb- > li:nth-child(1) > a:nth-child(1)').click
end

When("I click Restoran") do
  page.evaluate_script('window.history.back()')
  sleep 1
  find('.Section4__business-type__12cb- > li:nth-child(2) > a:nth-child(1)').click
end

Then("I should see main Restoran page") do
  sleep 15
  expect(page.current_url).to eq("https://www.mokapos.com/business_type/full_service_restaurant")
  # page.should have_content('Moka untuk Bisnis Restoran')
end

When("I click restoran Cepat Saji") do
  page.evaluate_script('window.history.back()')
  sleep 1
  find('.Section4__business-type__12cb- > li:nth-child(3) > a:nth-child(1)').click
end

Then("I should see main restoran Cepat Saji page") do
  sleep 5
  page.should have_content('Moka untuk Bisnis Restoran Cepat Saji')
  # expect(page.current_url).to eq("https://www.mokapos.com/business_type/quick_service_restaurant")
end

When("I click Toko Roti") do
  page.evaluate_script('window.history.back()')
  sleep 1
  find('.Section4__business-type__12cb- > li:nth-child(4) > a:nth-child(1)').click
end

Then("I should see main Toko Roti page") do
  expect(page.current_url).to eq("https://blog.mokapos.com/?s=bakery")
end

When("I click Retail") do
  page.evaluate_script('window.history.back()')
  sleep 1
  find('.Section4__business-type__12cb- > li:nth-child(5) > a:nth-child(1)').click
end

Then("I should see main Retail page") do
  # expect(page.current_url).to eq("https://mokapos.com/business_type/retail")
  page.should have_content('Moka untuk Bisnis Ritel Solusi aplikasi kasir untuk toko ritel Anda')
end

When("I click Mini Market") do
  page.evaluate_script('window.history.back()')
  sleep 1
  find('.Section4__business-type__12cb- > li:nth-child(6) > a:nth-child(1)').click
end

Then("I should see main Mini Market page") do
  expect(page.current_url).to eq("https://blog.mokapos.com/tag/retail")
end

When("I click Barbershop & Salon") do
  page.evaluate_script('window.history.back()')
  sleep 1
  find('.Section4__business-type__12cb- > li:nth-child(7) > a:nth-child(1)').click
end

When("I click Layanan Kecantikan") do
  page.evaluate_script('window.history.back()')
  sleep 1
  find('.Section4__business-type__12cb- > li:nth-child(8) > a:nth-child(1)').click
end

Then("I should see main Layanan Kecantikan page") do

  expect(page.current_url).to eq("https://blog.mokapos.com/tag/salon")
end

When("I click Layanan Profesional") do
  page.evaluate_script('window.history.back()')
  sleep 1
  find('.Section4__business-type__12cb- > li:nth-child(9) > a:nth-child(1)').click
end

Then("I should see main Layanan Profesional page") do
  expect(page.current_url).to eq("https://blog.mokapos.com/tag/service")
end

When("I click first bullet") do
  find('li.jsx-3646531296:nth-child(1)').click
end

Then("I should see cyclo testimonial") do
  page.should have_content('Ardi, Pemilik Cyclo Coffee and Apparel')
end

Then("play video") do
  find('div.carousel-item:nth-child(1) > a:nth-child(1)').click
  sleep 4
  find('.close').click
end

When("I click second bullet") do
  find('li.jsx-3646531296:nth-child(2)').click
end

Then("I should see eatlah testimonial") do
  page.should have_content('Michael, Pemilik Eatlah')
end

Then("I should play video again") do
  find('div.carousel-item:nth-child(2) > a:nth-child(1)').click
  sleep 4
  find('.close').click
end

When("I click third bullet") do
  find('li.jsx-3646531296:nth-child(3)').click
end

Then("I should see bright printing") do
  page.should have_content('Reonal Gultom, Pemilik Bright Printing')
end

When("I click last bullet") do
  find('li.jsx-3646531296:nth-child(4)').click
end

Then("I should see ezo testimonial") do
  page.should have_content('Fairtel Mong, Pemilik Ezo Cheesecake and Bakery')
end


When("I click The Business Time news") do
  find('.index__press__38KMH > ul:nth-child(1) > li:nth-child(1) > a:nth-child(1)').click
end

Then("I should see The Business Time news page") do
  # finished_all_ajax_request?
  sleep 10
  window = page.driver.browser.window_handles
  page.driver.browser.switch_to.window(window.last)
  expect(page.current_url).to eq('https://www.businesstimes.com.sg/startups/edbi-joins-us24m-series-b-funding-round-for-indonesian-pos-startup-moka')
  sleep 5
end

Then("I close the business time news page") do
  # finished_all_ajax_request?
  window = page.driver.browser.window_handles
  page.driver.browser.close
  window = page.driver.browser.window_handles
  page.driver.browser.switch_to.window(window.first)
end

When("I click Kompas news") do
  find('.index__press__38KMH > ul:nth-child(1) > li:nth-child(2) > a:nth-child(1) > img:nth-child(1)').click
end

Then("I should see Kompas news page") do
  sleep 10
  window = page.driver.browser.window_handles
  page.driver.browser.switch_to.window(window.last)
  expect(page.current_url).to eq('https://ekonomi.kompas.com/read/2018/09/13/120600726/startup-moka-dapat-suntikan-dana-baru-24-juta-dollar-as-')
  sleep 5
end

Then("I close the kompas news page") do
  window = page.driver.browser.window_handles
  page.driver.browser.close
  window = page.driver.browser.window_handles
  page.driver.browser.switch_to.window(window.first)
end

When("I click TechCrunch news") do
  find('.index__press__38KMH > ul:nth-child(1) > li:nth-child(3) > a:nth-child(1) > img:nth-child(1)').click
end

Then("I should see TechCrunch news page") do
  sleep 10
  window = page.driver.browser.window_handles
  page.driver.browser.switch_to.window(window.last)
  expect(page.current_url).to eq('https://techcrunch.com/2018/09/13/moka-raises-24m/')
  sleep 5
end

Then("I close the TechCrunch news page") do
  window = page.driver.browser.window_handles
  page.driver.browser.close
  window = page.driver.browser.window_handles
  page.driver.browser.switch_to.window(window.first)
end

When("I click TechInAsia news") do
  find('.index__press__38KMH > ul:nth-child(1) > li:nth-child(4) > a:nth-child(1) > img:nth-child(1)').click
end

Then("I should see TechInAsia news page") do
  sleep 10
  window = page.driver.browser.window_handles
  page.driver.browser.switch_to.window(window.last)
  expect(page.current_url).to eq('https://www.techinasia.com/moka-series-b')
  sleep 5
end

Then("I close the TechInAsia news page") do
  window = page.driver.browser.window_handles
  page.driver.browser.close
  window = page.driver.browser.window_handles
  page.driver.browser.switch_to.window(window.first)
end

When("I click TheJakartaPost news") do
  find('.index__press__38KMH > ul:nth-child(1) > li:nth-child(5) > a:nth-child(1) > img:nth-child(1)').click
end

Then("I should see TheJakartaPost news page") do
  sleep 10
  window = page.driver.browser.window_handles
  page.driver.browser.switch_to.window(window.last)
  expect(page.current_url).to eq('https://www.thejakartapost.com/multimedia/2017/03/18/moka-as-one-of-the-rising-indonesian-saas-players.html')
  sleep 5
end

Then("I close the TheJakartaPost news page") do
  window = page.driver.browser.window_handles
  page.driver.browser.close
  window = page.driver.browser.window_handles
  page.driver.browser.switch_to.window(window.first)
end

When("I click Pelajari Lebih Lanjut on punya pertanyaan") do
  find('a.Button__btn__XI5E1:nth-child(4)').click
end

Then("I should see Contack Us main page") do
  # expect(page.current_url).to eq("https://www.mokapos.com/contact-us")
  find('#name')
  page.evaluate_script('window.history.back()')
end

When("I click Coba Gratis Sekarang on mulai bisnis section") do
  find('#mpIndexRegister2').click
end

Then("I should see register page from landing page") do
  sleep 10
  # expect(page.current_url).to eq("https://backoffice.mokapos.com/register")
  # find('#recaptcha-anchor-label')
  page.should have_content('Already have a Moka account? Sign In')
end

When("I click App store icon") do
  find('.FooterColumn__app-market__1Ysmt > li:nth-child(1) > a:nth-child(1) > img:nth-child(1)').click
end

Then("I should see mokapos on app store page") do
  sleep 15
  window = page.driver.browser.window_handles
  page.driver.browser.switch_to.window(window.last)
  expect(page.current_url).to eq("https://itunes.apple.com/us/app/moka-pos/id955811575")
  page.driver.browser.close # close window
  page.driver.browser.switch_to.window(window.first)

end

When("I click Google Play icon") do
  find('.FooterColumn__app-market__1Ysmt > li:nth-child(2) > a:nth-child(1) > img:nth-child(1)').click
end

Then("I should see mokapos on google play page") do
  sleep 15
  window = page.driver.browser.window_handles
  page.driver.browser.switch_to.window(window.last)
  expect(page.current_url).to eq("https://play.google.com/store/apps/details?id=com.mokapos.android")
  page.driver.browser.close # close window
  page.driver.browser.switch_to.window(window.first)
end
