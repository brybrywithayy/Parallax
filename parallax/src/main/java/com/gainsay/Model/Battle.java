package com.gainsay.Model;

public class Battle {
    private Pilot pilot1;
    private Pilot pilot2;

    // default constructor to create a new round
    public Battle(Pilot pilot1, Pilot pilot2) {
        this.pilot1 = pilot1;
        this.pilot2 = pilot2;
    }

    // getters
    public Pilot getPilot1() {
        return pilot1;
    }
    public Pilot getPilot2() {
        return pilot2;
    }


    /*
     * We don't want this logic here
     * Need to use the Battle() constructor to create a match then run the match
     * elsewhere?
     */
//     public void startNewBattle(Pilot pilot1, Pilot pilot2) {
//         while(pilot1.getShip().getHealth() > 0 && pilot2.getShip().getHealth() > 0) {
//             // ships attack each other
//             // TODO: add logic for calculating and applying damage
//             if (pilot1.getShip().getHealth() <= 0) {
//                 pilot2.addWin();
//                 pilot1.addLoss();
//                 // TODO: set faction wins/losses appropriately
//             } else {
//                 pilot1.addLoss();
//                 pilot2.addWin();
//             }
//         }
//     }
}
