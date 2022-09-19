document.addEventListener('DOMContentLoaded', function(event) {

    

    const baseUrl = 'http://localhost:9236/api'
    
    
   
    function fetchPostWaterPump(event)
    {
        debugger;
        //console.log(event.currentTarget);
        event.preventDefault();

        const formData = new FormData();
        formData.append('Name', event.currentTarget.name.value);
        formData.append('Description', event.currentTarget.description.value);
        formData.append('Price',parseFloat(event.currentTarget.price.value));
        formData.append('Mark', event.currentTarget.mark.value);
        formData.append('powerHP',parseInt( event.currentTarget.powerHP.value));
        formData.append('Image', event.currentTarget.image.files[0]);
        debugger;

        let url = `http://localhost:9236/api/shops/1/waterPump/`;

        fetch(url, {
            headers: { 
                "Content-Type": "application/json; charset=utf-8",
                "Authorization": `Bearer ${sessionStorage.getItem("jwt")}`  
            },
            method: 'POST',
            body: formData
        }).then(response => {
            if(response.status === 201){
                alert('Water Pump was created');
                document.location='./productos.html'
                //document.location='./productos.html';
            } else {
                response.text()
                .then((error)=>{
                    alert(error);
                });
            }
        });
    }

    
    document.getElementById('frmCreateData').addEventListener('submit', fetchPostWaterPump);

});