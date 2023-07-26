package com.gainsay.Service;

import com.gainsay.DAO.GameDAO;

public class GameService {
    GameDAO dao;

    public GameService() {
        dao = new GameDAO();
    }
    
}
