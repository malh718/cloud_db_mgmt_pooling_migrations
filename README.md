# cloud_db_mgmt_pooling_migrations
# Connection Pooling Setup 
I spent 2 days on this homework and I ran this code multiple times and rewatched Zoom lectures 2,3,4,5. This is the result: 

# Connection Pooling Setup 
I was able to succesfully create an Azure MYSQL instance.
I was able to create a google cloud mysql instance.



I made sure to include appropriate fire wall and network rules.

<img width="1093" alt="Screen Shot 2023-10-27 at 6 53 16 PM" src="https://github.com/malh718/cloud_db_mgmt_pooling_migrations/assets/102617334/ba4a2634-3a9b-4236-8ecf-af8a390e3ff7">


<img width="1093" alt="Screen Shot 2023-10-27 at 6 51 51 PM" src="https://github.com/malh718/cloud_db_mgmt_pooling_migrations/assets/102617334/04443b1a-a3bf-45a8-9595-29f0c7e0b729">

<img width="972" alt="Screen Shot 2023-10-27 at 7 55 24 PM" src="https://github.com/malh718/cloud_db_mgmt_pooling_migrations/assets/102617334/dafae071-76ed-4f3e-a0fd-4e124df5579f">

# Database Scheme and Database

I was succesfully able to generate an ERD using mysql workbench using GCP

To do this I made sure the hostname, user and password were all correct and it succesfully connected. From here I went to database and reverse engineer, and from here I was able to get my ERD

<img width="1440" alt="Screen Shot 2023-10-27 at 7 16 50 PM" src="https://github.com/malh718/cloud_db_mgmt_pooling_migrations/assets/102617334/fc2ec178-0e59-4295-ab08-8eecd00f769e">

Initially, I was confused about how to do this assignment and I started it off completely incorrectly. I was adding tables and data in SQL Workbench and I now realize that was incorrect. In my repo, I have two screen shots included at ~3pm. Those are incorrect, however I wanted to include them to explain why at the end when I was doing my migrations why there was so much data, and things being removed. 


From here, when I tried connecting my Azure SQL instance, it kept failing. At first, I thought this would be a simple fix. I assumed I had put in my password incorrectly, and it was not going though. I tried making multiple new Mysql instances, and Still I received the same error shown below. This was suprising to me because I had succesfully gotten GCP to work properly, and despite folllowing the same instructions it would not work. I did every variation I could, after about 2 hours of this not working, I had to proceed with the GCP instance. 

<img width="1437" alt="Screen Shot 2023-10-27 at 7 19 43 PM" src="https://github.com/malh718/cloud_db_mgmt_pooling_migrations/assets/102617334/6bdd0ece-ab5f-4c05-a3a1-2a999bdc25e8">

# SQLALCHEMY and Flask Integration 
For GCP I was attempting to integrate with flask, however I received the error below. 

This was after multiple error messages I received. 
I had opened this up on Thursday, and I was attempting to follow the instructions from Zoom Lecture 2. I still received an error, and after troubleshooting to the best of my abilites this is what I got. 

<img width="792" alt="Screen Shot 2023-10-27 at 7 13 44 PM" src="https://github.com/malh718/cloud_db_mgmt_pooling_migrations/assets/102617334/7161bf15-c8aa-4584-a94e-2a1434c660a0">

# Database Migrations with Alembic 
It was at this point that I was attempting to fix my earlier mistakes. I had created tables in SQLWorkbench, so when I was doing the datbase migrations, the additonal tables were removed. That is why for my previous ERD, I had had tables titles Doctor and Patient. So in this screenshot you can see that it removed those tables and I was able alembic upgrade head --sql > migration.sql and push to my github.
<img width="883" alt="Screen Shot 2023-10-27 at 7 41 25 PM" src="https://github.com/malh718/cloud_db_mgmt_pooling_migrations/assets/102617334/31480099-5f89-4573-8a10-6f08e1e8af88">

It was at this point that some of my previous issues and data I had populated came back to bite me, and what I had done previously was causing some issue for me at this point in the data migration. 

<img width="974" alt="Screen Shot 2023-10-27 at 7 44 10 PM" src="https://github.com/malh718/cloud_db_mgmt_pooling_migrations/assets/102617334/c593764c-1d49-44d1-bbac-149e069d70db">


<img width="935" alt="Screen Shot 2023-10-27 at 7 49 17 PM" src="https://github.com/malh718/cloud_db_mgmt_pooling_migrations/assets/102617334/b87c804e-f331-4d57-8f85-5a33692e47e7">
