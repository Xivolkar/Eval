package com.ajay.eval.model;

/**
 *
 * @author Ajay Kelkar
 */
public class Ticket {

    private String TicketID;
    private String TicketDesc;
    private String TicketComments;
    private Agent AssignedTo;
    private Agent CreatedBy;
    private Customer EndUser;
    private TicketStatus Status;

    public Ticket() {
    }

    public Ticket(String TicketID, String TicketDesc, String TicketComments, Agent AssignedTo) {
        this.TicketID = TicketID;
        this.TicketDesc = TicketDesc;
        this.TicketComments = TicketComments;
        this.AssignedTo = AssignedTo;
    }

    public String getTicketID() {
        return TicketID;
    }

    public void setTicketID(String TicketID) {
        this.TicketID = TicketID;
    }

    public String getTicketDesc() {
        return TicketDesc;
    }

    public void setTicketDesc(String TicketDesc) {
        this.TicketDesc = TicketDesc;
    }

    public String getTicketComments() {
        return TicketComments;
    }

    public void setTicketComments(String TicketComments) {
        this.TicketComments = TicketComments;
    }

    public Agent getAssignedTo() {
        return AssignedTo;
    }

    public String getAgentName() {
        return this.AssignedTo.getAgentName();
    }

    public void setAssignedTo(Agent AssignedTo) {
        this.AssignedTo = AssignedTo;
    }

    public Customer getEndUser() {
        return EndUser;
    }
    
    public String getCustomerName(){
        return this.EndUser.getCustomerName();
    }

    public void setEndUser(Customer EndUser) {
        this.EndUser = EndUser;
    }

    public Agent getCreatedBy() {
        return CreatedBy;
    }

    public void setCreatedBy(Agent CreatedBy) {
        this.CreatedBy = CreatedBy;
    }

    public TicketStatus getStatus() {
        return Status;
    }

    public void setStatus(TicketStatus Status) {
        this.Status = Status;
    }
}
