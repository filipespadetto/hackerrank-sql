SELECT NAME + '(' + LEFT(occupation, 1) + ')'
FROM   occupations
ORDER  BY NAME ASC;

SELECT 'There are a total of '
       + Rtrim(Cast(Count(occupation) AS CHAR))
       + ' ' + Lower(occupation) + 's.'
FROM   occupations
GROUP  BY occupation
ORDER  BY Count(NAME) ASC,
          occupation;