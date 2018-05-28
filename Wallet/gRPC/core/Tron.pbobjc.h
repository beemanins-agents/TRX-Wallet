// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: Tron.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30002
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30002 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

@class AccountId;
@class Account_Frozen;
@class Block;
@class BlockHeader;
@class BlockHeader_raw;
@class BlockInventory_BlockId;
@class ChainInventory_BlockId;
@class Endpoint;
@class GPBAny;
@class HelloMessage_BlockId;
@class TXInput_raw;
@class TXOutput;
@class TronTransaction;
@class Transaction_Contract;
@class Transaction_Result;
@class Transaction_raw;
@class Vote;
@class acuthrity;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum AccountType

typedef GPB_ENUM(AccountType) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  AccountType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  AccountType_Normal = 0,
  AccountType_AssetIssue = 1,
  AccountType_Contract = 2,
};

GPBEnumDescriptor *AccountType_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL AccountType_IsValidValue(int32_t value);

#pragma mark - Enum ReasonCode

typedef GPB_ENUM(ReasonCode) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  ReasonCode_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  ReasonCode_Requested = 0,
  ReasonCode_BadProtocol = 2,
  ReasonCode_TooManyPeers = 4,
  ReasonCode_DuplicatePeer = 5,
  ReasonCode_IncompatibleProtocol = 6,
  ReasonCode_NullIdentity = 7,
  ReasonCode_PeerQuiting = 8,
  ReasonCode_UnexpectedIdentity = 9,
  ReasonCode_LocalIdentity = 10,
  ReasonCode_PingTimeout = 11,
  ReasonCode_UserReason = 16,
  ReasonCode_Reset = 17,
  ReasonCode_SyncFail = 18,
  ReasonCode_FetchFail = 19,
  ReasonCode_BadTx = 20,
  ReasonCode_BadBlock = 21,
  ReasonCode_Forked = 22,
  ReasonCode_Unlinkable = 23,
  ReasonCode_IncompatibleVersion = 24,
  ReasonCode_IncompatibleChain = 25,
  ReasonCode_TimeOut = 32,
  ReasonCode_ConnectFail = 33,
  ReasonCode_Unknown = 255,
};

GPBEnumDescriptor *ReasonCode_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL ReasonCode_IsValidValue(int32_t value);

#pragma mark - Enum Transaction_Contract_ContractType

typedef GPB_ENUM(Transaction_Contract_ContractType) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  Transaction_Contract_ContractType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  Transaction_Contract_ContractType_AccountCreateContract = 0,
  Transaction_Contract_ContractType_TransferContract = 1,
  Transaction_Contract_ContractType_TransferAssetContract = 2,
  Transaction_Contract_ContractType_VoteAssetContract = 3,
  Transaction_Contract_ContractType_VoteWitnessContract = 4,
  Transaction_Contract_ContractType_WitnessCreateContract = 5,
  Transaction_Contract_ContractType_AssetIssueContract = 6,
  Transaction_Contract_ContractType_DeployContract = 7,
  Transaction_Contract_ContractType_WitnessUpdateContract = 8,
  Transaction_Contract_ContractType_ParticipateAssetIssueContract = 9,
  Transaction_Contract_ContractType_AccountUpdateContract = 10,
  Transaction_Contract_ContractType_FreezeBalanceContract = 11,
  Transaction_Contract_ContractType_UnfreezeBalanceContract = 12,
  Transaction_Contract_ContractType_WithdrawBalanceContract = 13,
  Transaction_Contract_ContractType_UnfreezeAssetContract = 14,
  Transaction_Contract_ContractType_UpdateAssetContract = 15,
  Transaction_Contract_ContractType_CustomContract = 20,
};

GPBEnumDescriptor *Transaction_Contract_ContractType_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL Transaction_Contract_ContractType_IsValidValue(int32_t value);

#pragma mark - Enum Transaction_Result_code

typedef GPB_ENUM(Transaction_Result_code) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  Transaction_Result_code_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  Transaction_Result_code_Sucess = 0,
  Transaction_Result_code_Failed = 1,
};

