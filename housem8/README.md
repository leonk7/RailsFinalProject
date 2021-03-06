**Team Name**: HouseM8

**Team Members**: 
- Jessica Hsiao
- Emily Hu
- Leon Kwak
- Michelle Zhang

**Link to final demo**: www.tinyurl.com/railsvid

**Basic Idea**: Our web application provides a platform for house owners to post listings of properties that they are trying to sell or rent. House seekers can swipe through listings in their price range and contact owners. 

**Models and Description**:
**House Owner**
- has name, email, gender
- can create listings and destroy them
- can view house seekers who are interested in their property

**House Seeker**
- has name, email, price range
- can look through listings and find the ones they like
- can email owners of listings that they like
 
**Listing**
- has title, description, address, price, lease term
- belongs to house owner

**Features**: 
- users (house seeker/owner) can create profile
- owners can create/destroy listings (supports file uploads for images)
- seekers can look through all listings 
- seekers can contact owners through email
- owners can view how many seekers have liked their post

**Division of Labor**:
- Emily: Handled user creation, listing creation/destroying, updating likes for owners to view, file uploads (used carrier view gem)
- Leon: Created layout and view for house seekers, implemented mailto for seekers to contact owners, made the screencast
- Michelle: Made views for listings and implemented gem (materialize-sass)/ did styling in html.erb files
- Jess: Made controllers and models, implemented homepage view for house seekers to see listings, fixed listing styling
