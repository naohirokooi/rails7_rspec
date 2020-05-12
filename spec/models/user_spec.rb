require 'rails_helper'

RSpec.describe User, type: :model do
  describe "名前を表示するタスク" do

  let(:params){{name: "さとる"}}

        it "名前「〜ちゃん」を表示するタスク" do
        params.merge!(age: 1)  
        user = User.new(params)
        expect(user.disp_name).to eq "さとるちゃん"

        end

        it "名前「〜君」を表示するタスク" do
        params.merge!(age: 15)  
        user = User.new(params)
        expect(user.disp_name).to eq "さとる君"

        end

        it "名前「〜さん」を表示するタスク" do
        params.merge!(age: 20)  
        user = User.new(params)
        expect(user.disp_name).to eq "さとるさん"

        end

        it "「不正な値です」を表示するタスク" do
        params.merge!(age: -1)  
        user = User.new(params)
        expect(user.disp_name).to eq "不正な値です"

  end
 end
end

