When(/^a user provides their details$/) do
  profile = Pages::NewUserProfile.new
  profile.load

  profile.name.set('Joe Bloggs')
  profile.age.set(55)
  profile.email.set('joe.bloggs@example.com')
  profile.phone.set('012 3456 7890')
  profile.region.select('North West')
  profile.retirement_preference_6_months.set(true)
  profile.pension_type_defined_contribution.set(true)
  profile.channel_preference_phone.set(true)
  profile.wishlist.set('Some reassurance and a clearer understanding of my options.')
  profile.submit.click
end

Then(/^they are shown a thank you message$/) do
  profile = Pages::UserProfile.new

  expect(profile).to be_displayed
  expect(profile).to have_heading(text: /^Thank you for your interest in Pension Wise.$/)
end

Then(/^they are captured and saved$/) do
  user_profile = UserProfile.find_by(email: 'joe.bloggs@example.com')
  user_profile_data = user_profile.attributes.with_indifferent_access

  expect(user_profile_data).to include({
    name: 'Joe Bloggs',
    age: '55',
    email: 'joe.bloggs@example.com',
    phone: '012 3456 7890',
    region: 'north_west',
    retirement_preference: '6_months',
    pension_type: 'defined_contribution',
    channel_preference_face_to_face: false,
    channel_preference_phone: true,
    channel_preference_web: nil,
    wishlist: 'Some reassurance and a clearer understanding of my options.',
    created_at: Time.now,
  })
end