GPBEnumDescriptor *Transaction_Result_code_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL Transaction_Result_code_IsValidValue(int32_t value);

#pragma mark - Enum BlockInventory_Type

typedef GPB_ENUM(BlockInventory_Type) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  BlockInventory_Type_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  BlockInventory_Type_Sync = 0,
  BlockInventory_Type_Advtise = 1,
  BlockInventory_Type_Fetch = 2,
};

GPBEnumDescriptor *BlockInventory_Type_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL BlockInventory_Type_IsValidValue(int32_t value);

#pragma mark - Enum Inventory_InventoryType

typedef GPB_ENUM(Inventory_InventoryType) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  Inventory_InventoryType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  Inventory_InventoryType_Trx = 0,
  Inventory_InventoryType_Block = 1,
};

GPBEnumDescriptor *Inventory_InventoryType_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL Inventory_InventoryType_IsValidValue(int32_t value);

#pragma mark - Enum Items_ItemType

typedef GPB_ENUM(Items_ItemType) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  Items_ItemType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  Items_ItemType_Err = 0,
  Items_ItemType_Trx = 1,
  Items_ItemType_Block = 2,
  Items_ItemType_Blockheader = 3,
};

GPBEnumDescriptor *Items_ItemType_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL Items_ItemType_IsValidValue(int32_t value);

#pragma mark - TronRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
@interface TronRoot : GPBRootObject
@end

#pragma mark - AccountId

typedef GPB_ENUM(AccountId_FieldNumber) {
  AccountId_FieldNumber_Name = 1,
  AccountId_FieldNumber_Address = 2,
};

/**
 * AccountId, (name, address) use name, (null, address) use address, (name, null) use name,
 **/
@interface AccountId : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSData *name;

@property(nonatomic, readwrite, copy, null_resettable) NSData *address;

@end

#pragma mark - Vote

typedef GPB_ENUM(Vote_FieldNumber) {
  Vote_FieldNumber_VoteAddress = 1,
  Vote_FieldNumber_VoteCount = 2,
};

/**
 * vote message
 **/
@interface Vote : GPBMessage

/** the super rep address */
@property(nonatomic, readwrite, copy, null_resettable) NSData *voteAddress;

/** the vote num to this super rep. */
@property(nonatomic, readwrite) int64_t voteCount;

@end

#pragma mark - TronAccount

typedef GPB_ENUM(Account_FieldNumber) {
  Account_FieldNumber_AccountName = 1,
  Account_FieldNumber_Type = 2,
  Account_FieldNumber_Address = 3,
  Account_FieldNumber_Balance = 4,
  Account_FieldNumber_VotesArray = 5,
  Account_FieldNumber_Asset = 6,
  Account_FieldNumber_FrozenArray = 7,
  Account_FieldNumber_NetUsage = 8,
  Account_FieldNumber_CreateTime = 9,
  Account_FieldNumber_LatestOprationTime = 10,
  Account_FieldNumber_Allowance = 11,
  Account_FieldNumber_LatestWithdrawTime = 12,
  Account_FieldNumber_Code = 13,
  Account_FieldNumber_IsWitness = 14,
  Account_FieldNumber_IsCommittee = 15,
  Account_FieldNumber_FrozenSupplyArray = 16,
  Account_FieldNumber_AssetIssuedName = 17,
  Account_FieldNumber_LatestAssetOperationTime = 18,
  Account_FieldNumber_FreeNetUsage = 19,
  Account_FieldNumber_FreeAssetNetUsage = 20,
  Account_FieldNumber_LatestConsumeTime = 21,
  Account_FieldNumber_LatestConsumeFreeTime = 22,
};

/**
 * TronAccount
 **/
@interface TronAccount : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSData *accountName;

@property(nonatomic, readwrite) AccountType type;

/** the create address */
@property(nonatomic, readwrite, copy, null_resettable) NSData *address;

/** the trx balance */
@property(nonatomic, readwrite) int64_t balance;

