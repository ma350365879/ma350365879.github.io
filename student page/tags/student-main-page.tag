<student-main-page>
    <div id="left">
        <div class="tabs">
            <ul class="tab-links">
                <li class="active"><a href="#tab1">Learning</a></li>
                <li><a href="#tab2">Review</a></li>
                <li><a href="#tab3">Mastered</a></li>
                <li><a href="#tab4">Report</a></li>
            </ul>
            <div class="tab-content">
                <div id="tab1" class="tab active">
                    <!-- hightlighted learning objective goes here-->
                    <hightlighted-learning-objectives></hightlighted-learning-objectives>
                    <!-- folders goes here -->
                    <folder-container></folder-container>
                </div>
                <div id="tab2" class="tab">
                    <p>Tab #2 content goes here!</p>
                </div>
                <div id="tab3" class="tab">
                    <p>Tab #3 content goes here!</p>
                </div>
                <div id="tab4" class="tab">
                    <p>Tab #4 content goes here!</p>
                </div>
            </div>
        </div>
    </div>
    <div id="right">
        <div id="profile_region">
            <div id="user_picture">
                <img src="pic/default_user_pic.png" />
            </div>
            <div id="user_profile_container">
                <p id="profile_top">{username}&nbsp;|&nbsp;<a href=".." onclick = {logOut}>Logout</a></p>
                <div id="learning_procedure">
                    <div id="mastered"></div>
                    <div id="learning"></div>
                    <div id="not_learned"></div>
                </div>
                <div>
                    <div id="message">
                        <img src="pic/envelope.png">
                        <p>inbox</p>
                    </div>
                    <div id="setting">
                        <img src="pic/setting.png">
                        <p>setting</p>
                    </div>
                </div>
            </div>
        </div>
        <div id="white_board">
            <!--<p>Announcement Board</p>-->
            <div></div>
        </div>
        <p id="tips">
            
        </p>
        <div id="buttons">
            <a href="#LO/{learningObjectiveForTesting}" class="take_a_test_button">Take a Test</a>
            <a href="#LO/{learningObjectiveForReview}" class="review_button">Review</a>
            <a href="#LO/{learningObjectiveForHomework}" class="start_homework_button">Start Homework</a>
        </div>
    </div>
    <script type="text/javascript">
        // set up button on the right bottom, TODO: change later
        this.learningObjectiveForTesting="Testing - XX";
        this.learningObjectiveForReview="Review - XX";
        this.learningObjectiveForHomework="Homework - XX";

        // function for click folder and toggle down learning objective list
        $(".header").click(function () {
            $header = $(this);
            //getting the next element
            $content = $header.next();
            //open up the content needed - toggle the slide- if visible, slide up, if not slidedown.
            $content.slideToggle(500, function () {});

        });

        // Parse Query
        Parse.initialize("3m77BurTydmWVyeCR1wOFRMU7JbTYt2s4VECxAQN", "6Jdeazgr93B23jsoeZafhPyCKexBzIqeKsXtdH7n");
        
        try {
            currentUser= Parse.User.current();
            this.username = currentUser.get('first') + " " + currentUser.get('last');
            this.update();
        } catch (e) {
            this.username = "anonymous";
        }

        // logout button
        this.logOut = function(){ 
            try {
                Parse.User.logOut();
            } catch (e) {

            }
            window.location.replace("..");
        };
        
    </script>
</student-main-page>