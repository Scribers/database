# POST requests

## Create a new user with the name, password, email specified in the POST request attributes.

~~~
/users/create
~~~

**Requested attributes**
- mail: The mail for the user (will be use as login).
- password: The password for the user.
- name: The name for the user (do not need to be unique in the database).

**Response**

JSON with
- status: holding a string representing the status [successful|failure].
- id: if successful, the id of the user created.

## Create a new company with the company_name, mail and password specified in the POST request attributes.

~~~
/companies/create
~~~

**Requested attributes**
- company_name: The name of the company.
- mail: The mail for the company.
- password: The password for the new company.

**Response**

JSON with
- status: holding a string representing the status [successful|failure].
- id: if successful, the id of the company created.

## Create a new job offer with the title in the POST request associated to the company_id, the id of the company in the POST request.

~~~
/offers/create
~~~

**Requested attributes**
- title: The title of the offer to create.
- company_id: The id of the company which creates the offer.

**Response**

JSON with
- status: holding a string representing the status [successful|failure].
- id: if successful, the id of the offer created.

## Create a new application for the joboffer_id and the user_id in the POST request.

~~~
/applications/create 
~~~
**Requested attributes**
- joboffer_id: The id of the job offer to apply for.
- user_id: The id of the user applying for the company.

**Response**

JSON with
- status: holding a string representing the status [successful|failure].
- id: if successful, the id of the application created.

# GET requests

## Get the job offer with the id in the url.

~~~
/joboffers/<id>
~~~

**Url parameter**
- id: the id of the job offer.

**Response**

JSON with
- status: holding a string representing the status [successful|failure].
- joboffer: if successful, a dictionary holding the job offer data requested.

## Get the user with the id in the url

~~~
users/<id>
~~~

**Url parameter**
- id: the id of the user.

**Response**

JSON with
- status: holding a string representing the status [successful|failure].
- user: if successful, a dictionary holding the user data requested.
