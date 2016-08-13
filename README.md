# facebookads
LookML files for a Facebook block compatible with Pipeline's schema

**Tables from the Facebook integration include your unique account id.** To use this block, you will need to:

1. Replace the schema name in each view file with your Facebook integration's schema name.
2. Replace the `x` in the table names at the top of each view file with your Facebook account id.
3. Ensure any hashed column names included in this block (i.e., spend#xxxxxxx) are replaced with the appropriate column from your schema.
