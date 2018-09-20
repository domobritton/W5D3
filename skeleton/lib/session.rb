require 'json'

class Session
  # find the cookie for this app
  # deserialize the cookie into a hash
  def initialize(req)
    @req = req
  end

  def [](key)
    key
    # key is xyz or pho
  end

  def []=(key, val)
    @req[key] = val
  end

  # serialize the hash into json and save in a cookie
  # add to the responses cookies
  def store_session(res)
  
    res.to_json
  end
end
