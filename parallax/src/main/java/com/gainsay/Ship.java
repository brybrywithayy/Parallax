package com.gainsay;

public abstract class Ship {
    private String shipName;
    private int health;
    private int speed;
    private int damage;
    // TODO: make damage into Weapon class that is more sophisicated

    // Super class constructors
    // full args for testing
    public Ship(String shipName, int health, int speed, int damage) {
        this.shipName = shipName;
        this.health = health;
        this.speed = speed;
        this.damage = damage;
    }

    public Ship(String shipName) {
        this.shipName = shipName;
        this.health = 100;
        this.speed = 50;
        this.damage = 10;
    }

    // getters
    public String getShipName() {
        return shipName;
    }

    public int getHealth() {
        return health;
    }

    public int getSpeed() {
        return speed;
    }

    public int getDamage() {
        return damage;
    }
}

// TODO: change these constructors to modify health, speed, and damage appropriately

class FastShip extends Ship {
    public FastShip(String shipName, int health, int speed, int damage) {
        super(shipName, 5, 15, 10);
    }
}

class ToughShip extends Ship {
    public ToughShip(String shipName, int health, int speed, int damage) {
        super(shipName, 15, 10, 5);
    }
}

class StrongShip extends Ship {
    public StrongShip(String shipName, int health, int speed, int damage) {
        super(shipName, 10, 5, 15);
    }
}
