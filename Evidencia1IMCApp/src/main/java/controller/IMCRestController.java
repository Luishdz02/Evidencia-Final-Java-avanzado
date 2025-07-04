package controller;

import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;
import java.util.List;

@Path("/api/imc")
public class IMCRestController {
    
    private final IMCService imcService = new IMCService();

    /**
     *
     * @param usuarioId
     * @return
     */
    @GET
    @Path("/historial/{usuarioId}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<RegistroIMC> getHistorial(@PathParam("usuarioId") int usuarioId) {
        return imcService.obtenerHistorial(usuarioId);
    }

    private static class RegistroIMC {

        public RegistroIMC() {
        }
    }

    private static class IMCService {

        public IMCService() {
        }


    }
}