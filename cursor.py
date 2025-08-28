class Cursor:
    """
    A cursor class that can perform subtraction operations on two integers.
    """
    
    def __init__(self):
        """Initialize the cursor."""
        pass
    
    def subtract(self, a, b):
        """
        Subtract two integers.
        
        Args:
            a (int): The first integer (minuend)
            b (int): The second integer (subtrahend)
            
        Returns:
            int: The result of a - b
            
        Raises:
            TypeError: If either argument is not an integer
        """
        if not isinstance(a, int) or not isinstance(b, int):
            raise TypeError("Both arguments must be integers")
        
        return a - b
    
    def __str__(self):
        """String representation of the cursor."""
        return "Cursor(subtraction_tool)"
    
    def __repr__(self):
        """Detailed string representation of the cursor."""
        return "Cursor()"


# Example usage
if __name__ == "__main__":
    # Create a cursor instance
    cursor = Cursor()
    
    # Test the subtract method
    print(f"Cursor: {cursor}")
    print(f"10 - 3 = {cursor.subtract(10, 3)}")
    print(f"5 - 8 = {cursor.subtract(5, 8)}")
    print(f"100 - 25 = {cursor.subtract(100, 25)}")
    
    # Test error handling
    try:
        cursor.subtract(10, "5")
    except TypeError as e:
        print(f"Error: {e}")