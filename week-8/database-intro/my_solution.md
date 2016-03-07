<!-- 1. Select all data for all states. -->
<pre>
SELECT * FROM states;
</pre>

<!-- 2. Select all data for all regions. -->
<pre>
SELECT * FROM regions;
</pre>

<!-- 3. Select the state_name and population for all states. -->
<pre>
SELECT state_name, population FROM states;
</pre>

<!-- 4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top. -->
<pre>
SELECT state_name, population FROM states ORDER BY population DESC;
</pre>

<!-- 5. Select the state_name for the states in region 7. -->
<pre>
SELECT state_name FROM states WHERE region_id = 7;
</pre>

<!-- 6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense. -->
<pre>
ELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density;
</pre>

<!-- 7. Select the state_name for states with a population between 1 million and 1.5 million people -->
<pre>
SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;
</pre>

<!-- 8. Select the state_name and region_id for states ordered by region in ascending order. -->
<pre>
SELECT state_name, region_id FROM states ORDER BY region_id;
</pre>

<!-- 9. Select the region_name for the regions with "Central" in the name. -->
<pre>
SELECT region_name FROM regions WHERE region_name LIKE '%Central';
</pre>

<!-- 10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables). -->
<pre>
SELECT region_name, state_name FROM states INNER JOIN regions ON states.region_id=regions.id ORDER bY region_id;
</pre>

![SCHEMA](/schema.PNG)

<!--
What are databases for?
Databases are use for storing information and allows efficent access
to data from other applictions.

What is a one-to-many relationship?
One-to-many relationships in the context of database structures refers to
when one data element can be referenced to many other elements.  For example, in our contact information, most people can have multiple mobile phone numbers but for the most part most mobile phone numbers belongs to just one person.

What is a primary key? What is a foreign key? How can you determine which is which?
A primary is a unique record in a database table. A foreign key is
a field in table that is a primary key in another table.

How can you select information out of a SQL database? What are some general guidelines for that?
You can use the SELECT clause to query information from an SQL database.
The general guideline is that you want to SELECT the data you required,
from the table that stores that information and you can filter or sort the
information based on your criteria.
-->

