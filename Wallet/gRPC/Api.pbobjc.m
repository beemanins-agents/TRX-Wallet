// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: api.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "Api.pbobjc.h"
 #import "core/Tron.pbobjc.h"
 #import "core/Contract.pbobjc.h"
 #import "google/api/Annotations.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - ApiRoot

@implementation ApiRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    registry = [[GPBExtensionRegistry alloc] init];
    // Merge in the imports (direct or indirect) that defined extensions.
    [registry addExtensions:[AnnotationsRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - ApiRoot_FileDescriptor

static GPBFileDescriptor *ApiRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"protocol"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Return

@implementation Return

@dynamic result;
@dynamic code;
@dynamic message;

typedef struct Return__storage_ {
  uint32_t _has_storage_[1];
  Return_response_code code;
  NSData *message;
} Return__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "result",
        .dataTypeSpecific.className = NULL,
        .number = Return_FieldNumber_Result,
        .hasIndex = 0,
        .offset = 1,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "code",
        .dataTypeSpecific.enumDescFunc = Return_response_code_EnumDescriptor,
        .number = Return_FieldNumber_Code,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Return__storage_, code),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "message",
        .dataTypeSpecific.className = NULL,
        .number = Return_FieldNumber_Message,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(Return__storage_, message),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Return class]
                                     rootClass:[ApiRoot class]
                                          file:ApiRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Return__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t Return_Code_RawValue(Return *message) {
  GPBDescriptor *descriptor = [Return descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Return_FieldNumber_Code];
  return GPBGetMessageInt32Field(message, field);
}

