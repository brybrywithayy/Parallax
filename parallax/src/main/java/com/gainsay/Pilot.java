package com.gainsay;

public class Pilot {
    private String name;
    private String crime;
    private Ship ship;
    private int wins;
    private int losses;

    // full args constructor - Testing ONLY
    public Pilot(String name, String crime, Ship ship, int wins, int losses) {
        this.name = name;
        this.crime = crime;
        this.ship = ship;
        this.wins = wins;
        this.losses = losses;
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
    public String getCrime() {
        return crime;
    }
    public Ship getShip() {
        return ship;
    }

    public int getWins() {
        return wins;
    }

    public int getLosses() {
        return losses;
    }

    // method that adds wins/losses
    public void addWin() {
        wins++;
    }

    public void addLoss() {
        losses++;
    }
}
