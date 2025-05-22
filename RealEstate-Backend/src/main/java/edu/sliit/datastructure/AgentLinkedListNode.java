package edu.sliit.datastructure;

public class AgentLinkedListNode {
    public Agent agent;
    public AgentLinkedListNode next;

    public AgentLinkedListNode(Agent agent) {
        this.agent = agent;
        this.next = null;
    }
}
