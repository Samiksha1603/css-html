/**
 * @description Apex class to perform mathematical operations (division and addition) on two numbers
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
    
    // ADDITION METHODS
    
    /**
     * @description Adds two decimal numbers
     * @param addend1 The first number to add
     * @param addend2 The second number to add
     * @return Decimal The sum of the two numbers
     */
    public static Decimal add(Decimal addend1, Decimal addend2) {
        return addend1 + addend2;
    }
    
    /**
     * @description Adds two integer numbers and returns decimal result
     * @param addend1 The first number to add
     * @param addend2 The second number to add
     * @return Decimal The sum of the two numbers
     */
    public static Decimal add(Integer addend1, Integer addend2) {
        return Decimal.valueOf(addend1) + Decimal.valueOf(addend2);
    }
    
    /**
     * @description Adds two double numbers
     * @param addend1 The first number to add
     * @param addend2 The second number to add
     * @return Double The sum of the two numbers
     */
    public static Double add(Double addend1, Double addend2) {
        return addend1 + addend2;
    }
    
    /**
     * @description Safely adds two numbers with null checking
     * @param addend1 The first number to add
     * @param addend2 The second number to add
     * @return Decimal The sum of the two numbers, or null if any input is null
     */
    public static Decimal safeAdd(Decimal addend1, Decimal addend2) {
        if (addend1 == null || addend2 == null) {
            return null;
        }
        return addend1 + addend2;
    }
    
    /**
     * @description Adds multiple decimal numbers using variable arguments
     * @param numbers Variable number of decimal arguments to add
     * @return Decimal The sum of all numbers, or 0 if no arguments provided
     */
    public static Decimal addMultiple(Decimal... numbers) {
        if (numbers == null || numbers.isEmpty()) {
            return 0;
        }
        
        Decimal sum = 0;
        for (Decimal num : numbers) {
            if (num != null) {
                sum += num;
            }
        }
        return sum;
    }
}