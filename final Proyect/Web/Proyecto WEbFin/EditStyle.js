function showSecrectOptions(){
    //debugger;
    var Rol = sessionStorage.getItem("Role");
    var secretButton = document.getElementsByClassName("button-secret");
    switch(Rol){
        case "Developer":
            
            secretButton.style.display= 'inline';
            var boddy = document.getElementById('only-super-user');
            boddy.style.display= 'inline';
            break;
        default:
            console.log("rol no detectado");
            //secretButton.item.style.display='none';
            var i = 0;
            do{
                secretButton[i].style.display='none';
                i=i+1;
            }
            while(i<secretButton.length);
            break;

    }
}
