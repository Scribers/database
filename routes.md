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

## Create a new company with the company_name, mail, password, description, short_description and details specified in the POST request attributes.

~~~
/companies/create
~~~

**Requested attributes**
- name: The name of the company.
- mail: The mail for the company.
- password: The password for the new company.
- description: The description of the enterprise (complete).
- short_description: A short description of the enterprise.
- details: Coordinates, etc

**Response**

JSON with
- status: holding a string representing the status [successful|failure].
- id: if successful, the id of the company created.

## Create a new job offer 

~~~
/offers/create
~~~

**Requested attributes**
- title: The title of the offer to create.
- company_id: The id of the company which creates the offer.
- title: The title of the offer.
- type_id: The id of the type of the offer.
- description: The description of the offer.
- date: Creation date, **WARNING format: yyyy-mm-dd**
- rome_id: The id of the romev3 code.

**Response**

JSON with
- status: holding a string representing the status [successful|failure].
- id: if successful, the id of the offer created.

## Create a new application for the joboffer_id, the user_id and the cover_letter in the POST request.

~~~
/applications/create 
~~~
**Requested attributes**
- offer_id: The id of the job offer to apply for.
- user_id: The id of the user applying for the company.
- cover_letter: The cover_letter.

**Response**

JSON with
- status: holding a string representing the status [successful|failure].
- id: if successful, the id of the application created.

## Login

~~~
/login
~~~

**Requested attributes**
- mail: The mail of the user to log in.
- password: The password of the user to log in.

**Response**

JSON with:
- status: holding a string representing the status [successful|failure].
- id: if successful, the if of the user logged in.

# GET requests

## Get the job offer with the id in the url.

~~~
/offers/<id>
~~~

**Url parameter**
- id: the id of the job offer.

**Response**

JSON with
- status: holding a string representing the status [successful|failure].
- content: if successful, a dictionary holding the job offer data requested.

## Get the user with the id in the url

~~~
/users/<id>
~~~

**Url parameter**
- id: the id of the user.

**Response**

JSON with
- status: holding a string representing the status [successful|failure].
- content: if successful, a dictionary holding the user data requested.

## Get the user's applications

~~~
/users/<id>/applications
~~~

**Url parameter**
- id: the id of the user to get applications.

**Response**

JSON with
- status: holding a string representing the status [successful|failure].
- content: A list holding application datastructures.

## Get the company with the id in the url

~~~
/companies/<id>
~~~

**Url parameter**
- id: the id of the company.

**Response**

JSON with
- status: holding a string representing the status [successful|failure].
- content: if successful, a dictionary holding the company data requested.

## Get all offers for a company

~~~
/companies/<id>/offers
~~~

**Url parameter**
- id: the id of the company.

**Response**

JSON with
- status: holding a string representing the status [successful|failure].
- content: if successful, an array with offers datastructures inside.

## Get the application with the id in the url

~~~
/applications/<id>
~~~

**Url parameter**
- id: the id of the application.

**Response**

JSON with
- status: holding a string representing the status [successful|failure].
- content: if successful, a dictionary holding the application data requested.

## Get the jobtypes

~~~
/jobtypes
~~~

## Get a jobtype with the id given.

~~~
/jobtypes/<id>
~~~

**Url parameter**
- id: the id of the jobtype.

**Response**

JSON with
- status: holding a string representing the status [successful|failure].
- content: if successful, a dictionary holding the jobtype data requested.

## ROMEv3 access all the items

~~~
/romev3
~~~

## ROMEv3 access an item by its id.
~~~
/romev3byid/<id>
~~~

**Url parameter**
- id: the id of the romev3 resource.

**Response**

JSON with
- status: holding a string representing the status [successful|failure].
- content: if successful, a dictionary holding the romev3 data requested.

## ROMEv3 access an item by its code
~~~
/romev3bycode/<code>
~~~
**Url parameter**
- code: the code of the romev3 resource.

**Response**

JSON with
- status: holding a string representing the status [successful|failure].
- content: if successful, a dictionary holding the romev3 data requested.
