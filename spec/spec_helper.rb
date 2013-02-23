RSpec.configure do |config|
  config.before(:all, &:silence_output)
  config.after(:all, &:enable_output)
end
 
 public 
# Redirects stderr and stdout to /dev/null.
def silence_output
  @orig_stderr = $stderr
  @orig_stdout = $stdout
 
  # redirect stderr and stdout to /dev/null
  $stderr = File.new(File.join(File.dirname(__FILE__),'null.txt'), 'w')
  $stdout = File.new(File.join(File.dirname(__FILE__),'null.txt'), 'w')
end
 
# Replace stdout and stderr so anything else is output correctly.
def enable_output
  $stderr = @orig_stderr
  $stdout = @orig_stdout
  @orig_stderr = nil
  @orig_stdout = nil
end