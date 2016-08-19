var codigo, camas, fechaEntrada,fechaSalida, continuar;
window.onclick = function(){
    codigo = document.getElementById("codigo");
    camas = document.getElementById("camas");
    fechaEntrada = document.getElementById("fechaEntrada");
    fechaSalida = document.getElementById('fechaSalida');
    continuar = document.getElementById('continuar');
    continuar.onclick = function (){
        var valor1 = codigo.value;
        var valor2 = camas.value;
        var valor3 = fechaEntrada.value;
        var valor4 = fechaSalida.value;
        if(valor1 ==="" || valor2 ==="" || valor3 ==="" || valor4 ===""){
            alert("Error de datos");
        }
        else{
            alert("datos guardados");
            location.href=("pago.jsp");
        }
    };
};