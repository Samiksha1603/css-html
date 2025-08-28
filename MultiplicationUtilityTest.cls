/**
 * Test class for MultiplicationUtility
 * Contains unit tests to verify multiplication functionality
 */
@isTest
public class MultiplicationUtilityTest {
    
    /**
     * Test basic multiplication with positive numbers
     */
    @isTest
    static void testMultiplyPositiveNumbers() {
        // Test case 1: Small positive numbers
        Integer result1 = MultiplicationUtility.multiply(5, 3);
        System.assertEquals(15, result1, 'Multiplication of 5 and 3 should equal 15');
        
        // Test case 2: Larger positive numbers
        Integer result2 = MultiplicationUtility.multiply(25, 4);
        System.assertEquals(100, result2, 'Multiplication of 25 and 4 should equal 100');
    }
    
    /**
     * Test multiplication with negative numbers
     */
    @isTest
    static void testMultiplyNegativeNumbers() {
        // Test case 1: One negative number
        Integer result1 = MultiplicationUtility.multiply(-5, 3);
        System.assertEquals(-15, result1, 'Multiplication of -5 and 3 should equal -15');
        
        // Test case 2: Both negative numbers
        Integer result2 = MultiplicationUtility.multiply(-4, -6);
        System.assertEquals(24, result2, 'Multiplication of -4 and -6 should equal 24');
    }
    
    /**
     * Test multiplication with zero
     */
    @isTest
    static void testMultiplyWithZero() {
        // Test case 1: First number is zero
        Integer result1 = MultiplicationUtility.multiply(0, 5);
        System.assertEquals(0, result1, 'Multiplication of 0 and 5 should equal 0');
        
        // Test case 2: Second number is zero
        Integer result2 = MultiplicationUtility.multiply(7, 0);
        System.assertEquals(0, result2, 'Multiplication of 7 and 0 should equal 0');
        
        // Test case 3: Both numbers are zero
        Integer result3 = MultiplicationUtility.multiply(0, 0);
        System.assertEquals(0, result3, 'Multiplication of 0 and 0 should equal 0');
    }
    
    /**
     * Test multiplication with null values
     */
    @isTest
    static void testMultiplyWithNullValues() {
        try {
            MultiplicationUtility.multiply(null, 5);
            System.assert(false, 'Expected IllegalArgumentException for null first parameter');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Both numbers must not be null', e.getMessage());
        }
        
        try {
            MultiplicationUtility.multiply(5, null);
            System.assert(false, 'Expected IllegalArgumentException for null second parameter');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Both numbers must not be null', e.getMessage());
        }
    }
    
    /**
     * Test overflow protection method
     */
    @isTest
    static void testMultiplyWithOverflowProtection() {
        // Test with large numbers that might cause overflow
        Long result = MultiplicationUtility.multiplyWithOverflowProtection(1000000, 1000000);
        System.assertEquals(1000000000000L, result, 'Overflow protection should handle large multiplication');
        
        // Test with regular numbers
        Long result2 = MultiplicationUtility.multiplyWithOverflowProtection(12, 8);
        System.assertEquals(96L, result2, 'Overflow protection should work with regular numbers');
    }
}