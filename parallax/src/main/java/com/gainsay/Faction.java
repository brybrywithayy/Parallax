package com.gainsay;

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
        this.pilots = new HashMap<>();
    }
}
