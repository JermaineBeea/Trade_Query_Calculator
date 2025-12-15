#!/bin/bash

echo "========================================="
echo "Creating C# Trade Dynamics Project"
echo "========================================="
echo ""

# Create project directory
PROJECT_NAME="TradeDynamics"
mkdir -p "$PROJECT_NAME"
cd "$PROJECT_NAME"

echo "✅ Created directory: $PROJECT_NAME"
echo ""

# Create README.md
cat > README.md << 'EOF'
# Trade Dynamics Calculator
A C# application for analyzing multi-commodity trade profitability using mathematical models. Features real-time calculations of trade returns, profit factors, and optimal parameters across 5 variables.

## Build & Run
```bash
dotnet build
dotnet test
dotnet run
```

## Technologies
- .NET 8
- xUnit (Testing)
- SQLite (Database)
EOF

echo "✅ Created: README.md"

# Create TradeDynamics.csproj (replaces pom.xml)
cat > TradeDynamics.csproj << 'EOF'
<Project Sdk="Microsoft.NET.Sdk">

  <PropertyGroup>
    <OutputType>Exe</OutputType>
    <TargetFramework>net8.0</TargetFramework>
    <ImplicitUsings>enable</ImplicitUsings>
    <Nullable>enable</Nullable>
    <RootNamespace>TradeDynamics</RootNamespace>
  </PropertyGroup>

  <ItemGroup>
    <!-- Testing Framework (replaces JUnit) -->
    <PackageReference Include="xunit" Version="2.6.2" />
    <PackageReference Include="xunit.runner.visualstudio" Version="2.5.4">
      <PrivateAssets>all</PrivateAssets>
      <IncludeAssets>runtime; build; native; contentfiles; analyzers</IncludeAssets>
    </PackageReference>
    <PackageReference Include="Microsoft.NET.Test.Sdk" Version="17.8.0" />
  </ItemGroup>

</Project>
EOF

echo "✅ Created: TradeDynamics.csproj (replaces pom.xml)"

# Create TradeDynamics.sln (solution file)
cat > TradeDynamics.sln << 'EOF'
Microsoft Visual Studio Solution File, Format Version 12.00
# Visual Studio Version 17
VisualStudioVersion = 17.0.31903.59
MinimumVisualStudioVersion = 10.0.40219.1
Project("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "TradeDynamics", "TradeDynamics.csproj", "{12345678-1234-1234-1234-123456789012}"
EndProject
Global
	GlobalSection(SolutionConfigurationPlatforms) = preSolution
		Debug|Any CPU = Debug|Any CPU
		Release|Any CPU = Release|Any CPU
	EndGlobalSection
	GlobalSection(ProjectConfigurationPlatforms) = postSolution
		{12345678-1234-1234-1234-123456789012}.Debug|Any CPU.ActiveCfg = Debug|Any CPU
		{12345678-1234-1234-1234-123456789012}.Debug|Any CPU.Build.0 = Debug|Any CPU
		{12345678-1234-1234-1234-123456789012}.Release|Any CPU.ActiveCfg = Release|Any CPU
		{12345678-1234-1234-1234-123456789012}.Release|Any CPU.Build.0 = Release|Any CPU
	EndGlobalSection
EndGlobal
EOF

echo "✅ Created: TradeDynamics.sln"

# Create TradeFunctions.cs (main code)
cat > TradeFunctions.cs << 'EOF'
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
EOF

echo "✅ Created: TradeFunctions.cs"

# Create TestTradeFunctions.cs (test code)
cat > TestTradeFunctions.cs << 'EOF'
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
EOF

echo "✅ Created: TestTradeFunctions.cs"

# Create .gitignore
cat > .gitignore << 'EOF'
# Build results
bin/
obj/
*.dll
*.exe
*.pdb

# User-specific files
*.user
*.suo
*.userosscache

# Visual Studio
.vs/
*.sln.docstates

# Rider
.idea/

# Test results
TestResults/
*.trx
*.coverage

# OS files
.DS_Store
Thumbs.db
EOF

echo "✅ Created: .gitignore"

echo ""
echo "========================================="
echo "Project Structure Created Successfully!"
echo "========================================="
echo ""

# Display directory tree
echo "📁 Directory Structure:"
tree -L 1 2>/dev/null || ls -la

echo ""
echo "========================================="
echo "Next Steps:"
echo "========================================="
echo ""
echo "1. Navigate to project:"
echo "   cd $PROJECT_NAME"
echo ""
echo "2. Restore packages (like 'mvn install'):"
echo "   dotnet restore"
echo ""
echo "3. Build project (like 'mvn compile'):"
echo "   dotnet build"
echo ""
echo "4. Run tests (like 'mvn test'):"
echo "   dotnet test"
echo ""
echo "5. Run program (like 'mvn exec:java'):"
echo "   dotnet run"
echo ""
echo "6. Open in Visual Studio or VS Code:"
echo "   code .                    # VS Code"
echo "   open TradeDynamics.sln    # Visual Studio (Mac)"
echo ""
echo "========================================="
echo "File Mapping (Java → C#):"
echo "========================================="
echo ""
echo "pom.xml                  → TradeDynamics.csproj"
echo "src/main/java/.../       → TradeFunctions.cs"
echo "src/test/java/.../       → TestTradeFunctions.cs"
echo "package co.za.Main;      → namespace TradeDynamics;"
echo "mvn compile              → dotnet build"
echo "mvn test                 → dotnet test"
echo "mvn exec:java            → dotnet run"
echo ""
echo "✅ Setup complete! Happy coding!"