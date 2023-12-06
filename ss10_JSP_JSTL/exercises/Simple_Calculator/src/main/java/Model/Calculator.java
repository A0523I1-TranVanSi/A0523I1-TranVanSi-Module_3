package Model;

public class Calculator {
    public static float calculator(float firstOperator , float secondOperator , char operator){
        switch (operator){
            case '+' :
                return firstOperator + secondOperator ;
            case '-' :
                return firstOperator - secondOperator ;
            case '*':
                return firstOperator * secondOperator;
            case '/':
                if (secondOperator != 0 ){
                    return firstOperator / secondOperator ;
                }else {
                    throw new RuntimeException("ERROR !!!");
                }
            default:
                throw new RuntimeException("Invalid Operation ! ");
        }
    }
}
