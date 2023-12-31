package com.gainsay.Model;

public class Pilot {
    private int pilotId;
    private String name;
    private String crime;
    private Ship ship;
    private int wins;
    private int losses;
    private int factionId;

    public Pilot() {

    }

    // full args constructor
    public Pilot(int pilotId, String name, String crime, Ship ship, int wins, int losses, int factionId) {
        this.pilotId = pilotId;
        this.name = name;
        this.crime = crime;
        this.ship = ship;
        this.wins = wins;
        this.losses = losses;
        this.factionId = factionId;
    }

    // preferred constructor
    public Pilot(String name, String crime, Ship ship) {
        this.name = name;
        this.crime = crime;
        this.ship = ship;
        this.wins = 0;
        this.losses = 0;
    }

    // getters
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCrime() {
        return crime;
    }
    public void setCrime(String crime) {
        this.crime = crime;
    }

    public Ship getShip() {
        return ship;
    }

    public void setShip(Ship ship) {
        this.ship = ship;
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

    // method that adds wins/losses
    public void addWin() {
        wins++;
    }

    public void addLoss() {
        losses++;
    }
}
