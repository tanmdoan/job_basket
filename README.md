job_basket
==========
Job Basket is a tool for Turing students and Alunni to be a one stop shop for their job search.
Students will have a set of tools available to them to track where they are in the job process and do
research about different job prospects.  Students and Alumni can add data about different companies, including info
about their location, size, and if they are hiring developers at that time.

This was a greenfield project but the plans for this are to be a legacy project for future Turing students to improve on.




Current Functionality
=====================
-  Filter by a single location
-  Filter for remote or on site jobs
- Using the job- remotely gem to pull in jobs from the we work remote rss feed and Stack Exchange Jobs
- Github jobs get pulled in by going to the 'add jobs' link
- User can manually add jobs
- User can manually add github jobs
- Users can add comments about companies
- cron job to delete and build jobs every 6 weeks that aren't user created

Problems
=========
- Doesn't use services
- Doesn't use background worker for the github jobs
- Can't filter by multiple loactions(don't know if this is a good things or filtering is good the way it works)
- Need more resources(example resume, example interview questions)
- Maybe we can have a way to share jobs with your friends
- Have a better way to link companies and jobs
- Need a way to have alumni working at companies included
- Currently we ping the GitHub API to make sure they are part of the Turing School orginzation but that person has to make that orginzation public.  It isn't public by default.
