<!-- Font Awesome icon library to get the search Icon on our searchbar -->

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<form id="search_query" method="get">
  <div class="search_bar">
    <input class="text_box" type="text" name="search_query" id="search_query_input" placeholder="Search">
    <button class="submit_search btn" type="submit" aria-label="Search">
      <i class="fas fa-search"></i>
    </button>
  </div>
</form>

<script>
  // Function to save the input value to localStorage
  function saveInputValue() {
    var inputElement = document.getElementById('search_query_input');
    var inputValue = inputElement.value.toString();
    console.assert(typeof inputValue, 'string');
    localStorage.setItem('searchQuery', inputValue);
  }

  // Function to retrieve and set the input value from localStorage
  function setInputValue() {
    var inputElement = document.getElementById('search_query_input');
    var savedValue = localStorage.getItem('searchQuery').toString();
    console.log(savedValue);
    console.log(typeof savedValue);
    console.assert(typeof savedValue, 'string');
    if (savedValue !== "") {
      inputElement.value = savedValue;
      inputElement.focus();
    }
  }

  // Add an event listener to save the input value on input change
  var inputElement = document.getElementById('search_query_input');
  inputElement.addEventListener('input', function () {
    saveInputValue();
    document.getElementById('search_query').submit();
  });

  // Initialize the input value when the page loads
  setInputValue();
  // Auto-select the input text when the page loads
  

</script>






<style>
  .search_bar{
    display:flex;
    gap:8px;
    border: 1px solid;
    border-color: #ccc;
    width:300px;
    margin-left:32px;
    boarder:none;
  }

  .text_box{
    width:250px;
    border-radius:4px;
    border: 1px solid transparent;
    
  }

  .submit_search{
    background-color:#fff;
    outline:none;
  }

</style>