void SetReturn_Code_RawValue(Return *message, int32_t value) {
  GPBDescriptor *descriptor = [Return descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Return_FieldNumber_Code];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum Return_response_code

GPBEnumDescriptor *Return_response_code_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Success\000Sigerror\000ContractValidateError\000C"
        "ontractExeError\000BandwithError\000DupTransac"
        "tionError\000TaposError\000TooBigTransactionEr"
        "ror\000TransactionExpirationError\000ServerBus"
        "y\000OtherError\000";
    static const int32_t values[] = {
        Return_response_code_Success,
        Return_response_code_Sigerror,
        Return_response_code_ContractValidateError,
        Return_response_code_ContractExeError,
        Return_response_code_BandwithError,
        Return_response_code_DupTransactionError,
        Return_response_code_TaposError,
        Return_response_code_TooBigTransactionError,
        Return_response_code_TransactionExpirationError,
        Return_response_code_ServerBusy,
        Return_response_code_OtherError,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(Return_response_code)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:Return_response_code_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL Return_response_code_IsValidValue(int32_t value__) {
  switch (value__) {
    case Return_response_code_Success:
    case Return_response_code_Sigerror:
    case Return_response_code_ContractValidateError:
    case Return_response_code_ContractExeError:
    case Return_response_code_BandwithError:
    case Return_response_code_DupTransactionError:
    case Return_response_code_TaposError:
    case Return_response_code_TooBigTransactionError:
    case Return_response_code_TransactionExpirationError:
    case Return_response_code_ServerBusy:
    case Return_response_code_OtherError:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - BlockReference

@implementation BlockReference

@dynamic blockNum;
@dynamic blockHash;

typedef struct BlockReference__storage_ {
  uint32_t _has_storage_[1];
  NSData *blockHash;
  int64_t blockNum;
} BlockReference__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "blockNum",
        .dataTypeSpecific.className = NULL,
        .number = BlockReference_FieldNumber_BlockNum,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(BlockReference__storage_, blockNum),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "blockHash",
        .dataTypeSpecific.className = NULL,
        .number = BlockReference_FieldNumber_BlockHash,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(BlockReference__storage_, blockHash),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[BlockReference class]
                                     rootClass:[ApiRoot class]
                                          file:ApiRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(BlockReference__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - WitnessList

@implementation WitnessList

@dynamic witnessesArray, witnessesArray_Count;

typedef struct WitnessList__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *witnessesArray;
} WitnessList__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "witnessesArray",
        .dataTypeSpecific.className = GPBStringifySymbol(Witness),
        .number = WitnessList_FieldNumber_WitnessesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(WitnessList__storage_, witnessesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[WitnessList class]
                                     rootClass:[ApiRoot class]
                                          file:ApiRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(WitnessList__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - AssetIssueList

@implementation AssetIssueList

@dynamic assetIssueArray, assetIssueArray_Count;

typedef struct AssetIssueList__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *assetIssueArray;
} AssetIssueList__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "assetIssueArray",
        .dataTypeSpecific.className = GPBStringifySymbol(AssetIssueContract),
        .number = AssetIssueList_FieldNumber_AssetIssueArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(AssetIssueList__storage_, assetIssueArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[AssetIssueList class]
                                     rootClass:[ApiRoot class]
                                          file:ApiRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(AssetIssueList__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\000assetIssue\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - BlockList

@implementation BlockList

@dynamic blockArray, blockArray_Count;

typedef struct BlockList__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *blockArray;
} BlockList__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "blockArray",
        .dataTypeSpecific.className = GPBStringifySymbol(Block),
        .number = BlockList_FieldNumber_BlockArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(BlockList__storage_, blockArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[BlockList class]
                                     rootClass:[ApiRoot class]
                                          file:ApiRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(BlockList__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - TransactionList

@implementation TransactionList

@dynamic transactionArray, transactionArray_Count;

typedef struct TransactionList__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *transactionArray;
} TransactionList__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "transactionArray",
        .dataTypeSpecific.className = GPBStringifySymbol(TronTransaction),
        .number = TransactionList_FieldNumber_TransactionArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(TransactionList__storage_, transactionArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[TransactionList class]
                                     rootClass:[ApiRoot class]
                                          file:ApiRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(TransactionList__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - NodeList

@implementation NodeList

@dynamic nodesArray, nodesArray_Count;

typedef struct NodeList__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *nodesArray;
} NodeList__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "nodesArray",
        .dataTypeSpecific.className = GPBStringifySymbol(Node),
        .number = NodeList_FieldNumber_NodesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(NodeList__storage_, nodesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[NodeList class]
                                     rootClass:[ApiRoot class]
                                          file:ApiRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(NodeList__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Node

@implementation Node

@dynamic hasAddress, address;

typedef struct Node__storage_ {
  uint32_t _has_storage_[1];
  Address *address;
} Node__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "address",
        .dataTypeSpecific.className = GPBStringifySymbol(Address),
        .number = Node_FieldNumber_Address,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Node__storage_, address),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Node class]
                                     rootClass:[ApiRoot class]
                                          file:ApiRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Node__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Address

@implementation Address

@dynamic host;
@dynamic port;

typedef struct Address__storage_ {
  uint32_t _has_storage_[1];
  int32_t port;
  NSData *host;
} Address__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "host",
        .dataTypeSpecific.className = NULL,
        .number = Address_FieldNumber_Host,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Address__storage_, host),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "port",
        .dataTypeSpecific.className = NULL,
        .number = Address_FieldNumber_Port,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Address__storage_, port),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Address class]
                                     rootClass:[ApiRoot class]
                                          file:ApiRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Address__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - EmptyMessage

@implementation EmptyMessage


typedef struct EmptyMessage__storage_ {
  uint32_t _has_storage_[1];
} EmptyMessage__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[EmptyMessage class]
                                     rootClass:[ApiRoot class]
                                          file:ApiRoot_FileDescriptor()
                                        fields:NULL
                                    fieldCount:0
                                   storageSize:sizeof(EmptyMessage__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - NumberMessage

@implementation NumberMessage

@dynamic num;

typedef struct NumberMessage__storage_ {
  uint32_t _has_storage_[1];
  int64_t num;
} NumberMessage__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "num",
        .dataTypeSpecific.className = NULL,
        .number = NumberMessage_FieldNumber_Num,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(NumberMessage__storage_, num),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[NumberMessage class]
                                     rootClass:[ApiRoot class]
                                          file:ApiRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(NumberMessage__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - BytesMessage

@implementation BytesMessage

@dynamic value;

typedef struct BytesMessage__storage_ {
  uint32_t _has_storage_[1];
  NSData *value;
} BytesMessage__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "value",
        .dataTypeSpecific.className = NULL,
        .number = BytesMessage_FieldNumber_Value,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(BytesMessage__storage_, value),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[BytesMessage class]
                                     rootClass:[ApiRoot class]
                                          file:ApiRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(BytesMessage__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - TimeMessage

@implementation TimeMessage

@dynamic beginInMilliseconds;
@dynamic endInMilliseconds;

typedef struct TimeMessage__storage_ {
  uint32_t _has_storage_[1];
  int64_t beginInMilliseconds;
  int64_t endInMilliseconds;
} TimeMessage__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "beginInMilliseconds",
        .dataTypeSpecific.className = NULL,
        .number = TimeMessage_FieldNumber_BeginInMilliseconds,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(TimeMessage__storage_, beginInMilliseconds),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "endInMilliseconds",
        .dataTypeSpecific.className = NULL,
        .number = TimeMessage_FieldNumber_EndInMilliseconds,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(TimeMessage__storage_, endInMilliseconds),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[TimeMessage class]
                                     rootClass:[ApiRoot class]
                                          file:ApiRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(TimeMessage__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\001\023\000\002\021\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - BlockLimit

@implementation BlockLimit

@dynamic startNum;
@dynamic endNum;

typedef struct BlockLimit__storage_ {
  uint32_t _has_storage_[1];
  int64_t startNum;
  int64_t endNum;
} BlockLimit__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "startNum",
        .dataTypeSpecific.className = NULL,
        .number = BlockLimit_FieldNumber_StartNum,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(BlockLimit__storage_, startNum),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "endNum",
        .dataTypeSpecific.className = NULL,
        .number = BlockLimit_FieldNumber_EndNum,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(BlockLimit__storage_, endNum),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[BlockLimit class]
                                     rootClass:[ApiRoot class]
                                          file:ApiRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(BlockLimit__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\001\010\000\002\006\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - TransactionLimit

@implementation TransactionLimit

@dynamic transactionId;
@dynamic limitNum;

typedef struct TransactionLimit__storage_ {
  uint32_t _has_storage_[1];
  NSData *transactionId;
  int64_t limitNum;
} TransactionLimit__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "transactionId",
        .dataTypeSpecific.className = NULL,
        .number = TransactionLimit_FieldNumber_TransactionId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(TransactionLimit__storage_, transactionId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "limitNum",
        .dataTypeSpecific.className = NULL,
        .number = TransactionLimit_FieldNumber_LimitNum,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(TransactionLimit__storage_, limitNum),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[TransactionLimit class]
                                     rootClass:[ApiRoot class]
                                          file:ApiRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(TransactionLimit__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\001\r\000\002\010\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - AccountPaginated

@implementation AccountPaginated

@dynamic hasAccount, account;
@dynamic offset;
@dynamic limit;

typedef struct AccountPaginated__storage_ {
  uint32_t _has_storage_[1];
  TronAccount *account;
  int64_t offset;
  int64_t limit;
} AccountPaginated__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "account",
        .dataTypeSpecific.className = GPBStringifySymbol(TronAccount),
        .number = AccountPaginated_FieldNumber_Account,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(AccountPaginated__storage_, account),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "offset",
        .dataTypeSpecific.className = NULL,
        .number = AccountPaginated_FieldNumber_Offset,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(AccountPaginated__storage_, offset),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "limit",
        .dataTypeSpecific.className = NULL,
        .number = AccountPaginated_FieldNumber_Limit,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(AccountPaginated__storage_, limit),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[AccountPaginated class]
                                     rootClass:[ApiRoot class]
                                          file:ApiRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(AccountPaginated__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - TimePaginatedMessage

@implementation TimePaginatedMessage

@dynamic hasTimeMessage, timeMessage;
@dynamic offset;
@dynamic limit;

typedef struct TimePaginatedMessage__storage_ {
  uint32_t _has_storage_[1];
  TimeMessage *timeMessage;
  int64_t offset;
  int64_t limit;
} TimePaginatedMessage__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "timeMessage",
        .dataTypeSpecific.className = GPBStringifySymbol(TimeMessage),
        .number = TimePaginatedMessage_FieldNumber_TimeMessage,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(TimePaginatedMessage__storage_, timeMessage),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "offset",
        .dataTypeSpecific.className = NULL,
        .number = TimePaginatedMessage_FieldNumber_Offset,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(TimePaginatedMessage__storage_, offset),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "limit",
        .dataTypeSpecific.className = NULL,
        .number = TimePaginatedMessage_FieldNumber_Limit,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(TimePaginatedMessage__storage_, limit),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[TimePaginatedMessage class]
                                     rootClass:[ApiRoot class]
                                          file:ApiRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(TimePaginatedMessage__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\013\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - AccountNetMessage

@implementation AccountNetMessage

@dynamic freeNetUsed;
@dynamic freeNetLimit;
@dynamic netUsed;
@dynamic netLimit;
@dynamic assetNetUsed, assetNetUsed_Count;
@dynamic assetNetLimit, assetNetLimit_Count;

typedef struct AccountNetMessage__storage_ {
  uint32_t _has_storage_[1];
  GPBStringInt64Dictionary *assetNetUsed;
  GPBStringInt64Dictionary *assetNetLimit;
  int64_t freeNetUsed;
  int64_t freeNetLimit;
  int64_t netUsed;
  int64_t netLimit;
} AccountNetMessage__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "freeNetUsed",
        .dataTypeSpecific.className = NULL,
        .number = AccountNetMessage_FieldNumber_FreeNetUsed,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(AccountNetMessage__storage_, freeNetUsed),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "freeNetLimit",
        .dataTypeSpecific.className = NULL,
        .number = AccountNetMessage_FieldNumber_FreeNetLimit,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(AccountNetMessage__storage_, freeNetLimit),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "netUsed",
        .dataTypeSpecific.className = NULL,
        .number = AccountNetMessage_FieldNumber_NetUsed,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(AccountNetMessage__storage_, netUsed),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "netLimit",
        .dataTypeSpecific.className = NULL,
        .number = AccountNetMessage_FieldNumber_NetLimit,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(AccountNetMessage__storage_, netLimit),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "assetNetUsed",
        .dataTypeSpecific.className = NULL,
        .number = AccountNetMessage_FieldNumber_AssetNetUsed,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(AccountNetMessage__storage_, assetNetUsed),
        .flags = (GPBFieldFlags)(GPBFieldMapKeyString | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "assetNetLimit",
        .dataTypeSpecific.className = NULL,
        .number = AccountNetMessage_FieldNumber_AssetNetLimit,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(AccountNetMessage__storage_, assetNetLimit),
        .flags = (GPBFieldFlags)(GPBFieldMapKeyString | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[AccountNetMessage class]
                                     rootClass:[ApiRoot class]
                                          file:ApiRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(AccountNetMessage__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\006\001\013\000\002\014\000\003G\000\004H\000\005\014\000\006\r\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
