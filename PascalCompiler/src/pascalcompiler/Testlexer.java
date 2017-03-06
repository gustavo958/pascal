/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pascalcompiler;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Reader;




/**
 *
 * @author Gustavo
 */
public class Testlexer {
    public static void main(String[] args) throws FileNotFoundException, IOException {
        
        Reader read = new BufferedReader(new FileReader("archivo.txt"));
        lexer lexico = new lexer(read);
        
        
        String resultado = "";
        int impar = 0;
        int par = 0;
        
       while(true){
            Token token = lexico.yylex();
            

            if(token ==null){
                
                System.out.println("EOF");
                return;
                
            }
            
            System.out.println("TOKEN: "+token + " "+
                     " linea: "+lexico.linea+" columna: "+lexico.columna);      
            
            
            
        }
    }
}
