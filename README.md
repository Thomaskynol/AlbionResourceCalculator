# Albion Resource Calculator

This Lua script helps you calculate how many resources you need to purchase in order to craft a large number of items in **Albion Online**. 

## Features:
- Allows input for quantities of resources per item.
- Supports multiple materials such as Plank, Cloth, Leather, and Steal.
- Applies a material waste reduction factor of 15% (85% efficiency).
- Automatically adds extra materials if the final amount is over a threshold (4 in this case).

## How to Use:
1. Run the script in a Lua interpreter.
2. Enter the required quantity of each material when prompted (for example, "Plank", "Cloth", etc.).
3. Enter the number of items you wish to craft for each material.
4. The script will calculate the total amount of resources needed, considering the waste factor.
5. The final message will display the total resources required.
