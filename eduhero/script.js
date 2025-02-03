document.addEventListener("DOMContentLoaded", function () {
    // Open the Terms and Conditions Modal
    document.getElementById("openModal").addEventListener("click", function(event) {
        event.preventDefault();
        document.getElementById("termsModal").style.display = "flex";
    });

    // Close the Modal when clicking the close button
    document.querySelector(".close").addEventListener("click", function() {
        document.getElementById("termsModal").style.display = "none";
    });

    // Close the Modal when clicking outside the modal content
    window.addEventListener("click", function(event) {
        if (event.target === document.getElementById("termsModal")) {
            document.getElementById("termsModal").style.display = "none";
        }
    });

    // File Upload Preview for Passport
    document.getElementById("passport").addEventListener("change", function(event) {
        let file = event.target.files[0];
        if (file) {
            let reader = new FileReader();
            reader.onload = function (e) {
                let preview = document.createElement("img");
                preview.src = e.target.result;
                preview.style.width = "100px";
                preview.style.borderRadius = "5px";
                document.getElementById("passport").parentElement.appendChild(preview);
            };
            reader.readAsDataURL(file);
        }
    });

    // File Upload Preview for Pitch (Shows file name)
    document.getElementById("pitch").addEventListener("change", function(event) {
        let file = event.target.files[0];
        if (file) {
            let fileName = document.createElement("p");
            fileName.textContent = "Selected File: " + file.name;
            fileName.style.fontSize = "14px";
            fileName.style.color = "#555";
            document.getElementById("pitch").parentElement.appendChild(fileName);
        }
    });
});

document.addEventListener("DOMContentLoaded", function () {
    const form = document.getElementById("registrationForm");

    form.addEventListener("submit", function (event) {
        let isValid = true;
        const fields = form.querySelectorAll("input[required]");
        
        fields.forEach(field => {
            const errorMessage = field.nextElementSibling;

            if (!field.value.trim()) {
                errorMessage.textContent = "This field is required.";
                field.classList.add("error");
                isValid = false;
            } else {
                errorMessage.textContent = "";
                field.classList.remove("error");
            }
        });

        if (!isValid) {
            event.preventDefault(); // Prevent form submission if there are errors
        }
    });
});
