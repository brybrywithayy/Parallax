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

    public Faction() {
    }

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

    // preferred constructor - does not include wins and losses
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
    public void setFactionName(String factionName) {
        this.factionName = factionName;
    }

    public String getHomeSystem() {
        return homeSystem;
    }

    public void setHomeSystem(String homeSystem) {
        this.homeSystem = homeSystem;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getWins() {
        return wins;
    }

    public void setWins(int wins) {
        this.wins = wins;
    }

    public int getLosses() {
        return losses;
    }

    public void setLosses(int losses) {
        this.losses = losses;
    }

    public Map<String, Pilot> getPilots() {
        return pilots;
    }

    public void setPilots(Map<String, Pilot> pilots) {
        this.pilots = pilots;
    }
}
