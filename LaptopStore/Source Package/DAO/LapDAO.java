/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import entity.LapDtls;
import java.util.List;

/**
 *
 * @author wwwkr
 */
public interface LapDAO {
    
    public boolean addLaps(LapDtls b);
    
    public List<LapDtls> getAllLaps();    
    
    public LapDtls getLapById(int id);
    
    public boolean updateEditLap(LapDtls b);
    
    public boolean deleteLaps(int id);
    
    public List<LapDtls> getNewLap();
    
    public List<LapDtls> getRecentLap();
    
    public List<LapDtls> getOldLaps();
    
    public List<LapDtls> getAllRecentLaps();
    
    public List<LapDtls> getAllNewLaps();
    
    public List<LapDtls> getAllOldLaps();
    
    
}
