/**
 * @description Test class for NumberDivider
 * @author Auto-generated
 * @date Today
 */
@isTest
public class NumberDividerTest {
    
    @isTest
    static void testDecimalDivision() {
        // Test normal division
        Decimal result = NumberDivider.divide(10.0, 2.0);
        System.assertEquals(5.0, result, 'Division of 10.0 by 2.0 should equal 5.0');
        
        // Test division with decimal result
        result = NumberDivider.divide(7.0, 2.0);
        System.assertEquals(3.5, result, 'Division of 7.0 by 2.0 should equal 3.5');
        
        // Test division by negative number
        result = NumberDivider.divide(10.0, -2.0);
        System.assertEquals(-5.0, result, 'Division of 10.0 by -2.0 should equal -5.0');
    }
    
    @isTest
    static void testIntegerDivision() {
        // Test normal integer division
        Decimal result = NumberDivider.divide(10, 2);
        System.assertEquals(5.0, result, 'Division of 10 by 2 should equal 5.0');
        
        // Test integer division with decimal result
        result = NumberDivider.divide(7, 2);
        System.assertEquals(3.5, result, 'Division of 7 by 2 should equal 3.5');
        
        // Test division by negative integer
        result = NumberDivider.divide(10, -2);
        System.assertEquals(-5.0, result, 'Division of 10 by -2 should equal -5.0');
    }
    
    @isTest
    static void testDoubleDivision() {
        // Test normal double division
        Double result = NumberDivider.divide(10.0, 2.0);
        System.assertEquals(5.0, result, 'Division of 10.0 by 2.0 should equal 5.0');
        
        // Test division with decimal result
        result = NumberDivider.divide(7.0, 2.0);
        System.assertEquals(3.5, result, 'Division of 7.0 by 2.0 should equal 3.5');
    }
    
    @isTest
    static void testDivisionByZero() {
        // Test decimal division by zero
        try {
            NumberDivider.divide(10.0, 0.0);
            System.assert(false, 'Expected IllegalArgumentException for decimal division by zero');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Division by zero is not allowed', e.getMessage());
        }
        
        // Test integer division by zero
        try {
            NumberDivider.divide(10, 0);
            System.assert(false, 'Expected IllegalArgumentException for integer division by zero');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Division by zero is not allowed', e.getMessage());
        }
        
        // Test double division by zero
        try {
            NumberDivider.divide(10.0, 0.0);
            System.assert(false, 'Expected IllegalArgumentException for double division by zero');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Division by zero is not allowed', e.getMessage());
        }
    }
    
    @isTest
    static void testSafeDivision() {
        // Test normal safe division
        Decimal result = NumberDivider.safeDivide(10.0, 2.0);
        System.assertEquals(5.0, result, 'Safe division of 10.0 by 2.0 should equal 5.0');
        
        // Test safe division by zero
        result = NumberDivider.safeDivide(10.0, 0.0);
        System.assertEquals(null, result, 'Safe division by zero should return null');
        
        // Test safe division with null dividend
        result = NumberDivider.safeDivide(null, 2.0);
        System.assertEquals(null, result, 'Safe division with null dividend should return null');
        
        // Test safe division with null divisor
        result = NumberDivider.safeDivide(10.0, null);
        System.assertEquals(null, result, 'Safe division with null divisor should return null');
        
        // Test safe division with both null
        result = NumberDivider.safeDivide(null, null);
        System.assertEquals(null, result, 'Safe division with both null should return null');
    }
    
    @isTest
    static void testEdgeCases() {
        // Test division of zero
        Decimal result = NumberDivider.divide(0.0, 5.0);
        System.assertEquals(0.0, result, 'Division of zero by any number should equal zero');
        
        // Test division of very small numbers
        result = NumberDivider.divide(0.001, 0.001);
        System.assertEquals(1.0, result, 'Division of 0.001 by 0.001 should equal 1.0');
        
        // Test division of very large numbers
        result = NumberDivider.divide(1000000.0, 1000.0);
        System.assertEquals(1000.0, result, 'Division of 1000000.0 by 1000.0 should equal 1000.0');
    }
    
    // ADDITION TESTS
    
