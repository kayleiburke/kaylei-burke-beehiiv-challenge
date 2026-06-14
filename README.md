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
When you first access the site, you are prompted for a username and password. These login credentials are:

**username:** `username`
**password:** `password`

<img width="60%" alt="Screenshot 2026-06-13 at 8 39 35 PM" src="https://github.com/user-attachments/assets/928bd7be-9583-41e5-8e17-c8dd0730b699" />

These values are currently stored as config variables in Heroku, and can be updated as needed:

<img width="60%" alt="Screenshot 2026-06-13 at 8 42 21 PM" src="https://github.com/user-attachments/assets/c88a0c8b-872e-4be3-9d62-be2fdb7c9429" />

### Main Page
Subscribers are displayed in ascending order based on the `created_at` timestamp (oldest records first), with 10 subscribers per page:

<img width="60%" alt="Screenshot 2026-06-13 at 8 48 31 PM" src="https://github.com/user-attachments/assets/1aff8fcd-3891-47db-8484-1c90b5d84677" />

#### Adding a Subscriber
Subscribers can be added by clicking the **Add Subscriber** button and filling out the modal fields:
<img width="60%" alt="Screenshot 2026-06-13 at 8 49 29 PM" src="https://github.com/user-attachments/assets/a87779b6-69b4-4976-9112-e5eb5ec69cf3" />

There is certain criteria that must be met in order for a subscriber to be saved:
- Email must be present, valid, and contain no whitespaces
- Email must not already be used by another subscriber (case insensitive)

##### Example Errors:
If multiple errors occur, they are displayed on separate lines within the message box:

<img width="60%" alt="Screenshot 2026-06-13 at 8 50 35 PM" src="https://github.com/user-attachments/assets/3cd058cf-367d-4c97-ad99-97056697bc54" />

##### Example Success:
Subscribers that are added successfully are added at the end of the list, and are assigned a default status of Active:

<img width="60%" alt="Screenshot 2026-06-13 at 8 48 31 PM" src="https://github.com/user-attachments/assets/17ab1cd7-b44a-49a4-ac7f-21c7b7694075" />

#### Updating Subscription Status
Subscription status can be updated by clicking the **Subscribe** or **Unsubscribe** links:
<img width="60%" alt="Screenshot 2026-06-13 at 8 53 51 PM" src="https://github.com/user-attachments/assets/c801fc05-623d-4580-8773-77a80bab24ad" />

### Tests
All tests are passing:

<img width="50%" alt="Screenshot 2026-06-13 at 9 05 39 PM" src="https://github.com/user-attachments/assets/7ae0c640-2133-47c1-99a5-0bc5a0569541" />

