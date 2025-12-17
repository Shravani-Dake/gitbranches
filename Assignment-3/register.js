document.getElementById("loginForm").addEventListener("submit", function (e) 
{
    e.preventDefault();

    const email = document.getElementById("loginEmail");
    const password = document.getElementById("loginPassword");

    let isValid = true;

    
    if (email.value.trim() === "" || !email.checkValidity()) 
    {
        email.classList.add("is-invalid");
        email.reportValidity();   
        isValid = false;
    } 
    else 
    {
        email.classList.remove("is-invalid");
        email.classList.add("is-valid");
    }

    
    if (password.value.trim() === "" || password.value.length < 6) 
    {
        password.classList.add("is-invalid");; 
        isValid = false;
    } 
    else 
    {
        password.classList.remove("is-invalid");
        password.classList.add("is-valid");
    }

    if (isValid) 
    {
        alert("Login Successful !");
    }
});

On Tue, 16 Dec 2025 at 12:38, Trupti Zore <zoretrupti08@gmail.com> wrote:
register ---------------------------------
document.getElementById("registerForm").addEventListener("submit", function (e) 
{
    e.preventDefault();

    const name = document.getElementById("name");
    const email = document.getElementById("email");
    const password = document.getElementById("password");
    const phone = document.getElementById("phone");

    let isValid = true;
    const phonePattern = /^[0-9]{10}$/;

    
    if (name.value.trim() === "") 
    {
        name.classList.add("is-invalid");
        isValid = false;
    } 
    else 
    {
        name.classList.remove("is-invalid");
        name.classList.add("is-valid");
    }

    
    if (email.value.trim() === "" || !email.checkValidity()) 
    {
        email.classList.add("is-invalid");
        email.reportValidity();   
        isValid = false;
    } 
    else 
    {
        email.classList.remove("is-invalid");
        email.classList.add("is-valid");
    }

    
    if (password.value.trim() === "" || password.value.length < 6) 
    {
        password.classList.add("is-invalid");
        isValid = false;
    } 
    else
    {
        password.classList.remove("is-invalid");
        password.classList.add("is-valid");
    }

    
    if (!phonePattern.test(phone.value)) 
    {
        phone.classList.add("is-invalid");
        isValid = false;
    } 
    else 
    {
        phone.classList.remove("is-invalid");
        phone.classList.add("is-valid");
    }


    if (isValid) 
    {
        alert("Registration Successful !");
    }
});