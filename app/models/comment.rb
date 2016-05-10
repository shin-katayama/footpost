class Comment < ActiveRecord::Base
  belongs_to :post               #postsテーブルとのアソシエーション
  belongs_to :user                #usersテーブルとのアソシエーション
end