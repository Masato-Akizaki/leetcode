select
    FirstName
    , LastName
    , City
    , State
from
    person
left join
    address
    on person.PersonId = address.PersonId