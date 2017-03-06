/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pascalcompiler;

import java.io.File;

/**
 *
 * @author Alejandro
 */
public class PascalCompiler {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        String path = "/Users/Alejandro/NetBeansProjects/PascalCompiler/src/pascalcompiler/Lexer.Flex";
        
        File file = new File(path);
        jflex.Main.generate(file);
    }
    
}
