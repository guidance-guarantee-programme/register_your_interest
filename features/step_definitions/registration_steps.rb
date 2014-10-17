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
  repo = UserProfileRepository.new
  user_profile_data = repo.read(email: 'joe.bloggs@example.com')

  expect(user_profile_data).to eq({
    name: 'Joe Bloggs',
    age: 55,
    email: 'joe.bloggs@example.com',
    retirement_preference_6_months: true,
    pension_type_defined_contribution: true,
    channel_preference_phone: true,
    channel_preference_web: true,
    wishlist: 'Some reassurance and a clearer understanding of my options.',
  })
end
