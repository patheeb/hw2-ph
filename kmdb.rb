# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

 Actor.destroy_all 
 Movie.destroy_all 
 Role.destroy_all 
 Studio.destroy_all 



# Generate models and tables, according to the domain model.
# TODO!

#See migrate scripts and schema.rb db script


# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

#puts "studios: #{Studio.all.count}"

new_studio = Studio.new
new_studio[ "studio name" ] = "Warner Bros."
new_studio.save

#puts "studios: #{Studio.all.count}"

warner_bros = Studio.find_by({ "studio name" => "Warner Bros." })


#puts "movies: #{Movie.all.count}"

new_movie = Movie.new
new_movie[ "movie_name"] = "Batman Begins"
new_movie[ "year_released"] = 2005
new_movie[ "mpaa_rating"] = "PG-13"
new_movie[ "studio_id"] = warner_bros["id"]
new_movie.save

#puts "movies: #{Movie.all.count}"


new_movie2 = Movie.new
new_movie2[ "movie_name"] = "The Dark Knight"
new_movie2[ "year_released"] = 2008
new_movie2[ "mpaa_rating"] = "PG-13"
new_movie2[ "studio_id"] = warner_bros["id"]
new_movie2.save

#puts "movies: #{Movie.all.count}"

new_movie3 = Movie.new
new_movie3[ "movie_name"] = "The Dark Knight Rises"
new_movie3[ "year_released"] = 2012
new_movie3[ "mpaa_rating"] = "PG-13"
new_movie3[ "studio_id"] = warner_bros["id"]
new_movie3.save

#puts "movies: #{Movie.all.count}"


#puts "actors: count #{Actor.all.count}"

new_actor1 = Actor.new
new_actor1[ "first_name" ] = "Christian"
new_actor1[ "last_name" ] = "Bale"
new_actor1[ "character_name" ] = "Bruce Wayne"
new_actor1.save

#puts "actors: count #{Actor.all.count}"

new_actor2 = Actor.new
new_actor2[ "first_name" ] = "Michael"
new_actor2[ "last_name" ] = "Caine"
new_actor2[ "character_name" ] = "Alfred"
new_actor2.save

#puts "actors: count #{Actor.all.count}"
 
new_actor3 = Actor.new
new_actor3[ "first_name" ] = "Liam"
new_actor3[ "last_name" ] = "Neeson"
new_actor3[ "character_name" ] = "Ra's Al Ghul"
new_actor3.save

#puts "actors: count #{Actor.all.count}"

new_actor4 = Actor.new
new_actor4[ "first_name" ] = "Katie"
new_actor4[ "last_name" ] = "Holmes"
new_actor4[ "character_name" ] = "Rachel Dawes"
new_actor4.save

#puts "actors: count #{Actor.all.count}"

new_actor5 = Actor.new
new_actor5[ "first_name" ] = "Gary"
new_actor5[ "last_name" ] = "Oldham"
new_actor5[ "character_name" ] = "Commissioner Gordon"
new_actor5.save

#puts "actors: count #{Actor.all.count}"

new_actor6 = Actor.new
new_actor6[ "first_name" ] = "Heath"
new_actor6[ "last_name" ] = "Ledger"
new_actor6[ "character_name" ] = "Joker"
new_actor6.save

#puts "actors: count #{Actor.all.count}"

new_actor7 = Actor.new
new_actor7[ "first_name" ] = "Aaron"
new_actor7[ "last_name" ] = "Eckhart"
new_actor7[ "character_name" ] = "Harvey Dent"
new_actor7.save

#puts "actors: count #{Actor.all.count}"

new_actor8 = Actor.new
new_actor8[ "first_name" ] = "Maggie"
new_actor8[ "last_name" ] = "Gyllenhaal"
new_actor8[ "character_name" ] = "Rachel Dawes"
new_actor8.save

#puts "actors: count #{Actor.all.count}"

new_actor9 = Actor.new
new_actor9[ "first_name" ] = "Tom"
new_actor9[ "last_name" ] = "Hardy"
new_actor9[ "character_name" ] = "Bane"
new_actor9.save

#puts "actors: count #{Actor.all.count}"

new_actor10 = Actor.new
new_actor10[ "first_name" ] = "Joseph"
new_actor10[ "last_name" ] = "Gordon-Levitt"
new_actor10[ "character_name" ] = "John Blake"
new_actor10.save

#puts "actors: count #{Actor.all.count}"

new_actor11 = Actor.new
new_actor11[ "first_name" ] = "Anne"
new_actor11[ "last_name" ] = "Hathaway"
new_actor11[ "character_name" ] = "Selina Kyle"
new_actor11.save

#puts "actors: count #{Actor.all.count}"

#creating association codenames for each movie and actor

batman_begins = Movie.find_by({ "movie_name" => "Batman Begins" })
dark_night = Movie.find_by({ "movie_name" => "The Dark Knight" })
dark_night_rises = Movie.find_by({ "movie_name" => "The Dark Knight Rises" })

