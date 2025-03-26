object galvan {
    var sueldo = 15000

    method sueldo(){ //getter
        return sueldo
    }
    
    method aumentarSueldo(_sueldo) { //setter
        sueldo = _sueldo
    }

    
}

object baigorria {
    var empanadasVendidas = 0
    var sueldo = 0
    const precioEmpanada = 15

    method venderEmpanadas(totalVendido) { //setter
        empanadasVendidas = totalVendido
        sueldo = (precioEmpanada * empanadasVendidas)
    }

    method sueldo{
        return sueldo
    }

    method totalVendidas(){
        return empanadasVendidas
    } 
}   

object gimenez{
    var fondoSueldos = 300000

    method pagarSueldoA_(empleado) {
        fondoSueldos = fondoSueldos - empleado.sueldo()
    }

}
