with counts as (
    SELECT 
        name, 
        count(*) as counted, 
        string_agg(countrycode, ', ') as countries 
    from {{ source('public', 'city') }} 
    group by name
)
select * from counts where counted > 1
order by counted desc