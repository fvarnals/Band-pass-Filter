## Client
Company that makes digital audio workspace plugins.
Would like to use this program alongside other programs.
Musicians apply filters to tracks to change how that track sounds.

## Product
**Band Pass Filter** <p>
Forces frequencies within that soundwave to fall within certain limits which we
 apply.

### Inputs:
Soundwave - Array of Frequencies (integer)
Lower Limit - Integer
Upper Limit - Integer


### Output:
Soundwave - Array of Frequencies (integer)

### Edge Cases:
- If anything other than an integer is found in the given array, output an error message: <br>
"Error in soundwave"

- If lower limit, or upper limit is not an integer, output error message: <br>
"Error in lower/upper limit"

- Lower and Upper limits could be any value, regardless of soundwave array.

#### Example: <p>
**Input**
Soundwave = [5, 6, 7, 8] <br>
Lower Limit = 1 <br>
Upper Limit = 7 <br>

**Output** = [5, 6, 7, 7]

- If no limit is supplied for one or both limit values, use default values: <br>
Default lower limit = 40 <br>
Default upper limit = 1000 <br>

- If input soundwave array contains more than 44100 values, then output error: <br>
'Soundwave array exceeds maximum number of values (44100)'
