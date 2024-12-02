using System;
using System.Linq;

public static class InputValidator
{
    public static bool IsValidPlanId(string planId)
    {
        if (string.IsNullOrEmpty(planId))
        {
            return false;
        }

        return int.TryParse(planId, out _) && !planId.Contains(".");
    }

    public static bool IsValidWalletId(string walletId)
    {
        if (string.IsNullOrEmpty(walletId))
        {
            return false;
        }

        return int.TryParse(walletId, out _) && !walletId.Contains(".");
    }

    public static bool IsValidMobileNumber(string mobileNumber)
    {
        if (string.IsNullOrEmpty(mobileNumber) || mobileNumber.Length != 11)
        {
            return false;
        }

        return mobileNumber.All(char.IsDigit);
    }
}