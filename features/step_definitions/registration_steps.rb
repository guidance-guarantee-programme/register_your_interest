When(/^a user provides their details$/) do
  profile = Pages::NewUserProfile.new
  profile.load

  profile.name.set('Joe Bloggs')
  profile.age.set(55)
  profile.email.set('joe.bloggs@example.com')
  profile.retirement_preference_6_months.set(true)
  profile.pension_type_defined_contribution.set(true)
  profile.channel_preference_phone.set(true)
  profile.channel_preference_web.set(true)
  profile.wishlist.set('Some reassurance and a clearer understanding of my options.')
  profile.submit.click
end

Then(/^they are shown a thank you message$/) do
  profile = Pages::UserProfile.new

  expect(profile).to be_displayed
  expect(profile).to have_heading(text: /^Thank you$/)
end

Then(/^they are captured and saved$/) do
  repo = UserProfileRepository.new

  user_profile_data = repo.read(email: 'joe.bloggs@example.com')
  user_profile_data.delete(:id)

  expect(user_profile_data).to eq({
    name: 'Joe Bloggs',
    age: '55',
    email: 'joe.bloggs@example.com',
    retirement_preference: '6_months',
    pension_type: 'defined_contribution',
    channel_preference_face_to_face: false,
    channel_preference_phone: true,
    channel_preference_web: true,
    wishlist: 'Some reassurance and a clearer understanding of my options.',
  })
end
