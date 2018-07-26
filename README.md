# Bulk Lookup for Twilio

Twilio lookup allows you to determine if a phone number is a mobile number or a landline. This project allows you to upload a CSV, run a bulk lookup, and then download a CSV with information from the Lookup API.


## Prerequesites
Before you start, you'll need the following:

* A [Twilio Account](https://twilio.com/try-twilio)
* A [Heroku Account](https://signup.heroku.com)
* The [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli) installed

## Setup
[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

1. Create your first admin login via the Heroku command line:

```bash
$ heroku run rails console
> AdminUser.create(email: 'your_email@mail.com', password: 'your_pass', password_confirmation: 'your_pass')
```

2. Visit your heroku application and log in using the credentials you entered above.

3. Add your Twilio Credentials
![screen shot 2018-07-25 at 4 42 01 pm](https://user-images.githubusercontent.com/1418949/43279993-7b9ddb94-90c4-11e8-9d41-90b9e61b50a6.png)

4. Import your CSV of Phone Numbers on the Contacts Page
![screen shot 2018-07-25 at 4 35 10 pm](https://user-images.githubusercontent.com/1418949/43280074-b9c1f1f8-90c4-11e8-8c58-7632ebb2fd80.png)

5. Click the bulk lookup button on the Dashboard Page
![screen shot 2018-07-25 at 4 35 34 pm](https://user-images.githubusercontent.com/1418949/43280206-0b573e92-90c5-11e8-9150-6b5bbb53bb38.png)

6. Wait for your lookup to process. It will take rougly 1 hour to process 4,000 contacts.

7. Download your results from the Contacts Page as a CSV, TSV, or Excel.
![screen shot 2018-07-25 at 4 45 14 pm](https://user-images.githubusercontent.com/1418949/43280272-365243bc-90c5-11e8-987f-41e79989159c.png)


