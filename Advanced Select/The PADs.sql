-- Author: Filipe Spadetto

SELECT [name] + '(' + LEFT(occupation, 1) + ')'
FROM   occupations
ORDER  BY [name] ASC;

SELECT 'There are a total of '
       + RTRIM(Cast(COUNT(Occupation) AS CHAR))
       + ' ' + LOWER(Occupation) + 's.'
FROM   occupations
GROUP  BY occupation
ORDER  BY COUNT(Name) ASC,
          Occupation;
