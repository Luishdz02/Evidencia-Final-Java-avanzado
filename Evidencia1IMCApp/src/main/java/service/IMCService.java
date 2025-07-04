package service;

import jakarta.inject.Inject;
import model.RegistroIMC;
import model.Usuario;
import dao.RegistroIMCDAO;
import dao.UsuarioDAO;
import java.util.List;

public class IMCService {
    
    @Inject
    private UsuarioDAO userService;
    
    @Inject
    private RegistroIMCDAO registroIMCDAO;
    
    public RegistroIMC calcularIMC(int usuarioId, double peso) {
        if (peso <= 0) {
            throw new IllegalArgumentException("El peso debe ser mayor a 0");
        }
        
        Usuario usuario = userService.getUsuarioById(usuarioId);
        double imc = peso / Math.pow(usuario.getEstatura(), 2);
        
        RegistroIMC registro = new RegistroIMC();
        registro.setUsuarioId(usuarioId);
        registro.setPeso(peso);
        registro.setImc(imc);
        
        return registroIMCDAO.guardarRegistro(registro);
    }
    
    public List<RegistroIMC> obtenerHistorial(int usuarioId) {
        return registroIMCDAO.obtenerPorUsuario(usuarioId);
    }
}