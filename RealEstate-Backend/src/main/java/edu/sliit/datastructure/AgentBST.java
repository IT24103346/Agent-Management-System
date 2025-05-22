package edu.sliit.datastructure;

import edu.sliit.dto.Agent;

public class AgentBST {
    private AgentNode root;

    public AgentBST() {
        root = null;
    }

    public void insert(Agent agent) {
        root = insertRec(root, agent);
    }

    private AgentNode insertRec(AgentNode node, Agent agent) {
        if (node == null) {
            return new AgentNode(agent);
        }

        // Safely handle null agentRating by using default value 0
        Integer newRating = agent.getAgentRating();
        Integer nodeRating = node.agent.getAgentRating();

        int newVal = (newRating != null) ? newRating : 0;
        int nodeVal = (nodeRating != null) ? nodeRating : 0;

        if (newVal < nodeVal) {
            node.left = insertRec(node.left, agent);
        } else {
            node.right = insertRec(node.right, agent);
        }

        return node;
    }

    // In-order traversal to fill linked list with sorted agents by rating
    public AgentLinkedList inOrder() {
        AgentLinkedList list = new AgentLinkedList();
        inOrderRec(root, list);
        return list;
    }

    private void inOrderRec(AgentNode node, AgentLinkedList list) {
        if (node != null) {
            inOrderRec(node.left, list);
            list.add(node.agent);
            inOrderRec(node.right, list);
        }
    }
}