/** the votes */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<Vote*> *votesArray;
/** The number of items in @c votesArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger votesArray_Count;

/** the other asset owned by this account */
@property(nonatomic, readwrite, strong, null_resettable) GPBStringInt64Dictionary *asset;
/** The number of items in @c asset without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger asset_Count;

/**
 * latest asset operation time
 * the frozen balance
 **/
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<Account_Frozen*> *frozenArray;
/** The number of items in @c frozenArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger frozenArray_Count;

/** bandwidth, get from frozen */
@property(nonatomic, readwrite) int64_t netUsage;

/** this account create time */
@property(nonatomic, readwrite) int64_t createTime;

/** this last operation time, including transfer, voting and so on. //FIXME fix grammar */
@property(nonatomic, readwrite) int64_t latestOprationTime;

/** witness block producing allowance */
@property(nonatomic, readwrite) int64_t allowance;

/** last withdraw time */
@property(nonatomic, readwrite) int64_t latestWithdrawTime;

/** not used so far */
@property(nonatomic, readwrite, copy, null_resettable) NSData *code;

@property(nonatomic, readwrite) BOOL isWitness;

@property(nonatomic, readwrite) BOOL isCommittee;

/** frozen asset(for asset issuer) */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<Account_Frozen*> *frozenSupplyArray;
/** The number of items in @c frozenSupplyArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger frozenSupplyArray_Count;

/** asset_issued_name */
@property(nonatomic, readwrite, copy, null_resettable) NSData *assetIssuedName;

@property(nonatomic, readwrite, strong, null_resettable) GPBStringInt64Dictionary *latestAssetOperationTime;
/** The number of items in @c latestAssetOperationTime without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger latestAssetOperationTime_Count;

@property(nonatomic, readwrite) int64_t freeNetUsage;

@property(nonatomic, readwrite, strong, null_resettable) GPBStringInt64Dictionary *freeAssetNetUsage;
/** The number of items in @c freeAssetNetUsage without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger freeAssetNetUsage_Count;

@property(nonatomic, readwrite) int64_t latestConsumeTime;

@property(nonatomic, readwrite) int64_t latestConsumeFreeTime;

@end

/**
 * Fetches the raw value of a @c Account's @c type property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t Account_Type_RawValue(TronAccount *message);
/**
 * Sets the raw value of an @c Account's @c type property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetAccount_Type_RawValue(TronAccount *message, int32_t value);

#pragma mark - Account_Frozen

typedef GPB_ENUM(Account_Frozen_FieldNumber) {
  Account_Frozen_FieldNumber_FrozenBalance = 1,
  Account_Frozen_FieldNumber_ExpireTime = 2,
};

/**
 * frozen balance
 **/
@interface Account_Frozen : GPBMessage

/** the frozen trx balance */
@property(nonatomic, readwrite) int64_t frozenBalance;

/** the expire time */
@property(nonatomic, readwrite) int64_t expireTime;

@end

#pragma mark - acuthrity

typedef GPB_ENUM(acuthrity_FieldNumber) {
  acuthrity_FieldNumber_Account = 1,
  acuthrity_FieldNumber_PermissionName = 2,
};

/**
 * FIXME authority?
 **/
@interface acuthrity : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) AccountId *account;
/** Test to see if @c account has been set. */
@property(nonatomic, readwrite) BOOL hasAccount;

@property(nonatomic, readwrite, copy, null_resettable) NSData *permissionName;

@end

#pragma mark - permision

typedef GPB_ENUM(permision_FieldNumber) {
  permision_FieldNumber_Account = 1,
};

/**
 * FIXME permission
 **/
@interface permision : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) AccountId *account;
/** Test to see if @c account has been set. */
@property(nonatomic, readwrite) BOOL hasAccount;

@end

#pragma mark - Witness

typedef GPB_ENUM(Witness_FieldNumber) {
  Witness_FieldNumber_Address = 1,
  Witness_FieldNumber_VoteCount = 2,
  Witness_FieldNumber_PubKey = 3,
  Witness_FieldNumber_URL = 4,
  Witness_FieldNumber_TotalProduced = 5,
  Witness_FieldNumber_TotalMissed = 6,
  Witness_FieldNumber_LatestBlockNum = 7,
  Witness_FieldNumber_LatestSlotNum = 8,
  Witness_FieldNumber_IsJobs = 9,
};

