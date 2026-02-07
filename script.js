document.addEventListener("DOMContentLoaded", () => {

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

    document.querySelectorAll("table tbody tr").forEach(row => {

        const status = row.cells[4]?.innerText.toLowerCase();

        if (status === "available") row.classList.add("available");
        if (status === "deployed") row.classList.add("deployed");
        if (status === "needs restock") row.classList.add("restock");

    });

});

function confirmDelete() {
    return confirm("Delete this kit permanently?");
}
