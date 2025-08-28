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
}