/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pascalcompiler;

import java.io.*;

/**
 *
 * @author juliomarin
 */
public class Compilador {
    public static void main(String[] args) throws Exception {
        String caja[] = new String[3];
        caja[0] = "pascal.txt";
        caja[1] = "archivo.txt";
        caja[2] = "salsa.txt";
        Reader read = new BufferedReader(new FileReader(caja[1]));
        lexer lexico = new lexer(read);
        analizador sin = new analizador(lexico);
        sin.parse();
    }
}
