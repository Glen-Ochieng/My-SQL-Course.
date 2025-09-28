
UPDATE worker
SET first_name = 'glen'
WHERE first_name = 'Glen';

# OR
UPDATE worker
SET first_name = REPLACE(first_name, 'Glen', 'glen');

