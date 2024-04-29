 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;

import java.util.List;
import mypackage.LapDtls;

/**
 *
 * @author wwwkr
 */
public interface LapDAO {
    
    public boolean addLaps(LapDtls b);
    
    public List<LapDtls> getAllLaps();
    
    public LapDtls getLapById(int id);
    
    public boolean updateEditLaps(LapDtls b);
    
    public boolean deleteLaps(int id);
    
    public List<LapDtls> getNewLap();
    
    public List<LapDtls> getASUSNewLap();
    
    public List<LapDtls> getMSINewLap();
    
    public List<LapDtls> getAllMSILaps();
    
    public List<LapDtls> getAllASUSLaps();
    
    public List<LapDtls> getAllDELLLaps();
    
}
