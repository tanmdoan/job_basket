# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



  Job.create(
    title: "Front End Engineer",
    description: "Tableau Software is one of the fastest-growing technology companies in the world. Our mission is simple: we help people see and understand their data. We currently serve everyone from the executive suites of Fortune 500 companies to the jungles of Central America, from immunology research labs to high school robotics club meetings. Our software can be found anywhere people have data and questions. Tableau’s culture is casual and high-energy. We value work/life balance, efficiency, simplicity, freakishly friendly customer service, and making a difference in the world.",
    location: "New York",
    posted_on: "Github"
  )

  Job.create(
  title: "Ruby on Rails Developer – Web Applications",
  description: "Loggly is seeking a multi-talented business applications developer who wants to see their work directly impact the business. Loggly is the world’s most popular cloud-based enterprise-class log management solution. We’ve recently received $15M in new funding to accelerate our rapid growth and we’re staffing up.

  We’re a small team so every individual matters. Our culture is fun, fast-paced, performance-oriented, open, collegial, and we are constantly pushing the technology envelope to the edge! All of our positions are based in the financial district of San Francisco, CA right on top of a BART and Muni stop.

  About the Job

  You'll be helping us build awesome analytics applications to collect Loggly product usage data, integrate with other Loggly systems and public SaaS applications. This app helps Loggly make valuable business and technology decisions.

  Your code will help facilitate sign-ups, test alternative user flow, trigger actions based on product usage and behavior, capture key metrics into our analytics database, integrate with other SaaS products like Salesforce, Marketo, Google Analytics and others. You'll be working with Python, JavaScript, HTML5/CSS3, Angular, AJAX, jQuery, Elasticsearch, MySQL and Amazon AWS.

  We believe strongly in collecting and analyzing quantitative data to help guide our decisions. To that end, you'll be able to impact every single team at Loggly. We’re regularly pushing out new code, so expect your contributions to be put to use quickly.",
  location: "San Francisco",
  posted_on: "Github"
  )
