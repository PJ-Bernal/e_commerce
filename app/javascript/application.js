// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener('DOMContentLoaded', () => {
    const button = document.getElementById('categoryButton');
    const dropdown = document.getElementById('categoryDropdown');
  
    if (button && dropdown) {
      button.addEventListener('click', (event) => {
        event.stopPropagation();
        dropdown.classList.toggle('hidden');
      });
  
      document.addEventListener('click', (event) => {
        if (!dropdown.contains(event.target) && !button.contains(event.target)) {
          dropdown.classList.add('hidden');
        }
      });
    }
  });
  
