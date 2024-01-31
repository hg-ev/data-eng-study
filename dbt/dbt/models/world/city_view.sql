SELECT 
    id, 
    name, 
    countrycode, 
    district
    population
FROM {{ source('public', 'city') }}