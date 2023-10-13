In this Sprint, we added two new features in NodeBB. 

1. Searching for Topics
2. Endorsing a Post


1. SEARCH FEATURE
From the NodeBB homepage, click on any of the listed categories (Announcements, General Discussion, Comments & Feedback, Blogs). You will then see a search bar next to the "New Topic" button. This search bar is fully functional and will filter the topics listed by the input parameter. Currently, it will list topics which title's include the search parameter.

Automated Tests:
Automated tests can be found in `test/topics.js`. Specifically, lines 60-127 in this file contain automated tests which test the search feature given a parameter. This tests the functionality of the `searchTopicByTitle` function implemented in the model.

These tests are sufficient since the most significant change is including the new `searchTopicByTitle` function, which is used by the views/controllers to retrieve the proper topics to be listed after a search. The infrastructure for listing the topics is the same as the current process in NodeBB, so the main change to test is whether this function works properly.  

You can run `npm run test` to test the entire suite, or simply `npm test test/topics.js` to test only this file.

2. ENDORSE FEATURE
First, be logged in as an admin or an instructor. From the NodeBB homepage, click on any category and then click on any topic within that category. For each post within the topic, you should see an "endorse" button in the bottom right, next to the "Reply" button. By clicking this button, the post should change to an "endorsed" status, which includes a message saying that the post is endorsed.

Unfortunately, we were unable to get this feature fully functioning. The backend fully works (as noted by the automated tests below), and the frontend works (in displaying the UI features relating to the feature).

Automated Tests:
Automated tests for this feature can be found in `test/posts.js`. Specifically, lines 305-324 contain the automated test which test whether endorsing properly updates the backend values for each post. This tests the functionality of the functions implemented within the model.

These tests are sufficient since the main changes done are regarding adding this new "endorsed" field to a post. Therefore, we must test whether updates and retrievals of this value are consistent with what is expected. 

You can run `npm run test` to test the entire suite, or simply `npm test test/posts.js` to test only this file.
