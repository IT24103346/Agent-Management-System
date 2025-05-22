package edu.sliit.datastructure;

import edu.sliit.dto.Agent;

public class AgentLinkedList {
    private AgentLinkedListNode head;

    public AgentLinkedList() {
        this.head = null;
    }

    public void add(Agent agent) {
        AgentLinkedListNode newNode = new AgentLinkedListNode(agent);
        if (head == null) {
            head = newNode;
        } else {
            AgentLinkedListNode temp = head;
            while (temp.next != null) {
                temp = temp.next;
            }
            temp.next = newNode;
        }
    }

    // Convert linked list to array (needed for returning List to controller)
    public Agent[] toArray() {
        int size = 0;
        AgentLinkedListNode temp = head;
        while (temp != null) {
            size++;
            temp = temp.next;
        }

        Agent[] array = new Agent[size];
        temp = head;
        int index = 0;
        while (temp != null) {
            array[index++] = temp.agent;
            temp = temp.next;
        }
        return array;
    }
}
