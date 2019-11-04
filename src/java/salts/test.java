/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package salts;

import java.security.NoSuchAlgorithmException;

public class test 
{
	public static void main(String[] args) throws NoSuchAlgorithmException 
	{
		String  originalPassword = "iot";
		
		String generatedSecuredPasswordHash = BCrypt.hashpw(originalPassword, BCrypt.gensalt(12));
                
		System.out.println(generatedSecuredPasswordHash);
		boolean matched = BCrypt.checkpw(originalPassword, generatedSecuredPasswordHash);
		System.out.println(matched);
                
             BcryptHashing hash=new BcryptHashing();
             System.out.println(hash.check("good@123","$2a$12$KSHR66P5Arve0W6pa8QTWOz/c2eq36vYC2B6OFfXd0UutJzceg3YK"));
	}
}
