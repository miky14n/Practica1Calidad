window.addEventListener('load', (event) => {

    const baseUrl = 'http://localhost:9236/api';
    
    function Register(event) {
        debugger;
        console.log(event.currentTarget);
        event.preventDefault();
        const url = `${baseUrl}/auth/User`;

        if(!Boolean(event.currentTarget["user-name"].value)){
            var usernameErrorElement = document.getElementById("login-errors");
            usernameErrorElement.textContent= "username is requered"
            usernameErrorElement.style.display = "block"
            return;
        }    


        var data = {
            Email: event.currentTarget["user-name"].value,
            Password: event.currentTarget.password.value,
            ConfirmPassword: event.currentTarget.passwordrepeat.value,
        }

        fetch(url, {
            headers: { "Content-Type": "application/json; charset=utf-8" },
            method: 'POST',
            body: JSON.stringify(data)
        }).then((response) => {
            if (response.status === 200) {
                
                response.json().then((data)=>{
                   
                    
                });
            } else {
                response.text().then((data) => {
                    debugger;
                    console.log(data);
                });
            }
        }).catch((response) => {

            debugger;
            console.log(data);
        });
        

    }

    function parseJwt (token) {
        var base64Url = token.split('.')[1];
        var base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
        var jsonPayload = decodeURIComponent(atob(base64).split('').map(function(c) {
            return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
        }).join(''));
        //debugger;
        console.log(jsonPayload);
        return JSON.parse(jsonPayload);
    };
    
    

    document.getElementById("register-frm").addEventListener("submit", Register);

});




