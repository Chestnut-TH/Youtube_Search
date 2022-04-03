class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, #サインイン時のパスワードをハッシュ化して保存する
         :registerable, #ユーザーのサインアップ、アカウントの編集や破棄の機能を提供
         :recoverable, #パスワードをリセットの機能を提供
         :rememberable, #認証情報を保存する機能を提供
         :validatable, #Emailやパスワードのバリデーションを提供
         :confirmable #メール認証の機能を提供
end
