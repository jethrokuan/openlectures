#How to Contribute
Thank you for your interest in making openlectures better!

##Guidelines
Like any open-source project, we must have guidelines for contributions. It helps protect the quality of code, and gives us at openlectures the confidence of making changes without breaking too many things.

### Steps
#### Understanding the Git model
For openlectures, we use the "flow" model.

There are two branches that exist with an infinite lifetime, `master` and `development`. 

`origin/master` will be the main branch where source code of HEAD always reflects a production-ready state. `origin/development` is the main branch where the source code of HEAD will always reflect the latest _delivered_ development changes. When the code in `origin/development` is considered to be production-ready, it can be then rebased into master.

All features are to be added by branching off the `develop` repository.

#### Working on a new feature

1. Clone the repository into your local filesystem: `git clone https://github.com/jethrokuan/openlectures.git openlectures`

2. Branch off the development branch:

    ``` git
    git checkout -b myfeature development
    ```

3. Do your thing.

4. Once you're satisfied, merge back into the development branch:

  ``` git
  git checkout development
  git merge --no-ff myfeature
  git branch -d myfeature
  git push origin development
  ```
