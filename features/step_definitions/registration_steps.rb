When(/^a user provides their details$/) do
  page = Pages::NewUserProfile.new
  page.load

  page.name.set('Joe Bloggs')
  page.age.set(55)
  page.email.set('joe.bloggs@example.com')
  page.retirement_preference_6_months.set(true)
  page.pension_type_defined_contribution.set(true)
  page.channel_preference_phone.set(true)
  page.channel_preference_web.set(true)
  page.wishlist.set('Some reassurance and a clearer understanding of my options.')
  page.submit.click
end

Then(/^they are shown a thank you message$/) do
  page = Pages::UserProfile.new

  expect(page).to be_displayed
  expect(page).to have_heading(text: /^Thank you$/)
end

Then(/^they are captured and saved$/) do
  pending
end
