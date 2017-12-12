require 'rails_helper'

describe StaticPagesController, type: :controller do

  describe '#home' do
    context 'when home action is requested' do
      subject { get :home }

      it 'gets home' do
        expect(subject).to have_http_status(:success)
      end
    end
  end

  describe '#help' do
    context 'when help action is requested' do
      subject { get :help }

      it 'gets help' do
        expect(subject).to have_http_status(:success)
      end
    end
  end

  describe '#about' do
    context 'when about action is requested' do
      subject { get :about }

      it 'gets about' do
        expect(subject).to have_http_status(:success)
      end
    end
  end

end