    @isTest
    static void testDecimalAddition() {
        // Test normal addition
        Decimal result = NumberDivider.add(5.0, 3.0);
        System.assertEquals(8.0, result, 'Addition of 5.0 and 3.0 should equal 8.0');
        
        // Test addition with decimals
        result = NumberDivider.add(2.5, 1.5);
        System.assertEquals(4.0, result, 'Addition of 2.5 and 1.5 should equal 4.0');
        
        // Test addition with negative numbers
        result = NumberDivider.add(10.0, -3.0);
        System.assertEquals(7.0, result, 'Addition of 10.0 and -3.0 should equal 7.0');
        
        // Test addition with both negative numbers
        result = NumberDivider.add(-5.0, -3.0);
        System.assertEquals(-8.0, result, 'Addition of -5.0 and -3.0 should equal -8.0');
    }
    
    @isTest
    static void testIntegerAddition() {
        // Test normal integer addition
        Decimal result = NumberDivider.add(5, 3);
        System.assertEquals(8.0, result, 'Addition of 5 and 3 should equal 8.0');
        
        // Test addition with negative integers
        result = NumberDivider.add(10, -3);
        System.assertEquals(7.0, result, 'Addition of 10 and -3 should equal 7.0');
        
        // Test addition of zero
        result = NumberDivider.add(5, 0);
        System.assertEquals(5.0, result, 'Addition of 5 and 0 should equal 5.0');
    }
    
    @isTest
    static void testDoubleAddition() {
        // Test normal double addition
        Double result = NumberDivider.add(5.0, 3.0);
        System.assertEquals(8.0, result, 'Addition of 5.0 and 3.0 should equal 8.0');
        
        // Test addition with decimals
        result = NumberDivider.add(2.5, 1.5);
        System.assertEquals(4.0, result, 'Addition of 2.5 and 1.5 should equal 4.0');
        
        // Test addition with very large numbers
        result = NumberDivider.add(1000000.0, 500000.0);
        System.assertEquals(1500000.0, result, 'Addition of 1000000.0 and 500000.0 should equal 1500000.0');
    }
    
    @isTest
    static void testSafeAddition() {
        // Test normal safe addition
        Decimal result = NumberDivider.safeAdd(5.0, 3.0);
        System.assertEquals(8.0, result, 'Safe addition of 5.0 and 3.0 should equal 8.0');
        
        // Test safe addition with first null
        result = NumberDivider.safeAdd(null, 3.0);
        System.assertEquals(null, result, 'Safe addition with first null should return null');
        
        // Test safe addition with second null
        result = NumberDivider.safeAdd(5.0, null);
        System.assertEquals(null, result, 'Safe addition with second null should return null');
        
        // Test safe addition with both null
        result = NumberDivider.safeAdd(null, null);
        System.assertEquals(null, result, 'Safe addition with both null should return null');
    }
    
    @isTest
    static void testMultipleAddition() {
        // Test addition of multiple numbers
        Decimal result = NumberDivider.addMultiple(1.0, 2.0, 3.0, 4.0);
        System.assertEquals(10.0, result, 'Addition of 1.0, 2.0, 3.0, 4.0 should equal 10.0');
        
        // Test addition with single number
        result = NumberDivider.addMultiple(5.0);
        System.assertEquals(5.0, result, 'Addition of single number 5.0 should equal 5.0');
        
        // Test addition with no arguments
        result = NumberDivider.addMultiple();
        System.assertEquals(0.0, result, 'Addition with no arguments should equal 0.0');
        
        // Test addition with null values mixed in
        result = NumberDivider.addMultiple(1.0, null, 3.0, null, 5.0);
        System.assertEquals(9.0, result, 'Addition with null values should skip nulls and equal 9.0');
        
        // Test addition with all null values
        result = NumberDivider.addMultiple(null, null, null);
        System.assertEquals(0.0, result, 'Addition with all null values should equal 0.0');
        
        // Test addition with negative numbers
        result = NumberDivider.addMultiple(10.0, -3.0, 2.0, -1.0);
        System.assertEquals(8.0, result, 'Addition of 10.0, -3.0, 2.0, -1.0 should equal 8.0');
    }
    
    @isTest
    static void testAdditionEdgeCases() {
        // Test addition of zero
        Decimal result = NumberDivider.add(0.0, 0.0);
        System.assertEquals(0.0, result, 'Addition of 0.0 and 0.0 should equal 0.0');
        
        // Test addition with very small numbers
        result = NumberDivider.add(0.001, 0.002);
        System.assertEquals(0.003, result, 'Addition of 0.001 and 0.002 should equal 0.003');
        
        // Test addition with very large numbers
        result = NumberDivider.add(999999.99, 0.01);
        System.assertEquals(1000000.00, result, 'Addition of 999999.99 and 0.01 should equal 1000000.00');
    }
}