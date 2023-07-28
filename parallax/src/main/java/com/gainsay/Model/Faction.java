package com.gainsay.Model;

import java.util.List;

public class Faction {
    private String factionName;
    private String homeSystem;
    private String description;
    private int wins;
    private int losses;
    List<Pilot> pilots;

    public Faction() {
    }

    // full args constructor - for use with FactionFactory
    public Faction(String factionName, String homeSystem, String description, 
                   int wins, int losses, List<Pilot> pilots) {
        this.factionName = factionName;
        this.homeSystem = homeSystem;
        this.description = description;
        this.wins = wins;
        this.losses = losses;
        this.pilots = pilots;
    }

    // constructor - missing pilot hashmap for use with DAO
    public Faction(String factionName, String homeSystem, String description,
                   int wins, int losses) {
        this.factionName = factionName;
        this.homeSystem = homeSystem;
        this.description = description;
        this.wins = wins;
        this.losses = losses;
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

    public List<Pilot> getPilots() {
        return pilots;
    }

    public void setPilots(List<Pilot> pilots) {
        this.pilots = pilots;
    }
}
