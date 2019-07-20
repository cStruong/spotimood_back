# SpotiMood API
SpotiMood is a web application that allows users to create a playlist that is pre-filled based on their mood and genre preferences whose UI on the [FrontEnd](https://github.com/cStruong/spotimood_front) is modeled and inspired by Spotify and built using React.js with a Ruby on Rails backend API.

## Introduction
SpotiMood is our Module 4 project where we were first introduced to the React library to build a Single Page Application on a  "virtual" DOM. 

SpotiMood is a web application that allows users to create a playlist that is pre-filled based on their mood and genre preferences whose UI is modeled and inspired by Spotify. Playlist comes with pre-filled songs seeded from a database. Each song card contains song information along with an embedded youtube video.

## Table of Contents
1. [Technologies](#technologies)
2. [Setup](#setup)
3. [Site](#site)
4. [Authors](#authors)

## Technologies<a name="technologies"></a>
* [Ruby on Rails](https://rubyonrails.org/) - a Ruby framework which is used to build the API to store user data via PosgreSQL.

## Setup / Startup (locally) <a name="setup"></a>
To run this project locally, while in the project directory run (make sure PosgreSQL is running)
```
bundle install
```
then
```
rails db:create && rails db:migrate && rails db:seed
```
to finally start the server
 ```
rails s -p 3005
```

## Site <a name="site"></a>
### Example Page

![Example API Page](/assets/spotimoodexampleAPI.png)

### Example API Endpoints
```
localhost:3005/playlists
```
or
```
localhost:3005/songs
```
or
```
localhost:3005/themes
```

## Authors <a name="authors"></a>

| <img src="https://avatars0.githubusercontent.com/u/46384458?s=460&v=4" alt="alt text" width="10%" height="10%"> | 
<img src="https://avatars1.githubusercontent.com/u/45888821?s=460&v=4" alt="alt text" width="10%" height="10%"> 
| :-: | :-: |
| [Christopher Truong](https://github.com/cStruong) | [Sadie Bennett](https://github.com/sadiebennett1) |
