class App
  def call(environment_hash)
    puts "Hello"
status_code = 200
header = {}
body = ["<h1>how's it going?</h1>"]
return [status_code, header, body]
  end
end
