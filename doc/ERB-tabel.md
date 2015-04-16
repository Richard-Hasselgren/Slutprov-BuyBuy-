ERB - Tabell
============

                     

### USER

     

    -   id

    -   f\_name

    -   l\_name

    -   email/username

    -   SHOP-list\_id

     

                     

### SHOP-list              

(Kan ha många USERs och USER kan ha många listor)

    -   id

    -   name

    -   items

     

         

 

### Privileg

 

    -   USER\_id

    -   SHOP-list\_id  (många till många)

    -   id

    -   accesses
