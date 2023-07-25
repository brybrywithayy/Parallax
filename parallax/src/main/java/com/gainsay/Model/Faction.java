package com.gainsay.Model;

import java.util.Map;
import java.util.HashMap;

public class Faction {
    private String factionName;
    private String homeSystem;
    private String description;
    private int wins;
    private int losses;
    Map<String, Pilot> pilots;

    // full args constructor - Testing ONLY
    public Faction(String factionName, String homeSystem, String description, 
                   int wins, int losses, Map<String, Pilot> pilots) {
        this.factionName = factionName;
        this.homeSystem = homeSystem;
        this.description = description;
        this.wins = wins;
        this.losses = losses;
        this.pilots = pilots;
    }

    // preferred constructor
    public Faction(String factionName, String homeSystem, String description,
                   Map<String, Pilot> pilots) {
        this.factionName = factionName;
        this.homeSystem = homeSystem;
        this.description = description;
        this.wins = 0;
        this.losses = 0;
        this.pilots = pilots;
    }

    // getters
    public String getFactionName() {
        return factionName;
    }

    public String getHomeSystem() {
        return homeSystem;
    }

    public String getDescription() {
        return description;
    }

    public int getWins() {
        return wins;
    }

    public int getLosses() {
        return losses;
    }

    public Map<String, Pilot> getPilots() {
        return pilots;
    }

    // TODO: add method to retrieve pilots from database or JSON
    // TODO: add method to add pilots into a Map and call from constructor
}
