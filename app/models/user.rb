class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:admin, :restaurant, :costumer]

  has_many :restaurants
  has_many :orders
end

# PRECISO INSERIR OS NOVOS DADOS DO MODEL USER E RESTAURANT NOS CONTROLLERS
# TALVEZ NO USER PRECISE ALTERAR NO APPLICATION CONTROLLER POR CONTA DO DEVISE