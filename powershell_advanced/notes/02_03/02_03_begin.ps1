class Wallet
  {

# Define properties of the Wallet class
  [string] $NameOnID
  [string] $CreditCard1Bank
  [float] $CreditCardBalance
  [string] $DebitCardBank
  [float] $DebitCardAvailFunds
  [int] $CashOnHand

# Define methods of the wallet class  
  [void] SpendCash([float]$Spent) {
      $this.CashOnHand -= $Spent
    }
  [void] ChargeIt([float]$Charged) {
    $this.CreditCardBalance += $Charged
    }
  [void]ChargeAccount([float]$CardSpend) {
    $this.DebitCardAvailFunds -= $CardSpend
    }
  }










$ScottWallet = [Wallet]::new()

$ScottWallet.NameOnID = 'Scott Miles Burrell'
$ScottWallet.CreditCard1Bank = '1st Bank of Money'
$ScottWallet.CreditCardBalance = 1461.03
$ScottWallet.DebitCardBank = '1st Bank of Money'
$ScottWallet.DebitCardAvailFunds = 2104.84
$ScottWallet.CashOnHand = 145




$ScottWallet.SpendCash(45)

$ScottWallet.ChargeAccount(216.92)