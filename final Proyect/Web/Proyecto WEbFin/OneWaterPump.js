document.addEventListener('DOMContentLoaded', function(event) {

    

    const baseUrl = 'http://localhost:9236/api/shops/1'
    const baseUrlIMG = 'http://localhost:9236'
    
    function FetchDeleteWaterPump(event){
        //debugger;
        var r = confirm("Estas seguro de eliminar el producto?");
        if (r == true) {
            let bombID = this.dataset.deleteBompId;
            console.log(bombID);
            //console.log(bombID);
            let url = `http://localhost:9236/api/shops/1/waterPump//${bombID}`;
            console.log(bombID);
            fetch(url, { 
            method: 'DELETE' 
            }).then((data)=>{
                if(data.status === 200){
                    alert('deleted');
                }
            }); 
            location.reload();
        } 
        
    }
    window.onload=async function fetGetOnlyWaterBomp()
    {
        
        debugger;
        //var idbomp = document.getElementById("id-pump").value;
        var queryParams = window.location.search.split('?');
        var idbomp= queryParams[1].split('=')[1];
        //console.log(idbomp);
        let url = `http://localhost:9236/api/shops/1/waterPump/${idbomp}`;
        let response = await fetch(url);
        if(response.status === 200){
            let listThis = [];
            var data = await response.json();
            listThis.push(data);
            //console.log(data);
            var bombLiMapped = listThis.map(bomb => `<div class="car-img-product" style="flex-grow: 1 " >
                                                    <img src="${baseUrlIMG}/${bomb.imagePath}"">
                                                </div>
                                                <div style="flex-grow: 8">
                                                    <div style="position: relative; float: left;">
                                                        <h4 >${bomb.name}</h4>
                                                    </div>
                                                    <p style="float: left;">${bomb.description}</p>
                                                    <div style="position: relative; float: left;">
                                                        <h6 style="position: relative; float: left;">Caracteristicas Tecnicas </h6>
                                                        <p style="position: relative; float: left;"> ${bomb.mark}</p>
                                                    </div>
                                                    <div style="position: relative; float: left;">
                                                        <h6 style="position: relative; float: left;">Precio : </h6>
                                                        <p style="position: relative; float: left;"> ${bomb.price}</p>
                                                    </div>
                                                </div> `);
            var bombContent = `<div class="flex-container-product-select">${bombLiMapped.join('')}</div> `;
            document.getElementById('waterBomp-list-contentbyId').innerHTML = bombContent;
            bombs = listThis;

        } else { 
            var error = await response.text();
            alert(error)
        }
    }
    

    
    //document.getElementById('fetch-btn').addEventListener('click', fetGetWaterBomp);
    
   

    

});