/**
 * Witness
 **/
@interface Witness : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSData *address;

@property(nonatomic, readwrite) int64_t voteCount;

@property(nonatomic, readwrite, copy, null_resettable) NSData *pubKey;

@property(nonatomic, readwrite, copy, null_resettable) NSString *URL;

@property(nonatomic, readwrite) int64_t totalProduced;

@property(nonatomic, readwrite) int64_t totalMissed;

@property(nonatomic, readwrite) int64_t latestBlockNum;

@property(nonatomic, readwrite) int64_t latestSlotNum;

@property(nonatomic, readwrite) BOOL isJobs;

@end

#pragma mark - Votes

typedef GPB_ENUM(Votes_FieldNumber) {
  Votes_FieldNumber_Address = 1,
  Votes_FieldNumber_OldVotesArray = 2,
  Votes_FieldNumber_NewVotesArray = 3,
};

/**
 * Vote Change
 **/
@interface Votes : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSData *address;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<Vote*> *oldVotesArray;
/** The number of items in @c oldVotesArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger oldVotesArray_Count;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<Vote*> *newVotesArray NS_RETURNS_NOT_RETAINED;
/** The number of items in @c newVotesArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger newVotesArray_Count;

@end

#pragma mark - TXOutput

typedef GPB_ENUM(TXOutput_FieldNumber) {
  TXOutput_FieldNumber_Value = 1,
  TXOutput_FieldNumber_PubKeyHash = 2,
};

@interface TXOutput : GPBMessage

@property(nonatomic, readwrite) int64_t value;

@property(nonatomic, readwrite, copy, null_resettable) NSData *pubKeyHash;

@end

#pragma mark - TXInput

typedef GPB_ENUM(TXInput_FieldNumber) {
  TXInput_FieldNumber_RawData = 1,
  TXInput_FieldNumber_Signature = 4,
};

@interface TXInput : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) TXInput_raw *rawData;
/** Test to see if @c rawData has been set. */
@property(nonatomic, readwrite) BOOL hasRawData;

@property(nonatomic, readwrite, copy, null_resettable) NSData *signature;

@end

#pragma mark - TXInput_raw

typedef GPB_ENUM(TXInput_raw_FieldNumber) {
  TXInput_raw_FieldNumber_TxId = 1,
  TXInput_raw_FieldNumber_Vout = 2,
  TXInput_raw_FieldNumber_PubKey = 3,
};

@interface TXInput_raw : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSData *txId;

@property(nonatomic, readwrite) int64_t vout;

@property(nonatomic, readwrite, copy, null_resettable) NSData *pubKey;

@end

#pragma mark - TXOutputs

typedef GPB_ENUM(TXOutputs_FieldNumber) {
  TXOutputs_FieldNumber_OutputsArray = 1,
};

@interface TXOutputs : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<TXOutput*> *outputsArray;
/** The number of items in @c outputsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger outputsArray_Count;

@end

#pragma mark - TronTransaction

typedef GPB_ENUM(Transaction_FieldNumber) {
  Transaction_FieldNumber_RawData = 1,
  Transaction_FieldNumber_SignatureArray = 2,
  Transaction_FieldNumber_RetArray = 5,
};

@interface TronTransaction : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) Transaction_raw *rawData;
/** Test to see if @c rawData has been set. */
@property(nonatomic, readwrite) BOOL hasRawData;

/** only support size = 1,  repeated list here for muti-sig extenstion */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSData*> *signatureArray;
/** The number of items in @c signatureArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger signatureArray_Count;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<Transaction_Result*> *retArray;
/** The number of items in @c retArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger retArray_Count;

@end

#pragma mark - Transaction_Contract

typedef GPB_ENUM(Transaction_Contract_FieldNumber) {
  Transaction_Contract_FieldNumber_Type = 1,
  Transaction_Contract_FieldNumber_Parameter = 2,
  Transaction_Contract_FieldNumber_Provider = 3,
  Transaction_Contract_FieldNumber_ContractName = 4,
};

@interface Transaction_Contract : GPBMessage

@property(nonatomic, readwrite) Transaction_Contract_ContractType type;

@property(nonatomic, readwrite, strong, null_resettable) GPBAny *parameter;
/** Test to see if @c parameter has been set. */
@property(nonatomic, readwrite) BOOL hasParameter;

