# elevate-lab-SQL-Task-7
What I Learned (SQL Views & Joins)
I learned that a view is like a saved SELECT query that acts like a virtual table — it doesn't store data but shows results when I query it.

I can use CREATE VIEW to simplify complex queries, like using joins or grouping, and reuse them easily.

Views help me hide sensitive columns and only show what I want (like name and city), which is useful for data security.

If a view is based on a single table and doesn't use GROUP BY, JOIN, or DISTINCT, then it is usually updatable — I can update data through the view.

I also learned how to create views with joins to show things like total spending per customer using SUM() and GROUP BY.

I must be careful with column names and make sure rows exist when updating through a view.

To remove a view, I use DROP VIEW view_name.

Overall, views help me organize, secure, and reuse SQL logic in a clean way.
