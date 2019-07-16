require 'rails_helper'

RSpec.describe Person, type: :model do

  describe 'email' do
    it 'email unique' do
      expect { Person.create(email: 'valid@email.com') }.to change(Person, :count).by(1)
    end
    it 'email exist' do
      Person.create(email: 'valid@email.com')
      expect { Person.create(email: 'valid@email.com') }.to change(Person, :count).by(0)
    end
    it 'email invalid' do
      expect { Person.create(email: 'invalid_email') }.to change(Person, :count).by(0)
      expect { Person.create(email: 'invalid.com') }.to change(Person, :count).by(0)
    end
  end

  describe '#email create' do
    it 'success' do
      expect(Person.email_create('valid@email.com')).to be_truthy
    end
    it 'error' do
      Person.create(email: 'valid@email.com')
      expect(Person.email_create(email: 'email.com')).to be_falsey
      expect(Person.email_create(email: 'valid@email.com')).to be_falsey
    end
  end
end
