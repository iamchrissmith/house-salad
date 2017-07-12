# README

## Mid Mod Assessment

This project uses Rails 5.1.2 and Ruby 2.4.1 to allow the users to search for their U.S. Congressional Representatives by State.

To install:
1. Clone this repo
2. `cd house-salad`
3. Run `bundle` and `rake db:setup`
4. Start your server (`rails s`) and visit `http://localhost:3000`
5. Search by State to see the Congressional Representatives

To Run Tests:
[Follow Steps 1-3 above]
4. run `rspec`
This will run the Feature and service specs.  If you want to run fresh tests you can run the command `rake vcr:wipe`. This will delete your previous cassettes and run the rspec to record fresh cassettes.
