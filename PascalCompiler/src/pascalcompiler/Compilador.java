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
        Reader read = new BufferedReader(new FileReader("pascal.txt"));
        lexer lexico = new lexer(read);
        analizador sin = new analizador(lexico);
        sin.parse();
    }
}
