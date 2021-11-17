-- Create Two Tables
CREATE TABLE listings (
  id INT PRIMARY KEY,
  county TEXT,
  state_initial TEXT,
  state TEXT,
  total_listing_count INT,
  average_price INT,
  median_listing_price INT,
  active_listing_count INT,
  median_days_on_market INT
);



CREATE TABLE air_quality (
  id INT PRIMARY KEY,
  state TEXT,
  county TEXT,
  year INT,
  median_aqi INT
);