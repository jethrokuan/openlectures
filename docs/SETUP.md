# Mac OSX
1. Install [homebrew](http://brew.sh/)

    `ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"`

2. Install [rvm](https://rvm.io/rvm/install):

    `\curl -sSL https://get.rvm.io | bash`

3. Install ruby 2.1.0

    `rvm install 2.1.0`

4. Install Postgresql

    `brew install postgres`

5. Start the Postgres server

    `postgres -D /usr/local/var/postgres`

6. Create Postgres Role 'openlectures'

    `createuser openlectures -d`


  Check to make sure the user was successfully created:

  ```
  psql -d postgres
  \du
  ```

  You should see the following output:
  ```
                                 List of roles
    Role name   |                   Attributes                   | Member of
  --------------+------------------------------------------------+-----------
   Username     | Superuser, Create role, Create DB, Replication | {}
   openlectures | Create DB                                      | {}
  ```

7. Clone the repository

    `cd && git clone https://github.com/jethrokuan/openlectures/ openlectures`

8. Enter root directory of project, and install required gems

    `cd openlectures && bundle install`

9. Install [tmuxinator](https://github.com/aziz/tmuxinator)

    `gem install tmuxinator`

10. Symlink openlectures tmuxinator layout for coding

    `ln openlectures.yml ~/.tmuxinator/openlectures.yml`

11. Install the [LiveReload](http://livereload.com) [CHROME](https://chrome.google.com/webstore/detail/livereload/jnihajbhpnppcggbcgedagnkighmdlei
) or [SAFARI](http://download.livereload.com/2.0.9/LiveReload-2.0.9.safariextz
) extension

12. Start coding!

    `mux start openlectures`

13. The recommended setup configuration will look like this:

![Screenshot of Workspace](http://i.imgur.com/CXPFY1K.png?1?6089)

#Linux

#Windows
