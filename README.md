# Module 7 Challenge - Pewlett-Hackard-Analysis (SQL, Postgres)
## Student Name: Christopher Mastrangelo

The following queries and data files submitted with this assignment are found in the following folders/files:
<UL><LI><A href="https://github.com/gcmastra/Pewlett-Hackard-Analysis/blob/e06cab34405b02c079313fa58319266be5d19d75/Queries/Employee_Database_Challenge.sql" target="_null">This file contains the queries used to create the two deliverables</A></LI>
  <LI>These four files are found in the Data folder: </LI>
  <UL>
  <LI>retirement_titles.csv</LI>
    <LI>retiring_titles.csv</LI>
    </LI><LI>unique_titles.csv</LI>
  <LI>mentoring_eligibility.csv
  </LI></UL></UL>
  
  ## Summary
  The "retiring_titles" table summarizes the total number of employees who are eligible for retirement grouped by their job title.   
  <br>
  ![image](https://user-images.githubusercontent.com/86205000/129491887-e784b222-ca25-4b19-8a01-c71b114138e5.png)
  <br>
  From this table we can see that the title with the most people eligible for retirement is the "Senior Engineer" title 
  which also happens to be the most common job title for current employees so this is not really a surprise. 
  The total number of employees who will be eligible for retirement over the next three years is 90398, or approximately 30,000 per year. 
  With the data provided in this deliverable, it should be possible to develop a plan on how to address this "brain drain." 
  
  One strategy for the way to retain some personnel who are eligible to retire is to repurpose their job title to become mentors to other employees
  within their same department  This strategy could help with retention while also helping junior employees with mapping their career paths.
  
  The file "mentoring_eligibility" contains the names and titles of 1549 employees who are the same age and are currently exactly 10 years away from retirement.  
  Here is a sample of what the table looks like . . . 
<br>  ![image](https://user-images.githubusercontent.com/86205000/129492658-a0802dec-0514-4ff0-bad8-b5b3273fb520.png)
 <br>
 Management requested we identify a group of employees who would be possible particpants in a mentoring pilot program.  Selecting this group by age gives us a slice of the workforce who will be eligible for retirement at around the same time.  With a median length of employment of 28.46 years with the company, this group represents considerable intellectual capital and experience.  Participation in a pilot study, in addition to the obvious goal of testing the new mentoring program, could also improve the retention of this group of experienced employees because they might see their role in the company as being valued by management, and if the pilot program is successful, might want to become mentors themselves when the program expands. 

### Technical Notes
In addition to the deliverable report here are a few more issues I encountered while working on Module 7 course materials

In section 7.2.2 it says the icon to run code in PgAdmin is the lightning bolt (below) but in my version its a triangle and in other software I have used before the button is a triangle *(see second image). How it says it in the documentation- 
![image](https://user-images.githubusercontent.com/86205000/129492186-6598cd7b-639b-4848-b9a2-8b32f06683a7.png)
 <br>This is what it looks like on my screen which is a Windows laptop<br>
 ![image](https://user-images.githubusercontent.com/86205000/129492254-24ef46de-0b18-4978-aa47-bd4f779b9164.png)

 
Additional issues encountered during this Module . . .
<ol>
<li>On Tuesday August 3, I got the Postgres pgAdmin to finally open after I rebooted the laptop right at the beginning of class time so I missed most of the class.</li>
<li>Note: You must log in to the Class website at least every 2 days or you get a warning message asking why you have not logged in </li>
<li>While in section 7.2.3 ran into a problem trying to import the data from the CSV.  I waited until class was almost over and checked Slack and it turned out other people in the class were having the same problem. So I added my name to the list of people having problems, and after class Jonathan helped me by opening a new Zoom session and sending me the link.I must remember to mention Jonathan in the Survey this week.</li>
</ol>
