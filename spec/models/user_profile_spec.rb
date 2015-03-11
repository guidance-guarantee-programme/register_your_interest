RSpec.describe UserProfile, type: :model do
  it { is_expected.to respond_to :email }
  it { is_expected.to respond_to :email= }

  it { is_expected.to respond_to :phone }
  it { is_expected.to respond_to :phone= }

  it { is_expected.to respond_to :name }
  it { is_expected.to respond_to :name= }

  it { is_expected.to respond_to :age }
  it { is_expected.to respond_to :age= }

  it { is_expected.to respond_to :region }
  it { is_expected.to respond_to :region= }

  it { is_expected.to respond_to :retirement_preference }
  it { is_expected.to respond_to :retirement_preference= }

  it { is_expected.to respond_to :pension_type }
  it { is_expected.to respond_to :pension_type= }

  it { is_expected.to respond_to :channel_preference_web }
  it { is_expected.to respond_to :channel_preference_web= }

  it { is_expected.to respond_to :channel_preference_phone }
  it { is_expected.to respond_to :channel_preference_phone= }

  it { is_expected.to respond_to :channel_preference_face_to_face }
  it { is_expected.to respond_to :channel_preference_face_to_face= }

  it { is_expected.to respond_to :wishlist }
  it { is_expected.to respond_to :wishlist= }
end
