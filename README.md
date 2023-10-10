# Beehiiv - Challenge

## What is Challenge?

Challenge is a rails/react app meant to be used with our code challenge assignment. Use this as the starting point for your code challenge.

## The Stack

#### Server
- Language
  - Ruby 3.1.2
  - Rails 6.1
  - Node 16

# Development Getting Started

    # Clone and setup repo
    git clone git@github.com:beehiiv/challenge.git
    cd challenge

    # Install and setup server dependencies
    bundle install
    bundle exec rake db:create db:migrate
    yarn install

## Run it

    # Backend (http://localhost:2000)
    bundle exec foreman start

    # Frontend (http://localhost:2001)
    yarn watch:app

    # view at http://localhost:2001, basic auth is username/password (see `config.ru`)
## Test It

    # Setup test DB for testing
    ./scripts/setup_test_db

    # Run tests
    bundle exec rspec

## Lint It

    bundle exec standardrb

## What it contains

### Index Page

![image](https://user-images.githubusercontent.com/5751986/148653166-031d7c6e-8dc2-4db9-9d28-3db71a8599d9.png)

### Add Subscriber Modal

![image](https://user-images.githubusercontent.com/5751986/148653171-4a30cf43-5f42-435c-bc68-82f44524ee50.png)

### Update Subscriber Status Modal

![image](https://user-images.githubusercontent.com/5751986/148653182-3a282533-dbb8-4d96-a511-5a5008cf3daf.png)

# Submission

## Demo Site 
https://beehiiv-challenge-kaylei-burke-e3444692c205.herokuapp.com

## Logging In
When you first access the site, you are prompted for a username and password:

**username:** `username`
**password:** `password`

<img width="1068" alt="Screen Shot 2023-06-26 at 1 52 42 PM" src="https://github.com/beehiiv/challenge/assets/4614468/19e2fbd6-43db-4969-af7a-4d72ccdb54e2">

These values are currently stored as config variables in Heroku, and can be updated as needed:

![249020501-72285d8d-4cee-4f59-9814-61a00aa0581d (3)](https://github.com/beehiiv/challenge/assets/4614468/83207e91-3b65-40fa-a6ed-746190771d87)

## Main Page
Subscribers are displayed in ascending order based on the `created_at` timestamp (oldest records first), with 10 subscribers per page:

<img width="1074" alt="Screen Shot 2023-06-26 at 1 19 28 PM" src="https://github.com/beehiiv/challenge/assets/4614468/4473dcf3-6979-462e-8643-75d1f773b9f2">

### Adding a Subscriber
Subscribers can be added by clicking the **Add Subscriber** button and filling out the modal fields:
<img width="946" alt="249015272-3326197d-51e1-42cf-bc18-14fbfe58fdaa" src="https://github.com/beehiiv/challenge/assets/4614468/83f20a7f-7548-4d55-9f11-382f1c5bc5e9">

There is certain criteria that must be met in order for a subscriber to be saved:
- Email must be present, valid, and contain no whitespaces
- Email must not already be used by another subscriber (case insensitive)

#### Example Errors:
<img width="1022" alt="249015153-d2a2f032-c85b-4070-bd60-360e04a19e39" src="https://github.com/beehiiv/challenge/assets/4614468/7ffc0e33-5a61-43af-8ccb-ad82263ba301">

If multiple errors occur, they are displayed on separate lines within the message box:

<img width="1032" alt="249021839-b7c98293-bd99-4f48-97d8-605c89ef8a0e" src="https://github.com/beehiiv/challenge/assets/4614468/c3bac4bc-4b5c-4745-92aa-e67af0f507ea">

#### Example Success:
Subscribers that are added successfully are added at the end of the list, and are assigned a default status of Active:

<img width="1107" alt="Screen Shot 2023-06-26 at 11 20 59 PM 2" src="https://github.com/beehiiv/challenge/assets/4614468/de586fb3-98c2-4812-90cb-974ec0c80572">

### Updating Subscription Status
Subscription status can be updated by clicking the **Subscribe** or **Unsubscribe** links:
<img width="1042" alt="249022222-c032dbe8-78c6-4535-b51c-da8a5560202a" src="https://github.com/beehiiv/challenge/assets/4614468/94dbb55d-f2a0-4fec-9298-a4e442dde37f">

If any errors occur, they will be displayed within the modal.   Below is example (note that I manually triggered this error by temporarily adding a bug in the `update` method of the `subscribers` Rails controller):

<img width="1069" alt="Screen Shot 2023-06-26 at 3 25 21 PM" src="https://github.com/beehiiv/challenge/assets/4614468/77a0ce37-0852-4c26-ad10-848946d95879">

## Tests
All tests are passing:

<img width="579" alt="Screen Shot 2023-06-28 at 12 36 14 PM" src="https://github.com/beehiiv/challenge/assets/4614468/9acd03ca-7924-4c95-9472-96644ea2314b">
