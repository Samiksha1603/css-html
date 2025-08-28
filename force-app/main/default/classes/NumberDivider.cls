/**
 * @description Apex class to perform division operations on two numbers
 * @author Auto-generated
 * @date Today
 */
public with sharing class NumberDivider {
    
    /**
     * @description Divides two decimal numbers
     * @param dividend The number to be divided
     * @param divisor The number to divide by
     * @return Decimal The result of the division
     * @throws IllegalArgumentException if divisor is zero
     */
    public static Decimal divide(Decimal dividend, Decimal divisor) {
        if (divisor == 0) {
            throw new IllegalArgumentException('Division by zero is not allowed');
        }
        return dividend / divisor;
    }
    
    /**
     * @description Divides two integer numbers and returns decimal result
     * @param dividend The number to be divided
     * @param divisor The number to divide by
     * @return Decimal The result of the division
     * @throws IllegalArgumentException if divisor is zero
     */
    public static Decimal divide(Integer dividend, Integer divisor) {
        if (divisor == 0) {
            throw new IllegalArgumentException('Division by zero is not allowed');
        }
        return Decimal.valueOf(dividend) / Decimal.valueOf(divisor);
    }
    
    /**
     * @description Divides two double numbers
     * @param dividend The number to be divided
     * @param divisor The number to divide by
     * @return Double The result of the division
     * @throws IllegalArgumentException if divisor is zero
     */
    public static Double divide(Double dividend, Double divisor) {
        if (divisor == 0) {
            throw new IllegalArgumentException('Division by zero is not allowed');
        }
        return dividend / divisor;
    }
    
    /**
     * @description Safely divides two numbers with null checking
     * @param dividend The number to be divided
     * @param divisor The number to divide by
     * @return Decimal The result of the division, or null if inputs are invalid
     */
    public static Decimal safeDivide(Decimal dividend, Decimal divisor) {
        if (dividend == null || divisor == null || divisor == 0) {
            return null;
        }
        return dividend / divisor;
    }
}