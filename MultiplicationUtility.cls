/**
 * Utility class for mathematical operations
 * Contains methods for basic arithmetic operations
 */
public class MultiplicationUtility {
    
    /**
     * Multiplies two integers and returns the result
     * @param firstNumber The first integer to multiply
     * @param secondNumber The second integer to multiply
     * @return The product of the two integers
     */
    public static Integer multiply(Integer firstNumber, Integer secondNumber) {
        if (firstNumber == null || secondNumber == null) {
            throw new IllegalArgumentException('Both numbers must not be null');
        }
        
        return firstNumber * secondNumber;
    }
    
    /**
     * Multiplies two integers with overflow protection
     * @param firstNumber The first integer to multiply
     * @param secondNumber The second integer to multiply
     * @return The product of the two integers as a Long to handle overflow
     */
    public static Long multiplyWithOverflowProtection(Integer firstNumber, Integer secondNumber) {
        if (firstNumber == null || secondNumber == null) {
            throw new IllegalArgumentException('Both numbers must not be null');
        }
        
        return (Long)firstNumber * (Long)secondNumber;
    }
}