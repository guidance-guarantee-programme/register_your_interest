require 'timecop'

Around do |scenario, block|
  Timecop.freeze { block.call }
end
