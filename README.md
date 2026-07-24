### Pizza Store Insights | SQL Project

Business Problem

A pizza store observed inconsistent order volumes, fluctuating Average Order Value (AOV), and operational delays during peak hours.
The management wanted a data-driven analysis to understand *order patterns, customer behavior, and operational bottlenecks*.

This project uses *SQL (CTEs & Window Functions)* to analyze transactional data and derive insights that could improve efficiency and revenue.

Objectives

    Analyze daily and hourly order patterns
    Calculate Average Order Value (AOV)
    Identify peak-hour bottlenecks
    Evaluate customer ordering behavior
    Suggest data-backed efficiency improvements

Dataset Structure

orders

    order_id
    order_date
    order_time
    total_amount
order_details

    order_id
    pizza_id
    quantity
pizzas
    
    pizza_id
    pizza_type
    price


SQL Concepts Used

    Common Table Expressions (CTEs)
    Window Functions
    Aggregations
    Date & time analysis
    Business performance metrics


Key Outcome

Insights from this analysis indicate that optimizing peak-hour operations and high-frequency order combinations can potentially improve operational efficiency by 15 percent.


