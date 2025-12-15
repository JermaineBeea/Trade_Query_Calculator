using Xunit;

namespace TradeDynamics;

/// <summary>
/// Unit tests for TradeFunctions
/// Converted from Java TestTradeFunctions.java
/// Uses xUnit instead of JUnit
/// </summary>
public class TestTradeFunctions
{
    // TODO: Add your test cases here
    // This replaces: src/test/java/co/za/MainTest/TestTradeFunctions.java
    
    [Fact]
    public void TestCalculateProfit()
    {
        // Arrange
        var tradeFunctions = new TradeFunctions();
        decimal amount = 100m;
        decimal rate = 1.5m;
        
        // Act
        decimal result = tradeFunctions.CalculateProfit(amount, rate);
        
        // Assert
        Assert.Equal(150m, result);
    }
}
