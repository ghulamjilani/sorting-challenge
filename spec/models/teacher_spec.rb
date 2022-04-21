require 'rails_helper'

RSpec.describe Teacher, type: :model do
  describe '#valid' do
    context 'when teacher is valid' do
      subject { build_stubbed(:teacher) }
      it 'is valid' do
        expect(subject).to be_valid
      end
    end
  end

  describe '#invalid' do
    context 'when name is nil' do
      subject { build_stubbed(:teacher, name: nil) }
      it 'is invalid' do
        expect(subject).to_not be_valid
      end
    end

    context 'when school is nil' do
      subject { build_stubbed(:teacher, school: nil) }
      it 'is invalid' do
        expect(subject).to_not be_valid
      end
    end

    context 'when school_year is nil' do
      subject { build_stubbed(:teacher, school_year: nil) }
      it 'is invalid' do
        expect(subject).to_not be_valid
      end
    end
  end
end
