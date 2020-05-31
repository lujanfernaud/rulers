# frozen_string_literal: true

require_relative '../spec_helper'

RSpec.describe Rulers::Application do
  include Rack::Test::Methods

  let(:app) { described_class.new }

  context 'with a root request' do
    it 'works' do
      get '/'

      body = last_response.body

      expect(last_response).to be_ok
      expect(body).to match('Hello')
    end
  end
end