@property(nonatomic, readwrite, copy, null_resettable) NSData *provider;

@property(nonatomic, readwrite, copy, null_resettable) NSData *contractName;

@end

/**
 * Fetches the raw value of a @c Transaction_Contract's @c type property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t Transaction_Contract_Type_RawValue(Transaction_Contract *message);
/**
 * Sets the raw value of an @c Transaction_Contract's @c type property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetTransaction_Contract_Type_RawValue(Transaction_Contract *message, int32_t value);

#pragma mark - Transaction_Result

typedef GPB_ENUM(Transaction_Result_FieldNumber) {
  Transaction_Result_FieldNumber_Fee = 1,
  Transaction_Result_FieldNumber_Ret = 2,
};

@interface Transaction_Result : GPBMessage

@property(nonatomic, readwrite) int64_t fee;

@property(nonatomic, readwrite) Transaction_Result_code ret;

@end

/**
 * Fetches the raw value of a @c Transaction_Result's @c ret property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t Transaction_Result_Ret_RawValue(Transaction_Result *message);
/**
 * Sets the raw value of an @c Transaction_Result's @c ret property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetTransaction_Result_Ret_RawValue(Transaction_Result *message, int32_t value);

#pragma mark - Transaction_raw

typedef GPB_ENUM(Transaction_raw_FieldNumber) {
  Transaction_raw_FieldNumber_RefBlockBytes = 1,
  Transaction_raw_FieldNumber_RefBlockNum = 3,
  Transaction_raw_FieldNumber_RefBlockHash = 4,
  Transaction_raw_FieldNumber_Expiration = 8,
  Transaction_raw_FieldNumber_AuthsArray = 9,
  Transaction_raw_FieldNumber_Data_p = 10,
  Transaction_raw_FieldNumber_ContractArray = 11,
  Transaction_raw_FieldNumber_Scripts = 12,
  Transaction_raw_FieldNumber_Timestamp = 14,
};

@interface Transaction_raw : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSData *refBlockBytes;

@property(nonatomic, readwrite) int64_t refBlockNum;

@property(nonatomic, readwrite, copy, null_resettable) NSData *refBlockHash;

@property(nonatomic, readwrite) int64_t expiration;

/** FIXME authority */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<acuthrity*> *authsArray;
/** The number of items in @c authsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger authsArray_Count;

/** data not used */
@property(nonatomic, readwrite, copy, null_resettable) NSData *data_p;

/** only support size = 1,  repeated list here for extenstion */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<Transaction_Contract*> *contractArray;
/** The number of items in @c contractArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger contractArray_Count;

/** scripts not used */
@property(nonatomic, readwrite, copy, null_resettable) NSData *scripts;

@property(nonatomic, readwrite) int64_t timestamp;

@end

#pragma mark - Transactions

typedef GPB_ENUM(Transactions_FieldNumber) {
  Transactions_FieldNumber_TransactionsArray = 1,
};

@interface Transactions : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<TronTransaction*> *transactionsArray;
/** The number of items in @c transactionsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger transactionsArray_Count;

@end

#pragma mark - BlockHeader

typedef GPB_ENUM(BlockHeader_FieldNumber) {
  BlockHeader_FieldNumber_RawData = 1,
  BlockHeader_FieldNumber_WitnessSignature = 2,
};

@interface BlockHeader : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) BlockHeader_raw *rawData;
/** Test to see if @c rawData has been set. */
@property(nonatomic, readwrite) BOOL hasRawData;

@property(nonatomic, readwrite, copy, null_resettable) NSData *witnessSignature;

@end

#pragma mark - BlockHeader_raw

