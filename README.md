# Project 2
### 'CookingMyself'?
![](/app/assets/images/logo_small.png?raw=true)

CookingMyself is an app for those who are searching for great recipes or want to share his/her recipes with others.

Click here to visit CookingMyself https://sheltered-sierra-29314.herokuapp.com/

### Technologies used..
Ruby on Rails | HTML5 | CSS

### Approach taken..
Using my ERD plan, which has three main models(user, recipe, and category) connected to one-to-many(2) and many-to-many(4) sub-models, my first aim was to achieve the MVP which was to add full CRUD functions to my recipe model. I faced up to an unexpected difficulty when I tried to create a form that has many child forms. After hours of research and testing, I was able to create a nested form that handles 'create new' and 'edit' functions which also save sub-models' data including adding multiple tags to a recipe. To provide more friendly and responsive experience to users, I also did my best to create a well designed app using CSS.

![](/planning/CookingMyself_ERD_md.png?raw=true)

### Features.
* Users can create or edit/delete recipes (only possible if recipe's id and user id are matched).
* Users can leave comments and rate recipes.
* Users can save recipes.
* Users can view recipes by category or by list them all.
* Recipe can have multiple category tags.
