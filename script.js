document.addEventListener("DOMContentLoaded", () => {
    // Form validation
    document.querySelectorAll("form").forEach(form => {
        form.addEventListener("submit", e => {
            let valid = true;
            form.querySelectorAll("[required]").forEach(input => {
                input.classList.remove("is-invalid");
                const old = input.parentNode.querySelector(".error-text");
                if (old) old.remove();

                if (!input.value.trim()) {
                    valid = false;
                    input.classList.add("is-invalid");
                    const err = document.createElement("small");
                    err.className = "error-text";
                    err.innerText = "This field is required";
                    input.parentNode.appendChild(err);
                }
            });
            if (!valid) e.preventDefault();
        });
    });

    // Earthquake preparedness banner (on Add/Edit pages)
    const formContainer = document.querySelector("form");
    if (formContainer) {
        const alertBanner = document.createElement("div");
        alertBanner.className = "alert-banner";
        alertBanner.textContent = "⚠️ Earthquake Preparedness Reminder: Ensure kits are complete and accessible!";
        formContainer.parentNode.insertBefore(alertBanner, formContainer);
    }
});

// Confirmation before delete
function confirmDelete() {
    return confirm("Delete this kit permanently?");
}
