document.addEventListener('DOMContentLoaded', function(event) {
    const baseUrl = 'http://localhost:9236/api/shops/1'
        const baseUrlIMG = 'http://localhost:9236'
        
        var queryParams = window.location.search.split('?');
        var idbomp= queryParams[1].split('=')[1];
    
    //fetGetOnlyWaterBomp();
    //debugger;
    
    window.onload=async function fetGetOnlyWaterBomp(event)
    {
        
        //debugger;
        let url = `${baseUrl}/waterPump/${idbomp}`;
        let response = await fetch(url , {
            headers: { 
                "Content-Type": "application/json; charset=utf-8",
                "Authorization": `Bearer ${sessionStorage.getItem("jwt")}`  
            },
            method: 'GET'
        });
        if(response.status === 200){
            var data = await response.json();
            debugger;
            var editForm= document.getElementById('frmEditData');
            editForm.name.value =data.name;
            editForm.description.value =data.description;
            editForm.price.value =data.price;
            editForm.mark.value =data.mark;
            editForm.powerHP.value =data.powerHP;
            //editForm.image.src =`${baseUrlIMG}/${data.imagePath}`;
            

        } else { 
            var error = await response.text();
            alert(error)
        }
    }
    function fetchPutWaterPump(event)
    {
        debugger;
        //console.log(event.currentTarget);
        event.preventDefault();

        const formData = new FormData();
        formData.append('Name', event.currentTarget.name.value);
        formData.append('Description', event.currentTarget.description.value);
        formData.append('Price',parseFloat(event.currentTarget.price.value));
        formData.append('Mark', event.currentTarget.mark.value);
        formData.append('PowerHP',parseInt(event.currentTarget.powerHP.value));
        formData.append('Image', event.currentTarget.image.files[0]);
        var img = event.currentTarget.image.files[0];
        console.log(img);
        debugger;

        let url = `${baseUrl}/waterPump/${idbomp}`;

        fetch(url, {
            method: 'POST',
            headers: { 
                "Content-Type": "application/json; charset=utf-8",
                "Authorization": `Bearer ${sessionStorage.getItem("jwt")}`  
            },
            body: formData
        }).then(response => {
            if(response.status === 200){
                alert('Water Pump was edit');
                
            } else {
                response.text()
                .then((error)=>{
                    alert(error);
                });
            }
        });
    }
    
    document.getElementById('frmEditData').addEventListener('submit', fetchPutWaterPump);

});

