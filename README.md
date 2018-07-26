# Bulk Lookup for Twilio

Twilio lookup allows you to determine if a phone number is a mobile number or a landline. This project allows you to upload a CSV, run a bulk lookup, and then download a CSV with information from the Lookup API.


## Prerequesites
Before you start, you'll need the following:

* A [Twilio Account](https://twilio.com/try-twilio)
* A [Heroku Account] (https://signup.heroku.com)
* The [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli) installed

## Setup
[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

1. Create your first admin login via the Heroku command line:

```bash
$ heroku run rails console
> AdminUser.create(email: 'your_email@mail.com', password: 'your_pass', password_confirmation: 'your_pass')
```

1. Add your Twilio Credentials
1. Upload your CSV
1. Click the bulk lookup button
1. Wait for your lookup to process
1. Download your results