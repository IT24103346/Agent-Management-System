package edu.sliit.datastructure;

import edu.sliit.dto.Agent;

public class AgentLinkedListNode {
    public Agent agent;
    public AgentLinkedListNode next;

    public AgentLinkedListNode(Agent agent) {
        this.agent = agent;
        this.next = null;
    }
}
