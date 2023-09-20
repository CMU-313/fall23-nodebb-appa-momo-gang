<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<form id="search_query">
  <div class = "search_bar">
    <input class = "text_box" type="text" name="search_query" placeholder="Search...">
    <button class = "submit_search btn" type="submit" aria-label="Search">
      <i class="fas fa-search"></i> <!-- You can use Font Awesome for the search icon -->
    </button>
  </div>
</form>

<style>
  .search_bar{
    display:flex;
    gap:8px;
    border: 1px solid;
    border-color: #ccc;
    width:300px;
    margin-left:32px;
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

