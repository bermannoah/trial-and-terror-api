require 'rails_helper'

describe Case, type: :model do
  it { is_expected.to validate_presence_of(:original_id) }
  it { is_expected.to validate_uniqueness_of(:original_id) }
end