SELECT
	DepositGroup
	,MagicWandCreator
	,MIN(DepositCharge) AS MIN_Charge
FROM WizzardDeposits
GROUP BY DepositGroup, MagicWandCreator
ORDER BY MagicWandCreator, DepositGroup