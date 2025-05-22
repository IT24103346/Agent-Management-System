package edu.sliit.datastructure;

import edu.sliit.dto.Agent;

public class AgentNode {
    public Agent agent;
    public AgentNode left;
    public AgentNode right;

    public AgentNode(Agent agent) {
        this.agent = agent;
        this.left = null;
        this.right = null;
    }
}