typedef GPB_ENUM(BlockHeader_raw_FieldNumber) {
  BlockHeader_raw_FieldNumber_Timestamp = 1,
  BlockHeader_raw_FieldNumber_TxTrieRoot = 2,
  BlockHeader_raw_FieldNumber_ParentHash = 3,
  BlockHeader_raw_FieldNumber_Number = 7,
  BlockHeader_raw_FieldNumber_WitnessId = 8,
  BlockHeader_raw_FieldNumber_WitnessAddress = 9,
};

@interface BlockHeader_raw : GPBMessage

@property(nonatomic, readwrite) int64_t timestamp;

@property(nonatomic, readwrite, copy, null_resettable) NSData *txTrieRoot;

@property(nonatomic, readwrite, copy, null_resettable) NSData *parentHash;

/**
 * bytes nonce = 5;
 * bytes difficulty = 6;
 **/
@property(nonatomic, readwrite) int64_t number;

@property(nonatomic, readwrite) int64_t witnessId;

@property(nonatomic, readwrite, copy, null_resettable) NSData *witnessAddress;

@end

#pragma mark - Block

typedef GPB_ENUM(Block_FieldNumber) {
  Block_FieldNumber_TransactionsArray = 1,
  Block_FieldNumber_BlockHeader = 2,
};

/**
 * block
 **/
@interface Block : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<TronTransaction*> *transactionsArray;
/** The number of items in @c transactionsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger transactionsArray_Count;

@property(nonatomic, readwrite, strong, null_resettable) BlockHeader *blockHeader;
/** Test to see if @c blockHeader has been set. */
@property(nonatomic, readwrite) BOOL hasBlockHeader;

@end

#pragma mark - ChainInventory

typedef GPB_ENUM(ChainInventory_FieldNumber) {
  ChainInventory_FieldNumber_IdsArray = 1,
  ChainInventory_FieldNumber_RemainNum = 2,
};

@interface ChainInventory : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<ChainInventory_BlockId*> *idsArray;
/** The number of items in @c idsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger idsArray_Count;

@property(nonatomic, readwrite) int64_t remainNum;

@end

#pragma mark - ChainInventory_BlockId

typedef GPB_ENUM(ChainInventory_BlockId_FieldNumber) {
  ChainInventory_BlockId_FieldNumber_Hash_p = 1,
  ChainInventory_BlockId_FieldNumber_Number = 2,
};

@interface ChainInventory_BlockId : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSData *hash_p;

@property(nonatomic, readwrite) int64_t number;

@end

#pragma mark - BlockInventory

typedef GPB_ENUM(BlockInventory_FieldNumber) {
  BlockInventory_FieldNumber_IdsArray = 1,
  BlockInventory_FieldNumber_Type = 2,
};

/**
 * Inventory
 **/
