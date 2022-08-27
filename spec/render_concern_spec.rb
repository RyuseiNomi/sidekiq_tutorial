require 'rails_helper'
require 'spec_helper'

RSpec.describe RenderConcern, type: :controller do

  describe 'show' do
    # RenderConcern を include したダミークラス
    let!(:mock_class) { Struct.new(:concern) { include RenderConcern } }
    let!(:concern) { mock_class.new } # ダミークラスのインスタンス

    subject { concern.show }

    it '200 ステータスでページをレンダリングすること' do
      expect(subject).to render_template(:hello)
    end
  end
end
