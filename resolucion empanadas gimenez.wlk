object galvan {
    var sueldo = 15000
    var deuda = 0
    var dinero = 0

    method sueldo(){ //getter
        return sueldo
    }
    
    method aumentarSueldo(_sueldo) { //setter
        sueldo = _sueldo
    }

    method gastar(cuanto) {
        if (cuanto > dinero){
            deuda = cuanto - dinero
            dinero = 0
        } 
        else if (cuanto < dinero) {
            dinero = dinero - cuanto
        }
    }

    method cobrar(){
        dinero = dinero + sueldo
    }

    method pagarDeudas(){
        if (deuda >= dinero){
            deuda = deuda - dinero
            dinero = 0
        }
        else if(deuda < dinero){ 
            deuda = 0
            dinero = dinero - deuda
        }
    }
}


object baigorria {
    var empanadasVendidas = 0
    var sueldo = 0
    var totalCobrado = 0
    const precioEmpanada = 15

    method venderEmpanadas(totalVendido) { //setter
        empanadasVendidas = totalVendido
        sueldo = (precioEmpanada * empanadasVendidas)
    }

    method sueldo(){
        return sueldo
    }

    method totalVendidas(){
        return empanadasVendidas
    }

    method cobrar(){
        totalCobrado = (totalCobrado + sueldo)
        empanadasVendidas = 0
    }

    method totalCobrado() {
        return totalCobrado
    } 
}   

object gimenez{
    var fondoSueldos = 300000

    method pagarSueldoA_(empleado) {
        fondoSueldos = fondoSueldos - empleado.sueldo()
        empleado.cobrar()
    }

}
