## Name and Student ID
Qucheng Zhang, s3713572

One people group

## The highest level want to achieve 
Distinction level


## Time report
User	Email	Client	Project	Task	Description	Billable	Start date	Start time	End date	End time	Duration
S3713572	s3713572@student.rmit.edu.au				Follow the tutorial to create the layout	No	2020/5/18	1:01:06	2020/5/18	1:16:12	0:15:06
S3713572	s3713572@student.rmit.edu.au				follow the tutorial to set the guardfile	No	2020/5/18	1:16:34	2020/5/18	2:32:48	1:16:14
S3713572	s3713572@student.rmit.edu.au				User model valiation	No	2020/5/18	2:44:10	2020/5/18	3:01:50	0:17:40
S3713572	s3713572@student.rmit.edu.au				user avatar	No	2020/5/18	3:30:06	2020/5/18	3:52:29	0:22:23
S3713572	s3713572@student.rmit.edu.au				basic login	No	2020/5/19	5:17:44	2020/5/19	5:17:51	0:00:07
S3713572	s3713572@student.rmit.edu.au					No	2020/5/19	5:17:53	2020/5/19	5:17:56	0:00:03
S3713572	s3713572@student.rmit.edu.au				basic login	No	2020/5/19	5:18:00	2020/5/19	5:42:44	0:24:44
S3713572	s3713572@student.rmit.edu.au				Advance login	No	2020/5/19	5:42:58	2020/5/19	6:06:07	0:23:09
S3713572	s3713572@student.rmit.edu.au				Updating showing and deleting user	No	2020/5/19	6:06:59	2020/5/19	6:45:15	0:38:16
S3713572	s3713572@student.rmit.edu.au				user-microposts	No	2020/5/19	6:45:29	2020/5/19	7:39:58	0:54:29
S3713572	s3713572@student.rmit.edu.au				design header	No	2020/5/19	8:40:13	2020/5/19	9:09:23	0:29:10
S3713572	s3713572@student.rmit.edu.au				fix bug	No	2020/5/19	23:47:40	2020/5/20	0:16:18	0:28:38
S3713572	s3713572@student.rmit.edu.au					No	2020/5/20	0:52:08	2020/5/20	0:52:25	0:00:17
S3713572	s3713572@student.rmit.edu.au				building news list	No	2020/5/20	1:08:05	2020/5/20	2:41:49	1:33:44
S3713572	s3713572@student.rmit.edu.au				building news list	No	2020/5/20	2:57:05	2020/5/20	4:33:18	1:36:13
S3713572	s3713572@student.rmit.edu.au					No	2020/5/20	7:17:24	2020/5/20	7:17:27	0:00:03
S3713572	s3713572@student.rmit.edu.au				my settings	No	2020/5/20	7:17:38	2020/5/20	8:24:14	1:06:36


## Building the rails App

1. Run `docker-compose build` after every Gemfile change or to build the containers

## Running the rails App
1. Run `docker-compose up` to run the rails app
2. hit `http://0.0.0.0:3000`

## Debugging the Rails App

1. Add `binding.pry` or `byebug` in your code where you want to put the breakpoint.
2. Run `docker-compose run --service-port --rm web` in your console to run the rails app in Debug mode
3. Access the endpoint you are debugging to go into debugging mode in pry or byebug

## Rails CHEATSHEET using docker

1. `docker-compose run --rm web rails new . --force --no-deps --database=postgresql`
2. `docker-compose run --rm web bundle install`
3. `docker-compose run --rm web bundle update`
4. `docker-compose run --rm web rails db:create`
5. `docker-compose run --rm web rails db:migrate`
6. `docker-compose run --rm web rails db:drop`
7. `docker-compose run --rm web rails assets:precompile`
8. `docker-compose run --rm web rails console`
9. `docker-compose run --rm web rails test`


"# RAD2020_s3713572" 
#   R A D 2 0 2 0 _ s 37 1 3 5 7 2 
 
 