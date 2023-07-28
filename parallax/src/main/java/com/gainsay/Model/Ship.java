package com.gainsay.Model;

public class Ship {
    private int shipId;
    private String shipName;
    private String weaponName;
    private int health;
    private int speed;
    private int damage;
    // TODO: make damage into Weapon class that is more sophisicated

    // Super class constructors
    // full args for testing
    public Ship(int shipId, String shipName, String weaponName, int health, int speed, int damage) {
        this.shipId = shipId;
        this.shipName = shipName;
        this.weaponName = weaponName;
        this.health = health;
        this.speed = speed;
        this.damage = damage;
    }

    // getters and setters
    public int getShipId() {
        return shipId;
    }

    public void setShipId(int shipId) {
        this.shipId = shipId;
    }

    public String getShipName() {
        return shipName;
    }

    public void setShipName(String shipName) {
        this.shipName = shipName;
    }

    public String getWeaponName() {
        return weaponName;
    }

    public void setWeaponName(String weaponName) {
        this.weaponName = weaponName;
    }

    public int getHealth() {
        return health;
    }

    public void setHealth(int health) {
        this.health = health;
    }

    public int getSpeed() {
        return speed;
    }

    public void setSpeed(int speed) {
        this.speed = speed;
    }

    public int getDamage() {
        return damage;
    }

    public void setDamage(int damage) {
        this.damage = damage;
    }
}

// TODO: change these constructors to modify health, speed, and damage appropriately

class FastShip extends Ship {
    public FastShip(int shipId, String shipName, String weaponName, int health, int speed, int damage) {
        super(shipId, shipName, weaponName, 100, 60, 10);
    }
}

class ToughShip extends Ship {
    public ToughShip(int shipId, String shipName, String weaponName, int health, int speed, int damage) {
        super(shipId, shipName, weaponName, 120, 50, 5);
    }
}

class StrongShip extends Ship {
    public StrongShip(int shipId, String shipName, String weaponName, int health, int speed, int damage) {
        super(shipId, shipName, weaponName, 100, 40, 15);
    }
}
