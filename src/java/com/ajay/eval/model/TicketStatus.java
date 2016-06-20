package com.ajay.eval.model;

/**
 *
 * @author Ajay Kelkar
 */
public enum TicketStatus {

    NEW(1),
    OPEN(2),
    CLOSED(3);

    private final int StatusCode;

    TicketStatus(int Code) {
        this.StatusCode = Code;
    }
}
