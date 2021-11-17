-- Query to check successful load
SELECT * FROM listings;

SELECT * FROM air_quality;


-- Join tables on county_id
SELECT listings.id, listings.state_initial, listings.total_listing_count, listings.county, air_quality.median_aqi
FROM listings
INNER JOIN air_quality
ON listings.state = air_quality.state and listings.county = air_quality.county;
