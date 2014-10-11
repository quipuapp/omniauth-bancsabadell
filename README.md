---

# OmniAuth BancSabadell

Facebook OAuth2 Strategy for BancSabadell.

## Installing

Add to your `Gemfile`:

```ruby
gem 'omniauth-bancsabadell'
```

Then `bundle install`.

## Usage

`OmniAuth::Strategies::Bancsabadell` is a middleware. You can read more
info here: https://github.com/intridea/omniauth.

An example would be placing this inside `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :bancsabadell, ENV['BANC_SABADELL_KEY'], ENV['BANC_SABADELL_SECRET']
end
```

Once receiving the callback from BancSabadell, you can get the token by simply doing:
```ruby
class OmniAuthController < ApplicationController
  def bancsabadell
    token = request.env["omniauth.auth"].credentials.token

    ...
  end
end
```

## Test app

You have a super basic test app in test_app/ in order to see how to use it in Rails.
