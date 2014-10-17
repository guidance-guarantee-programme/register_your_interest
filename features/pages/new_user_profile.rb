module Pages
  class NewUserProfile < SitePrism::Page
    set_url '/'

    element :name, '.t-name'
    element :age, '.t-age'
    element :email, '.t-email'

    element :retirement_preference_6_months, '.t-retirement_preference_6_months'
    element :retirement_preference_6_to_12_months, '.t-retirement_preference_6_to_12_months'
    element :retirement_preference_1_to_5_years, '.t-retirement_preference_1_to_5_years'
    element :retirement_preference_more_than_5_years, '.t-retirement_preference_more_than_5_years'
    element :retirement_preference_retired, '.t-retirement_preference_retired'
    element :retirement_preference_unknown, '.t-retirement_preference_unknown'

    element :pension_type_defined_contribution, '.t-pension_type_defined_contribution'
    element :pension_type_defined_benefit, '.t-pension_type_defined_benefit'
    element :pension_type_both, '.t-pension_type_both'
    element :pension_type_unknown, '.t-pension_type_unknown'

    element :channel_preference_web, '.t-channel_preference_web'
    element :channel_preference_phone, '.t-channel_preference_phone'
    element :channel_preference_face_to_face, '.t-channel_preference_face_to_face'

    element :wishlist, '.t-wishlist'
    element :submit, '.t-submit'
  end
end
