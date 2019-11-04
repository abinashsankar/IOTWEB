/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package salts;

import java.security.NoSuchAlgorithmException;

/**
 *
 * @author abi admin
 */
public class BcryptHashing 
{
	public boolean check(String current,String original) throws NoSuchAlgorithmException 
	{
                
		
		
		boolean matched = BCrypt.checkpw(current, original);
		return matched;
	}
        public String create(String password) throws NoSuchAlgorithmException 
	{
		String  originalPassword = password;
		String generatedSecuredPasswordHash = BCrypt.hashpw(originalPassword, BCrypt.gensalt(12));
		return generatedSecuredPasswordHash;
	}
}
