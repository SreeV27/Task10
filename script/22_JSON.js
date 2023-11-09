

let details=[
            {"Name":"saravanan","Age":27,"LOCATION":"dubai"},
            {"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}
            ] 
var placeholder=document.querySelector("#output_data");
var  out = " ";

for(let detail of details)
    {

         out+=`
                <tr>
                    <td>${detail.Name} </td>
                    <td>${detail.Age} </td>
                    <td>${detail.LOCATION} </td>


                </tr>
         
         
         `;
    }

placeholder.innerHTML = out;