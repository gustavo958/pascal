/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pascalcompiler;

import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.text.html.HTMLEditorKit;

/**
 *
 * @author juliomarin
 */
public class PascalCompiler {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
//        String pathflex = "/Users/juliomarin/NetBeansProjects/PascalCompiler/src/pascalcompiler/Lexer.Flex";
//        File file = new File(pathflex);
//        jflex.Main.generate(file);


        String opciones[] = new String[7];
        opciones[0] = "-destdir";
        opciones[1] = "/Users/juliomarin/NetBeansProjects/PascalCompiler/src/pascalcompiler";
        opciones[2] = "-parser";
        opciones[3] = "analizador";
        opciones[4] = "-symbols";
        opciones[5] = "Token";
        opciones[6] = "/Users/juliomarin/NetBeansProjects/PascalCompiler/src/pascalcompiler/parser.cup";
        
        try {
            java_cup.Main.main(opciones);
        } catch (Exception ex) {
            Logger.getLogger(HTMLEditorKit.Parser.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
