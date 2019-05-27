class PolicyRenewal < ApplicationRecord
  belongs_to :loss_runs_required
  belongs_to :underwriter
  belongs_to :insurer
end
