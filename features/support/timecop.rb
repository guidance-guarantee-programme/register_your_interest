require 'timecop'

Around do |scenario, block|
  # Zero out seconds to prevent time resolution differences breaking tests
  Timecop.freeze(Time.utc(2014,"Sep",4,10,15,00)) { block.call }
end
