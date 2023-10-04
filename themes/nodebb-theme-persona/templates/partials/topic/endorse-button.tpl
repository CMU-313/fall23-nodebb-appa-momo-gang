<div component="topic/endorse/container" class="btn-group action-bar bottom-sheet">
    <button id="endorse-button" class="btn btn-sm btn-primary" component="topic/endorse" type="submit" data-ajaxify="false" role="button">
        <i class="fa fa-reply visible-xs-inline"></i>
        <span class="visible-sm-inline visible-md-inline visible-lg-inline" id="toggleText">Endorse</span>
    </button>
</div>

<script>
    const toggleButton = document.getElementById("endorse-button");
    const toggleText = document.getElementById("toggleText");
    let isEndorsed = false;

    toggleButton.addEventListener("click", function () {
        if (isEndorsed) {
            toggleText.textContent = "Endorse";
        } else {
            toggleText.textContent = "Endorsed";
        }
        isEndorsed = !isEndorsed;
    });
</script>


<style>
#Notes topic/endorse or topic/endorse/container are used to get the route I believe.
#Need to fix the privliges so only instructors can see it.

</style>

<!-- IF loggedIn -->
<!-- IF !privileges.topics:reply -->
<!-- IF locked -->
<!-- ENDIF locked -->
<!-- ENDIF !privileges.topics:reply -->

<!-- IF !locked -->
<!-- ENDIF !locked -->

<!-- ELSE -->

<!-- IF !privileges.topics:reply -->
<!-- ENDIF !privileges.topics:reply -->
<!-- ENDIF loggedIn -->