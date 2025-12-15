# Simple C# Project Structure - Direct Java Migration

## Your Exact Files Converted to C#

```
TradeDynamics/
├── README.md                                    # Keep as-is
│
├── TradeDynamics.sln                           # REPLACES: (Maven workspace concept)
├── TradeDynamics.csproj                        # REPLACES: pom.xml
│
├── TradeFunctions.cs                           # REPLACES: src/main/java/.../TradeFunctions.java
└── TestTradeFunctions.cs                       # REPLACES: src/test/java/.../TestTradeFunctions.java
```

---

## What Each File Does

### 1. **TradeDynamics.sln** (Solution File)
- Replaces: Maven's concept of a "project"
- Just points to your `.csproj` file
- Open this in Visual Studio

### 2. **TradeDynamics.csproj** (Project File)
- Replaces: `pom.xml`
- Contains dependencies (like JUnit → xUnit)
- Contains build settings (like Java 17 → .NET 8)

### 3. **TradeFunctions.cs**
- Replaces: `src/main/java/co/za/Main/TradeModules/TradeFunctions.java`
- No nested folders needed - namespace handles it

### 4. **TestTradeFunctions.cs**
- Replaces: `src/test/java/co/za/MainTest/TestTradeFunctions.java`
- Tests stay in same project (simpler than Java)

---

## Key Changes from Java

| Java | C# |
|------|-----|
| `src/main/java/co/za/Main/TradeModules/TradeFunctions.java` | `TradeFunctions.cs` |
| `src/test/java/co/za/MainTest/TestTradeFunctions.java` | `TestTradeFunctions.cs` |
| `package co.za.Main.TradeModules;` | `namespace TradeDynamics;` |
| `pom.xml` | `TradeDynamics.csproj` |

---

## Commands Comparison

| Task | Java (Maven) | C# (.NET CLI) |
|------|--------------|---------------|
| Build | `mvn compile` | `dotnet build` |
| Test | `mvn test` | `dotnet test` |
| Run | `mvn exec:java` | `dotnet run` |
| Add dependency | Edit `pom.xml` | `dotnet add package <name>` |

---

## Folder Structure is FLAT

**Java requires nested folders:**
```
src/main/java/co/za/Main/TradeModules/TradeFunctions.java
```

**C# is flat with namespace:**
```
TradeFunctions.cs
namespace TradeDynamics;  // <- replaces folder structure
```

---

## That's It!

You have **4 files total**:
1. `README.md` (unchanged)
2. `TradeDynamics.sln` (new - solution file)
3. `TradeDynamics.csproj` (replaces pom.xml)
4. `TradeFunctions.cs` (your Java code converted)
5. `TestTradeFunctions.cs` (your test code converted)

No `src/main/java` folders. No `src/test` folders. Just 5 files in one directory.
