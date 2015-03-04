### This is a Ruby on Rails Example

Clone and create a new heroku app

```
$ git clone https://github.com/jasommerset/call-tracking-app.git
$ cd call-tracking-app
$ bundle install
$ git init
$ git add -A
$ git commit -m "init"
$ heroku create
$ git push heroku master
$ heroku config:set TWILIO_ACCT_SID='your sid'
$ heroku config:set TWILIO_AUTH_TOKEN='your auth toke'
$ heroku config:set TWILIO_VOICE_URL='http://xxxxxx-herokuapp.com/twilio'
$ heroku run rake db:migrate
```

Open Heroku and Set-Up Your Phone Number
```
$ heroku open
```
