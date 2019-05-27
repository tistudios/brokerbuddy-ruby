class Abyence < ApplicationRecord
  belongs_to :policy_renewal
  belongs_to :insurer
  belongs_to :underwriter
end
