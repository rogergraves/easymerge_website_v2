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
end
