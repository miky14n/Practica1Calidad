


document.addEventListener('DOMContentLoaded', function(event) {

    let bombs = [];

    const baseUrl = 'http://localhost:9236/api/shops/1'
    const baseUrlIMG = 'http://localhost:9236'
    window.onload=async function fetGetWaterBomp()
    {
        //style.showSecrectOptions();
        //debugger;
        let response = await fetch(`${baseUrl}/waterPump`);
        if(response.status === 200){
            var data = await response.json();
            
            var bombLiMapped = data.map(bomb =>`<div class="item-product"> 
                                                    <a id= ${bomb.id} href="./productA.html?bompId=${bomb.id}">
                                                        <img src="${baseUrlIMG}/${bomb.imagePath}"">
                                                    </a>
                                                    <div>
                                                        <h4>NAME Product: <h5>${bomb.name}</h5> Producto</h4>
                                                        <p>| Mark: ${bomb.mark}, Description: ${bomb.description} |PRICE: ${bomb.price}</p>
                                                    </div>
                                                        
                                                            <button class="button-secret" data-delete-bomp-id="${bomb.id}">DELETE</button>
                                                            <button class="button-secret" type="submit" onclick="document.location='./EditWaterPump.html?bompId=${bomb.id}'">EDIT</button>
                                                        
                                                </div>`);
            var bombContent = `<div class="container-product-pg"> ${bombLiMapped.join('')} </div>  `;
            
            document.getElementById('waterBomp-list-content').innerHTML = bombContent;
           /**/let buttons = document.querySelectorAll('#waterBomp-list-content div button[data-delete-bomp-id]');
            
            for (const button of buttons) {
                button.addEventListener('click', FetchDeleteWaterPump);
            }

            
            bombs = data;
            
        } else { 
            var error = await response.text();
            alert(error)
        }
        showSecrectOptions();
    }
    function FetchDeleteWaterPump(event){
        //debugger;
        var r = confirm("Estas seguro de eliminar el producto?");
        if (r == true) {
            let bombID = this.dataset.deleteBompId;
            console.log(bombID);
            //console.log(bombID);
            let url = `http://localhost:9236/api/shops/1/waterPump/${bombID}`;
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
    
    

    
    document.getElementById('fetch-btn').addEventListener('click', fetGetWaterBomp);
    

    

});