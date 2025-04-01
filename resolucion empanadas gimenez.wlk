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
        Self.pagarDeudas()
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

/*object galvan {
    var sueldo = 15000
    var saldo = 0

    method sueldo(){ //getter
        return sueldo
    }
    
    method aumentarSueldo(_sueldo) { //se
        sueldo = _sueldo
    }

    method gastar(cuanto) {
        if (cuanto >= saldo){
            saldo = saldo - cuanto
        } 
        else {
            saldo = saldo - cuanto
        }
    }

    method cobrar(){
        saldo = saldo + sueldo
    }

    method deuda(){
        return 
    }
}

*/
object baigorria {
    var empanadasVendidas = 0
    var sueldo = 0
    var totalCobrado = 0
    var  precioEmpanada = 15

    method venderEmpanadas(_empanadasVendidas) { //setter
        empanadasVendidas = empanadasVendidas + _empanadasVendidas
        sueldo = (precioEmpanada * empanadasVendidas)
    }

    method sueldo(){ //getter
        return sueldo
    }

    method precioEmpanada(_precioEmpanada) { //setter
        precioEmpanada = _precioEmpanada
    }

    method totalVendidas(){ //getter
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
    var fondo = 300000

    method pagarSueldoA_(empleado) {
        fondo = fondo - empleado.sueldo()
        empleado.cobrar()
    }

    method fondo (){
        return fondo
    }

}


//.abs() hace que te devuelva el valor siempre positivo