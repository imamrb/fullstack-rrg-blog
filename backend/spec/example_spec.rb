# frozen_string_literal: true

RSpec.describe 'ExampleSpec' do
  it 'must pass' do
    expect(0).to be_truthy
    expect('').to be_truthy

    expect(nil).to be_falsey
  end
end
