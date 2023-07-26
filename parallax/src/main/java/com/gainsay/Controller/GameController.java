package com.gainsay.Controller;

import com.gainsay.Service.GameService;

import io.javalin.Javalin;

public class GameController {
    
    GameService service;

    public GameController() {
        service = new GameService();
    }

    public Javalin startAPI() {
        Javalin app = Javalin.create();
        
        // app.post
        // app.get
        // etc

        return app;
    }
}
