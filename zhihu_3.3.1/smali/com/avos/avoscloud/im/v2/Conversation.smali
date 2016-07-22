.class public interface abstract Lcom/avos/avoscloud/im/v2/Conversation;
.super Ljava/lang/Object;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE_CONVERSATION_NAME:Ljava/lang/String; = "name"

.field public static final ATTRIBUTE_MORE:Ljava/lang/String; = "attr"

.field public static final AV_CONVERSATION_INTENT_ACTION:Ljava/lang/String; = "com.avoscloud.im.v2.action"

.field public static final COLUMN_MEMBERS:Ljava/lang/String; = "m"

.field public static final COLUMN_TRANSIENT:Ljava/lang/String; = "tr"

.field public static final CONVERSATION_COLUMNS:[Ljava/lang/String; = null

.field public static final CONVERSATION_COLUMN_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CONVERSATION_EXPIRE_TIME_IN_MILLS:I = 0x36ee80

.field public static final INTENT_KEY_CLIENT:Ljava/lang/String; = "conversation.client"

.field public static final INTENT_KEY_CONVERSATION:Ljava/lang/String; = "convesration.id"

.field public static final INTENT_KEY_DATA:Ljava/lang/String; = "conversation.data"

.field public static final INTENT_KEY_MESSAGEFLAG:Ljava/lang/String; = "conversation.message.flag"

.field public static final INTENT_KEY_OPERATION:Ljava/lang/String; = "conversation.operation"

.field public static final INTENT_KEY_REQUESTID:Ljava/lang/String; = "conversation.requestId"

.field public static final LAST_MESSAGE:Ljava/lang/String; = "lm"

.field public static final PARAM_CONVERSATION_ATTRIBUTE:Ljava/lang/String; = "conversation.attributes"

.field public static final PARAM_CONVERSATION_ISTRANSIENT:Ljava/lang/String; = "conversation.transient"

.field public static final PARAM_CONVERSATION_ISUNIQUE:Ljava/lang/String; = "conversation.unique"

.field public static final PARAM_CONVERSATION_MEMBER:Ljava/lang/String; = "conversation.member"

.field public static final PARAM_MESSAGE_QUERY_LIMIT:Ljava/lang/String; = "limit"

.field public static final PARAM_MESSAGE_QUERY_MSGID:Ljava/lang/String; = "mid"

.field public static final PARAM_MESSAGE_QUERY_TIMESTAMP:Ljava/lang/String; = "ts"

.field public static final PARAM_MESSAGE_QUERY_TO_MSGID:Ljava/lang/String; = "tmid"

.field public static final PARAM_MESSAGE_QUERY_TO_TIMESTAMP:Ljava/lang/String; = "tt"

.field public static final PARAM_ONLINE_CLIENTS:Ljava/lang/String; = "client.oneline"

.field public static final QUERY_PARAM_LIMIT:Ljava/lang/String; = "limit"

.field public static final QUERY_PARAM_OFFSET:Ljava/lang/String; = "skip"

.field public static final QUERY_PARAM_SORT:Ljava/lang/String; = "sort"

.field public static final QUERY_PARAM_WHERE:Ljava/lang/String; = "where"

.field public static final STATUS_ON_CLIENT_OFFLINE:I = 0xc35a

.field public static final STATUS_ON_CONNECTION_PAUSED:I = 0xc356

.field public static final STATUS_ON_CONNECTION_RESUMED:I = 0xc357

.field public static final STATUS_ON_JOINED:I = 0xc358

.field public static final STATUS_ON_KICKED_FROM_CONVERSATION:I = 0xc359

.field public static final STATUS_ON_MEMBERS_JOINED:I = 0xc355

.field public static final STATUS_ON_MEMBERS_LEFT:I = 0xc354

.field public static final STATUS_ON_MESSAGE:I = 0xc350

.field public static final STATUS_ON_MESSAGE_RECEIPTED:I = 0xc351

.field public static final STATUS_ON_OFFLINE_UNREAD:I = 0xc35a

.field public static final callbackClientKey:Ljava/lang/String; = "callbackclient"

.field public static final callbackClientStatus:Ljava/lang/String; = "callbackClientStatus"

.field public static final callbackConversationKey:Ljava/lang/String; = "callbackconversation"

.field public static final callbackCreatedAt:Ljava/lang/String; = "callbackCreatedAt"

.field public static final callbackExceptionKey:Ljava/lang/String; = "callbackException"

.field public static final callbackHistoryMessages:Ljava/lang/String; = "callbackHistoryMessages"

.field public static final callbackMemberCount:Ljava/lang/String; = "callbackMemberCount"

.field public static final callbackMessageId:Ljava/lang/String; = "callbackMessageId"

.field public static final callbackMessageTimeStamp:Ljava/lang/String; = "callbackMessageTimeStamp"

.field public static final callbackOnlineClients:Ljava/lang/String; = "callbackOnlineClient"

.field public static final callbackUpdatedAt:Ljava/lang/String; = "callbackUpdatedAt"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 142
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "m"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "c"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lm"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "objectId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mu"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "updatedAt"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "createdAt"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "attr"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "tr"

    aput-object v2, v0, v1

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation;->CONVERSATION_COLUMNS:[Ljava/lang/String;

    .line 145
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation;->CONVERSATION_COLUMNS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation;->CONVERSATION_COLUMN_LIST:Ljava/util/List;

    return-void
.end method
