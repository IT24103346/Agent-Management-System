package edu.sliit.service.impl;

import edu.sliit.datastructure.AgentBST;
import edu.sliit.datastructure.AgentLinkedList;
import edu.sliit.dto.Agent;
import edu.sliit.entity.AgentEntity;
import edu.sliit.repository.AgentRepository;
import edu.sliit.service.AgentService;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor

public class AgentServiceImpl implements AgentService {

    private final AgentRepository repository;
    private final ModelMapper mapper;

    @Override
    public java.util.List<Agent> getAll() {
        AgentBST bst = new AgentBST();

        // Load all agents from DB and insert into BST
        for (AgentEntity entity : repository.findAll()) {
            Agent agent = mapper.map(entity, Agent.class);
            bst.insert(agent);
        }

        // Get sorted agents as linked list
        AgentLinkedList sortedList = bst.inOrder();

        // Convert linked list to array (to convert to List)
        Agent[] agentArray = sortedList.toArray();

        // Convert array to List (only here, for controller return)
        return java.util.Arrays.asList(agentArray);
    }

    @Override
    public void addAgent(Agent agent) {
        System.out.println(agent);
        repository.save(mapper.map(agent, AgentEntity.class));
    }

    @Override
    public void deleteAgentById(Integer id) {
        repository.deleteById(id);
    }

    @Override
    public Agent searchAgentById(Integer id) {
        return mapper.map(repository.findById(id),Agent.class);


    }

    @Override
    public void updateAgentById(Agent agent) {
        repository.save(mapper.map(agent, AgentEntity.class));
    }
}
