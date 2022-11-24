public class AuraSheetQ1Cls {
    @Auraenabled
    public static string createAcc(account acc)
    {
        insert acc;
          

        system.debug(acc);
  return acc.name;
    }

}