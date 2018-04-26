**Team Name**: HouseM8
**Team Members**: Jessica Hsiao, Emily Hu, Leon Kwak, Michelle Zhang
**Link to final demo**: **TODO**

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
- owners can listing creation/destroying (supports file uploads for images)
- seekers can look through all listings 
- seekers can contact owners
- owners can view seekers who are interested

**Division of Labor**:
Emily: Handled user creation, listing creation/destroying, file uploads
Leon:
Michelle: Made views for listings and implemented gems/ did styling in html.erb files
Jess: Made controllers and models, implemented functionality to display interest in listings for house seekers, recorded screencast