christian_bale = Actor.find_by({ "last_name" => "Bale" })
michael_caine = Actor.find_by({ "last_name" => "Caine" })
liam_neeson = Actor.find_by({ "last_name" => "Neeson" })
katie_holmes = Actor.find_by({ "last_name" => "Holmes"})
gary_oldham = Actor.find_by({ "last_name" => "Oldham" })
heath_ledger = Actor.find_by({ "last_name" => "Ledger" })
aaron_eckhart = Actor.find_by({ "last_name" => "Eckhart" })
maggie_gyllenhaal = Actor.find_by({ "last_name" => "Gyllenhaal"})
tom_hardy = Actor.find_by({ "last_name" => "Hardy" })
joseph_gordon_levitt = Actor.find_by({ "last_name" => "Gordon-Levitt" })
anne_hathaway = Actor.find_by({ "last_name" => "Hathaway" })


role1 = Role.new
role1["movie_id"] = batman_begins["id"]
role1["actor_id"] = christian_bale["id"]
role1["character_role"] = christian_bale["character_name"]
role1.save

#puts "roles: count #{Role.all.count}"


role2 = Role.new
role2["movie_id"] = batman_begins["id"]
role2["actor_id"] = michael_caine["id"]
role2["character_role"] = michael_caine["character_name"]
role2.save

#puts "roles: count #{Role.all.count}"

role3 = Role.new
role3["movie_id"] = batman_begins["id"]
role3["actor_id"] = liam_neeson["id"]
role3["character_role"] = liam_neeson["character_name"]
role3.save

#puts "roles: count #{Role.all.count}"

role4 = Role.new
role4["movie_id"] = batman_begins["id"]
role4["actor_id"] = katie_holmes["id"]
role4["character_role"] = katie_holmes["character_name"]
role4.save

#puts "roles: count #{Role.all.count}"

role5 = Role.new
role5["movie_id"] = batman_begins["id"]
role5["actor_id"] = gary_oldham["id"]
role5["character_role"] = gary_oldham["character_name"]
role5.save

#puts "roles: count #{Role.all.count}"

role6 = Role.new
role6["movie_id"] = dark_night["id"]
role6["actor_id"] = christian_bale["id"]
role6["character_role"] = christian_bale["character_name"]
role6.save

#puts "roles: count #{Role.all.count}"

role7 = Role.new
role7["movie_id"] = dark_night["id"]
role7["actor_id"] = heath_ledger["id"]
role7["character_role"] = heath_ledger["character_name"]
role7.save

#puts "roles: count #{Role.all.count}"

role8 = Role.new
role8["movie_id"] = dark_night["id"]
role8["actor_id"] = aaron_eckhart["id"]
role8["character_role"] = aaron_eckhart["character_name"]
role8.save

#puts "roles: count #{Role.all.count}"

role9 = Role.new
role9["movie_id"] = dark_night["id"]
role9["actor_id"] = michael_caine["id"]
role9["character_role"] = michael_caine["character_name"]
role9.save

#puts "roles: count #{Role.all.count}"

role10 = Role.new
role10["movie_id"] = dark_night["id"]
role10["actor_id"] = maggie_gyllenhaal["id"]
role10["character_role"] = maggie_gyllenhaal["character_name"]
role10.save

#puts "roles: count #{Role.all.count}"

role11 = Role.new
role11["movie_id"] = dark_night_rises["id"]
role11["actor_id"] = christian_bale["id"]
role11["character_role"] = christian_bale["character_name"]
role11.save

role12 = Role.new
role12["movie_id"] = dark_night_rises["id"]
role12["actor_id"] = gary_oldham["id"]
role12["character_role"] = gary_oldham["character_name"]
role12.save

#puts "roles: count #{Role.all.count}"

role13 = Role.new
role13["movie_id"] = dark_night_rises["id"]
role13["actor_id"] = tom_hardy["id"]
role13["character_role"] = tom_hardy["character_name"]
role13.save

#puts "roles: count #{Role.all.count}"


role14 = Role.new
role14["movie_id"] = dark_night_rises["id"]
role14["actor_id"] = joseph_gordon_levitt["id"]
role14["character_role"] = joseph_gordon_levitt["character_name"]
role14.save

#puts "roles: count #{Role.all.count}"

role15 = Role.new
role15["movie_id"] = dark_night_rises["id"]
role15["actor_id"] = anne_hathaway["id"]
role15["character_role"] = anne_hathaway["character_name"]
role15.save

#puts "roles: count #{Role.all.count}"


# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

movies=Movie.all

for film in movies
    studio_linkage = Studio.find_by({"id" => film["studio_id"] })
    #puts studio_linkage["studio name"]
    puts "#{film.movie_name}   #{film.year_released}   #{film.mpaa_rating}   #{studio_linkage["studio name"]}"
end




# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

roles=Role.all

for performance in roles
        movie_linkage = Movie.find_by({"id" => performance["movie_id"]})
        #puts movie_linkage.inspect
        
        actor_linkage = Actor.find_by({"id" => performance["actor_id"]})
        #puts actor_linkage.inspect

    puts "#{movie_linkage["movie_name"]}    #{actor_linkage["first_name"]} #{actor_linkage["last_name"]}     #{actor_linkage["character_name"]}"

end