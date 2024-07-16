// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener('DOMContentLoaded', () => {
    const searchButton = document.getElementById('searchButton');
    const searchForm = document.getElementById('searchForm');
    const categoryButton = document.getElementById('categoryButton');
    const categoryDropdown = document.getElementById('categoryDropdown');
  
    if (searchButton && searchForm) {
      searchButton.addEventListener('click', (event) => {
        event.stopPropagation();
        searchForm.classList.toggle('hidden');
      });
  
      document.addEventListener('click', (event) => {
        if (!searchForm.contains(event.target) && !searchButton.contains(event.target)) {
          searchForm.classList.add('hidden');
        }
      });
    }
  
    if (categoryButton && categoryDropdown) {
      categoryButton.addEventListener('click', (event) => {
        event.stopPropagation();
        categoryDropdown.classList.toggle('hidden');
      });
  
      document.addEventListener('click', (event) => {
        if (!categoryDropdown.contains(event.target) && !categoryButton.contains(event.target)) {
          categoryDropdown.classList.add('hidden');
        }
      });
    }
  });
  