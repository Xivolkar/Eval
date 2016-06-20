package com.ajay.eval.services;

import com.ajay.eval.model.Agent;
import com.ajay.eval.model.Ticket;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

/**
 * REST Web Service
 *
 * @author Ajay Kelkar
 */
@Path("Fetcher")
public class Fetcher {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of Fetcher
     */
    public Fetcher() {
    }

    /**
     * Retrieves representation of an instance of com.ajay.eval.services.Fetcher
     *
     * @return an instance of java.lang.String
     */
    @GET
    @Produces("application/json")
    public String getJson() {
        //TODO return proper representation object
        throw new UnsupportedOperationException();
    }

    /**
     * GET method for retrieving Agents
     *
     * @return an array of Agents found
     */
    @Path("/getAgents")
    @GET
    @Produces("application/json")
    public String getAgents() {
        JSONObject response = new JSONObject();
        JSONArray arr = new JSONArray();

        try {
            arr.add("Aakash");
            arr.add("Sakshi");
            arr.add("Pratap");
            arr.add("Gordon");

            response.put("status", "success");
            response.put("agents", arr);
        } catch (Exception e) {
            response.put("status", "Agents retrieval Failed: " + e.toString());
        } finally {
            System.gc();
        }

        return response.toJSONString();
    }

    /**
     * POST method for Creating a Ticket
     *
     * @param json - Input json
     * @return a String response indicating the outcome of the transaction
     */
    @Path("/createTicket")
    @POST
    @Consumes("application/json")
    @Produces("application/json")
    public String createTicket(String json) {
        JSONObject response = new JSONObject();
        JSONParser parser = new JSONParser();
        String ret = "";

        try {
            Object obj = parser.parse(json);
            JSONObject jsonObj = (JSONObject) obj;

            String AgentName = (String) jsonObj.get("LastName");
            Agent X = new Agent("0", AgentName);

            Ticket re = new Ticket((String) jsonObj.get("TicketSum"), (String) jsonObj.get("TicketComments"), (String) jsonObj.get("CustomerID"), X);

            response.put("status", "success");
        } catch (Exception e) {
            response.put("status", "Registration Failed: " + e.toString());
        } finally {
            System.gc();
        }

        return response.toJSONString();
    }

}
