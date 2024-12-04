document.addEventListener("DOMContentLoaded", () => {
    const categoryButtons = document.querySelectorAll(".categories button");
    categoryButtons.forEach((button) => {
        button.addEventListener("click", () => {
            categoryButtons.forEach((btn) => btn.classList.remove("active"));
            button.classList.add("active");
        });
    });

    const contactButtons = document.querySelectorAll(".card button");
    contactButtons.forEach((button) => {
        button.addEventListener("click", () => {
            alert("Contact button clicked for: " + button.parentElement.querySelector("h3").textContent);
        });
    });

    const searchBar = document.querySelector(".search-bar");
    searchBar.addEventListener("input", (event) => {
        console.log(event.target.value);
    });
});
