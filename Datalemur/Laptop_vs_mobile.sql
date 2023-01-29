
  select count(device_type) as laptop_views, (select count(device_type)
  from viewership
  where device_type = 'tablet' Or device_type = 'phone') as mobile_views
  from viewership
  where device_type = 'laptop'
