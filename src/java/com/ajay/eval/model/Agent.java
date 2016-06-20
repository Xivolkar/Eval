package com.ajay.eval.model;

/**
 *
 * @author Ajay Kelkar
 */
public class Agent {
    private String AgentID;
    private String AgentName;

    public Agent() {
    }

    public Agent(String AgentID, String AgentName) {
        this.AgentID = AgentID;
        this.AgentName = AgentName;
    }

    public String getAgentID() {
        return AgentID;
    }

    public void setAgentID(String AgentID) {
        this.AgentID = AgentID;
    }

    public String getAgentName() {
        return AgentName;
    }

    public void setAgentName(String AgentName) {
        this.AgentName = AgentName;
    }
}
