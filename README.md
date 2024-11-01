# Overview
This project is based on Beehiiv's coding challenge for a Software Engineer position. The task involved modifying an internal newsletter application that allows users to add and manage newsletter subscribers with a simple front-end interface and a Rails back-end.

Original repository link: [beehiiv/challenge](https://github.com/beehiiv/challenge).

## Table of Contents
1. [Project Requirements](#project-requirements)
   - [Functional Requirements](#functional-requirements)
   - [Technical Requirements](#technical-requirements)
2. [Submission](#submission)
   - [Demo Site](#demo-site)
   - [Login Credentials](#login-credentials)
   - [Main Page](#main-page)
     - [Adding a Subscriber](#adding-a-subscriber)
       - [Example Errors](#example-errors)
       - [Example Success](#example-success)
     - [Updating Subscription Status](#updating-subscription-status)
   - [Tests](#tests)


## Project Requirements
This section summarizes the requirements as provided by Beehiiv for the coding challenge.

### Functional Requirements
1. **Environment Variables**
   - Replace hard-coded credentials with environment variables to allow dynamic configuration.

2. **Subscriber Persistence**
   - Subscribers should be stored with the following attributes:
     - **Name** (optional)
     - **Email** (must be unique, case-insensitive, with no whitespace)
     - **Status** (indicating if the subscriber is subscribed or unsubscribed)

3. **Add Subscriber Modal**
   - Should allow adding new subscribers
   - Validate the email format, uniqueness, and remove whitespace
   - Display errors if the submission fails
   - Refresh the subscriber list after a successful addition

4. **Update Subscriber Status Modal**
   - Should allow updating the subscription status (subscribe/unsubscribe)
   - Display errors if the update fails
   - Refresh the subscriber list after a successful update

5. **Server-Side Pagination**
   - The index page should support server-side pagination to handle larger lists of subscribers efficiently

### Technical Requirements
1. **Initial Codebase**
   - Clone the initial codebase from the provided repository and make modifications on a new branch. Open a pull request against the main branch to facilitate review.

2. **Deployment**
   - Deploy the final application (e.g., on Heroku) and share the deployed URL.

3. **Testing**
   - Extend unit test coverage where appropriate.

4. **Build Quality**
   - Structure the code as if it were going to be deployed in a production environment.


## Submission
Below is my submission for the Beehiiv coding challenge, meeting the technical requirements above. 

### Demo Site 
https://beehiiv-challenge-kaylei-burke-e3444692c205.herokuapp.com

### Login Credentials
When you first access the site, you are prompted for a username and password:

**username:** `username`
**password:** `password`

<img width="1068" alt="Screen Shot 2023-06-26 at 1 52 42 PM" src="https://github.com/beehiiv/challenge/assets/4614468/19e2fbd6-43db-4969-af7a-4d72ccdb54e2">

These values are currently stored as config variables in Heroku, and can be updated as needed:

![249020501-72285d8d-4cee-4f59-9814-61a00aa0581d (3)](https://github.com/beehiiv/challenge/assets/4614468/83207e91-3b65-40fa-a6ed-746190771d87)

### Main Page
Subscribers are displayed in ascending order based on the `created_at` timestamp (oldest records first), with 10 subscribers per page:

<img width="1074" alt="Screen Shot 2023-06-26 at 1 19 28 PM" src="https://github.com/beehiiv/challenge/assets/4614468/4473dcf3-6979-462e-8643-75d1f773b9f2">

#### Adding a Subscriber
Subscribers can be added by clicking the **Add Subscriber** button and filling out the modal fields:
<img width="946" alt="249015272-3326197d-51e1-42cf-bc18-14fbfe58fdaa" src="https://github.com/beehiiv/challenge/assets/4614468/83f20a7f-7548-4d55-9f11-382f1c5bc5e9">

There is certain criteria that must be met in order for a subscriber to be saved:
- Email must be present, valid, and contain no whitespaces
- Email must not already be used by another subscriber (case insensitive)

##### Example Errors:
<img width="1022" alt="249015153-d2a2f032-c85b-4070-bd60-360e04a19e39" src="https://github.com/beehiiv/challenge/assets/4614468/7ffc0e33-5a61-43af-8ccb-ad82263ba301">

If multiple errors occur, they are displayed on separate lines within the message box:

<img width="1032" alt="249021839-b7c98293-bd99-4f48-97d8-605c89ef8a0e" src="https://github.com/beehiiv/challenge/assets/4614468/c3bac4bc-4b5c-4745-92aa-e67af0f507ea">

##### Example Success:
Subscribers that are added successfully are added at the end of the list, and are assigned a default status of Active:

<img width="1107" alt="Screen Shot 2023-06-26 at 11 20 59 PM 2" src="https://github.com/beehiiv/challenge/assets/4614468/de586fb3-98c2-4812-90cb-974ec0c80572">

#### Updating Subscription Status
Subscription status can be updated by clicking the **Subscribe** or **Unsubscribe** links:
<img width="1042" alt="249022222-c032dbe8-78c6-4535-b51c-da8a5560202a" src="https://github.com/beehiiv/challenge/assets/4614468/94dbb55d-f2a0-4fec-9298-a4e442dde37f">

If any errors occur, they will be displayed within the modal.   Below is example (note that I manually triggered this error by temporarily adding a bug in the `update` method of the `subscribers` Rails controller):

<img width="1069" alt="Screen Shot 2023-06-26 at 3 25 21 PM" src="https://github.com/beehiiv/challenge/assets/4614468/77a0ce37-0852-4c26-ad10-848946d95879">

### Tests
All tests are passing:

<img width="579" alt="Screen Shot 2023-06-28 at 12 36 14 PM" src="https://github.com/beehiiv/challenge/assets/4614468/9acd03ca-7924-4c95-9472-96644ea2314b">