@interface BlockInventory : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<BlockInventory_BlockId*> *idsArray;
/** The number of items in @c idsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger idsArray_Count;

@property(nonatomic, readwrite) BlockInventory_Type type;

@end

/**
 * Fetches the raw value of a @c BlockInventory's @c type property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t BlockInventory_Type_RawValue(BlockInventory *message);
/**
 * Sets the raw value of an @c BlockInventory's @c type property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetBlockInventory_Type_RawValue(BlockInventory *message, int32_t value);

#pragma mark - BlockInventory_BlockId

typedef GPB_ENUM(BlockInventory_BlockId_FieldNumber) {
  BlockInventory_BlockId_FieldNumber_Hash_p = 1,
  BlockInventory_BlockId_FieldNumber_Number = 2,
};

@interface BlockInventory_BlockId : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSData *hash_p;

@property(nonatomic, readwrite) int64_t number;

@end

#pragma mark - Inventory

typedef GPB_ENUM(Inventory_FieldNumber) {
  Inventory_FieldNumber_Type = 1,
  Inventory_FieldNumber_IdsArray = 2,
};

@interface Inventory : GPBMessage

@property(nonatomic, readwrite) Inventory_InventoryType type;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSData*> *idsArray;
/** The number of items in @c idsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger idsArray_Count;

@end

/**
 * Fetches the raw value of a @c Inventory's @c type property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t Inventory_Type_RawValue(Inventory *message);
/**
 * Sets the raw value of an @c Inventory's @c type property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetInventory_Type_RawValue(Inventory *message, int32_t value);

#pragma mark - Items

typedef GPB_ENUM(Items_FieldNumber) {
  Items_FieldNumber_Type = 1,
  Items_FieldNumber_BlocksArray = 2,
  Items_FieldNumber_BlockHeadersArray = 3,
  Items_FieldNumber_TransactionsArray = 4,
};

@interface Items : GPBMessage

@property(nonatomic, readwrite) Items_ItemType type;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<Block*> *blocksArray;
/** The number of items in @c blocksArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger blocksArray_Count;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<BlockHeader*> *blockHeadersArray;
/** The number of items in @c blockHeadersArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger blockHeadersArray_Count;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<TronTransaction*> *transactionsArray;
/** The number of items in @c transactionsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger transactionsArray_Count;

@end

/**
 * Fetches the raw value of a @c Items's @c type property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t Items_Type_RawValue(Items *message);
/**
 * Sets the raw value of an @c Items's @c type property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetItems_Type_RawValue(Items *message, int32_t value);

#pragma mark - DynamicProperties

typedef GPB_ENUM(DynamicProperties_FieldNumber) {
  DynamicProperties_FieldNumber_LastSolidityBlockNum = 1,
};

/**
 * DynamicProperties
 **/
@interface DynamicProperties : GPBMessage

@property(nonatomic, readwrite) int64_t lastSolidityBlockNum;

@end

#pragma mark - DisconnectMessage

typedef GPB_ENUM(DisconnectMessage_FieldNumber) {
  DisconnectMessage_FieldNumber_Reason = 1,
};

@interface DisconnectMessage : GPBMessage

@property(nonatomic, readwrite) ReasonCode reason;

@end

/**
 * Fetches the raw value of a @c DisconnectMessage's @c reason property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t DisconnectMessage_Reason_RawValue(DisconnectMessage *message);
/**
 * Sets the raw value of an @c DisconnectMessage's @c reason property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetDisconnectMessage_Reason_RawValue(DisconnectMessage *message, int32_t value);

#pragma mark - HelloMessage

typedef GPB_ENUM(HelloMessage_FieldNumber) {
  HelloMessage_FieldNumber_From = 1,
  HelloMessage_FieldNumber_Version = 2,
  HelloMessage_FieldNumber_Timestamp = 3,
  HelloMessage_FieldNumber_GenesisBlockId = 4,
  HelloMessage_FieldNumber_SolidBlockId = 5,
  HelloMessage_FieldNumber_HeadBlockId = 6,
};

@interface HelloMessage : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) Endpoint *from;
/** Test to see if @c from has been set. */
@property(nonatomic, readwrite) BOOL hasFrom;

@property(nonatomic, readwrite) int32_t version;

@property(nonatomic, readwrite) int64_t timestamp;

@property(nonatomic, readwrite, strong, null_resettable) HelloMessage_BlockId *genesisBlockId;
/** Test to see if @c genesisBlockId has been set. */
@property(nonatomic, readwrite) BOOL hasGenesisBlockId;

@property(nonatomic, readwrite, strong, null_resettable) HelloMessage_BlockId *solidBlockId;
/** Test to see if @c solidBlockId has been set. */
@property(nonatomic, readwrite) BOOL hasSolidBlockId;

@property(nonatomic, readwrite, strong, null_resettable) HelloMessage_BlockId *headBlockId;
/** Test to see if @c headBlockId has been set. */
@property(nonatomic, readwrite) BOOL hasHeadBlockId;

@end

#pragma mark - HelloMessage_BlockId

typedef GPB_ENUM(HelloMessage_BlockId_FieldNumber) {
  HelloMessage_BlockId_FieldNumber_Hash_p = 1,
  HelloMessage_BlockId_FieldNumber_Number = 2,
};

@interface HelloMessage_BlockId : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSData *hash_p;

@property(nonatomic, readwrite) int64_t number;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
