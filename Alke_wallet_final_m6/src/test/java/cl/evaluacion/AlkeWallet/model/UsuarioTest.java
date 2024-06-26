package cl.evaluacion.AlkeWallet.model;

import java.sql.Timestamp;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

/**
 * Pruebas unitarias para la clase Usuario.
 */
@SpringBootTest
public class UsuarioTest {

	/**
     * Prueba del constructor y métodos getter y setter de Usuario.
     */
    @DisplayName("Prueba del constructor y métodos getter y setter")
    @Test
    public void testConstructorAndGettersSetters() {
       
        int userId = 1;
        String nombre = "Juan Pablo Reyes";
        String correo = "juanpablo@mail.com";
        String clave = "Profe12345";
        int saldo = 1000;
        Timestamp fechaDeCreacion = new Timestamp(System.currentTimeMillis());

        
        Usuario usuario = new Usuario();
        usuario.setUser_Id(userId);
        usuario.setNombre(nombre);
        usuario.setCorreo(correo);
        usuario.setClave(clave);
        usuario.setSaldo(saldo);
        usuario.setFecha_de_creacion(fechaDeCreacion);

        Assertions.assertEquals(userId, usuario.getUser_Id());
        Assertions.assertEquals(nombre, usuario.getNombre());
        Assertions.assertEquals(correo, usuario.getCorreo());
        Assertions.assertEquals(clave, usuario.getClave());
        Assertions.assertEquals(saldo, usuario.getSaldo());
        Assertions.assertEquals(fechaDeCreacion, usuario.getFecha_de_creacion());
    }

    /**
     * Prueba del método toString() de Usuario.
     */
    @DisplayName("Prueba del método toString")
    @Test
    public void testToString() {
       
        Usuario usuario = new Usuario();
        usuario.setUser_Id(1);
        usuario.setNombre("Juan Pablo Reyes");
        usuario.setCorreo("juanpablo@mail.com");
        usuario.setClave("Profe12345");
        usuario.setSaldo(1000);
        usuario.setFecha_de_creacion(new Timestamp(System.currentTimeMillis()));

        
        String toStringResult = usuario.toString();
        Assertions.assertNotNull(toStringResult);
        Assertions.assertTrue(toStringResult.contains("user_Id=" + usuario.getUser_Id()));
        Assertions.assertTrue(toStringResult.contains("nombre=" + usuario.getNombre()));
        Assertions.assertTrue(toStringResult.contains("correo=" + usuario.getCorreo()));
        Assertions.assertTrue(toStringResult.contains("clave=" + usuario.getClave()));
        Assertions.assertTrue(toStringResult.contains("saldo=" + usuario.getSaldo()));
        Assertions.assertTrue(toStringResult.contains("fecha_de_creacion=" + usuario.getFecha_de_creacion()));
    }
}