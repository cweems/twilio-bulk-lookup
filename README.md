> NOT SUPPORTED OR MAINTAINED BY TWILIO, USE AT YOUR OWN RISK.

# Bulk Lookup for Twilio

Twilio lookup allows you to determine if a phone number is a mobile number or a landline. This project allows you to upload a CSV, run a bulk lookup, and then download a CSV with information from the Lookup API.


## Heroku Prerequesites
Before you start, you'll need the following:

* A [Twilio Account](https://twilio.com/try-twilio)
* A [Heroku Account](https://signup.heroku.com)
* The [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli) installed

## Heroku Setup
[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

You can also clone this repository and run the app locally. See the `Local Setup` section.

1. Create your first admin user via the command line:

Heroku:

```bash
$ heroku run rails console
> AdminUser.create(email: 'your_email@mail.com', password: 'your_pass', password_confirmation: 'your_pass')
```

2. twilio-bulk-lookup uses Redis for queueing paralell requests. You will need to have redis installed in your environment:

Heroku:
`heroku addons:create heroku-redis:hobby-dev`

3. Visit your heroku application and log in using the credentials you entered above.

4. Add your Twilio Credentials
![screen shot 2018-07-25 at 4 42 01 pm](https://user-images.githubusercontent.com/1418949/43279993-7b9ddb94-90c4-11e8-9d41-90b9e61b50a6.png)

5. Import your CSV of Phone Numbers on the Contacts Page
![screen shot 2018-07-25 at 4 35 10 pm](https://user-images.githubusercontent.com/1418949/43280074-b9c1f1f8-90c4-11e8-8c58-7632ebb2fd80.png)

6. Click the bulk lookup button on the Dashboard Page
![screen shot 2018-07-25 at 4 35 34 pm](https://user-images.githubusercontent.com/1418949/43280206-0b573e92-90c5-11e8-9150-6b5bbb53bb38.png)

7. Wait for your lookup to process. It will take rougly 1 hour to process 4,000 contacts.

8. Download your results from the Contacts Page as a CSV, TSV, or Excel.
![screen shot 2018-07-25 at 4 45 14 pm](https://user-images.githubusercontent.com/1418949/43280272-365243bc-90c5-11e8-987f-41e79989159c.png)

# Local Setup
For one-time use or customization, local development may be a better option. Follow this sequence of commands to set up the twilio-bulk-lookup app locally:

```shell
# Use rails 2.7.5:
rvm install 2.7.5
rvm use 2.7.5

# Clone the repository:
git clone git@github.com:cweems/twilio-bulk-lookup.git

# Install dependencies:
bundle install

# Set up database:
rake db:create
rake db:migrate
rake db:seed

# Install Redis using homebrew (Mac, or see https://redis.io/topics/quickstart):
brew install redis

# Start redis in a new CLI window:
redis-server

# Start the sidekiq worker in a new CLI window:
bundle exec sidekiq -c 2

# Start the application in a new CLI window:
rails s

```

Open http://localhost:3000 to view the app locally.

`rake db:seed` creates an admin user with the following credentials that you can use to log in:
* email: admin@example.com
* password: password

You can also create your own local admin user like this:

```bash
$ rails console
> AdminUser.create(email: 'your_email@mail.com', password: 'your_pass', password_confirmation: 'your_pass')
```