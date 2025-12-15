namespace TradeDynamics;

/// <summary>
/// Core trade calculation functions
/// Converted from Java TradeFunctions.java
/// </summary>
public class TradeFunctions
{
    // TODO: Add your trade calculation logic here
    // This replaces: src/main/java/co/za/Main/TradeModules/TradeFunctions.java
    
    public decimal CalculateProfit(decimal amount, decimal rate)
    {
        return amount * rate;
    }
}
