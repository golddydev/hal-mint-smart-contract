use aiken/transaction/credential.{Address}
use aiken/transaction/value.{PolicyId}
use common/hashes.{ScriptHash, VerificationKeyHash}

pub type SettingsV1 {
  policy_id: PolicyId,
  // who can mint HAL NFTs
  allowed_minter: VerificationKeyHash,
  // hal nft's price
  hal_nft_price: Int,
  // address to collect HAL NFT's cost
  payment_address: Address,
  // CIP68 Spending validator address
  // ref asset is sent to this address
  cip68_script_address: Address,
  // user makes an order (as UTxO) to this address
  order_spend_script_address: Address,
  // this is policy id of token
  // which proves order UTxO is valid
  order_mint_policy_id: PolicyId,
  // minting data script is used to check
  // all minting handles logic (for both new and legacy)
  // minting_data_asset is locked inside that script
  minting_data_script_hash: ScriptHash,
}
