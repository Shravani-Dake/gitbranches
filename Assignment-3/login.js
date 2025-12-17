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