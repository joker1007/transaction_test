require 'spec_helper'

describe Post do
  describe ".transactional_create" do
    it "3つレコードを作成しようとするが、3つ目でロールバックする" do
      expect {
        Post.transactional_create
      }.not_to change(Post, :count)
    end
  end
end
