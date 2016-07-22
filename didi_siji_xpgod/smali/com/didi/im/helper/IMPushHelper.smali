.class public Lcom/didi/im/helper/IMPushHelper;
.super Ljava/lang/Object;
.source "IMPushHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/im/helper/IMPushHelper$IMUnreadTotalChangeListener;,
        Lcom/didi/im/helper/IMPushHelper$IMUnreadCountChangeListener;,
        Lcom/didi/im/helper/IMPushHelper$IMUnreadListener;,
        Lcom/didi/im/helper/IMPushHelper$FetchedMesssageListener;,
        Lcom/didi/im/helper/IMPushHelper$AudioResponseMessageListener;
    }
.end annotation


# static fields
.field private static sIMUnreadCountChangeListener:Lcom/didi/im/helper/IMPushHelper$IMUnreadCountChangeListener;

.field private static sIMUnreadListener:Lcom/didi/im/helper/IMPushHelper$IMUnreadListener;

.field private static sIMUnreadTotalChangeListener:Lcom/didi/im/helper/IMPushHelper$IMUnreadTotalChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    return-void
.end method

.method static synthetic access$000(Lcom/didi/im/helper/IMPushHelper$AudioResponseMessageListener;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/didi/im/helper/IMPushHelper;->onAudioResponseMessageReceived(Lcom/didi/im/helper/IMPushHelper$AudioResponseMessageListener;[B)V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/im/helper/IMPushHelper$FetchedMesssageListener;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/didi/im/helper/IMPushHelper;->onFetchedMessageReceived(Lcom/didi/im/helper/IMPushHelper$FetchedMesssageListener;[B)V

    return-void
.end method

.method static synthetic access$200()Lcom/didi/im/helper/IMPushHelper$IMUnreadListener;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/didi/im/helper/IMPushHelper;->sIMUnreadListener:Lcom/didi/im/helper/IMPushHelper$IMUnreadListener;

    return-object v0
.end method

.method static synthetic access$300()Lcom/didi/im/helper/IMPushHelper$IMUnreadCountChangeListener;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/didi/im/helper/IMPushHelper;->sIMUnreadCountChangeListener:Lcom/didi/im/helper/IMPushHelper$IMUnreadCountChangeListener;

    return-object v0
.end method

.method static synthetic access$400()Lcom/didi/im/helper/IMPushHelper$IMUnreadTotalChangeListener;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/didi/im/helper/IMPushHelper;->sIMUnreadTotalChangeListener:Lcom/didi/im/helper/IMPushHelper$IMUnreadTotalChangeListener;

    return-object v0
.end method

.method public static fetchMessage(JJJILcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V
    .locals 8
    .parameter "sid"
    .parameter "fromMid"
    .parameter "toMid"
    .parameter "count"
    .parameter "callback"

    .prologue
    .line 209
    new-instance v0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;

    invoke-direct {v0}, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;-><init>()V

    .line 210
    .local v0, builder:Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;->sid(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;

    .line 212
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-eqz v3, :cond_0

    .line 213
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;->mid(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;

    .line 215
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, p4, v3

    if-eqz v3, :cond_1

    .line 216
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;->last(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;

    .line 218
    :cond_1
    if-eqz p6, :cond_2

    .line 219
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;->count(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;

    .line 222
    :cond_2
    sget-object v3, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeMessageSvrGetMessagesReq:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v3}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v2

    .line 223
    .local v2, type:I
    invoke-virtual {v0}, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;->build()Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq;->toByteArray()[B

    move-result-object v1

    .line 225
    .local v1, data:[B
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 226
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v3

    new-instance v4, Lcom/didi/frame/push/IMPushOptionRecord;

    invoke-direct {v4}, Lcom/didi/frame/push/IMPushOptionRecord;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, p7, v6}, Lcom/didi/frame/push/Push;->doSendPushMessage(Lcom/didi/frame/push/PushOptionRecordEx;[Ljava/lang/Object;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;I)V

    .line 232
    :cond_3
    return-void
.end method

.method private static onAudioResponseMessageReceived(Lcom/didi/im/helper/IMPushHelper$AudioResponseMessageListener;[B)V
    .locals 11
    .parameter "l"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 173
    const/4 v9, 0x0

    .line 175
    .local v9, sendObjectRsp:Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;
    new-instance v10, Lcom/squareup/wire/Wire;

    new-array v1, v2, [Ljava/lang/Class;

    invoke-direct {v10, v1}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 177
    .local v10, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v1, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;

    invoke-virtual {v10, p1, v1}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;

    move-object v9, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    iget-object v1, v9, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->rc:Ljava/lang/Integer;

    sget-object v3, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->DEFAULT_RC:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object v1, v9, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->mid:Ljava/lang/Long;

    sget-object v3, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->DEFAULT_MID:Ljava/lang/Long;

    invoke-static {v1, v3}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v9, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->time:Ljava/lang/Long;

    sget-object v5, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->DEFAULT_TIME:Ljava/lang/Long;

    invoke-static {v1, v5}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v1, v9, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->fid:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v1, v7}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v1, p0

    invoke-interface/range {v1 .. v7}, Lcom/didi/im/helper/IMPushHelper$AudioResponseMessageListener;->onAudioResponseMessageReceived(ZJJLjava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v8

    .line 179
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static onFetchedMessageReceived(Lcom/didi/im/helper/IMPushHelper$FetchedMesssageListener;[B)V
    .locals 18
    .parameter "l"
    .parameter "data"

    .prologue
    .line 259
    const/4 v8, 0x0

    .line 261
    .local v8, getMsgRsp:Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;
    new-instance v15, Lcom/squareup/wire/Wire;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {v15, v1}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 263
    .local v15, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v1, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;

    move-object v8, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    iget-object v1, v8, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->rc:Ljava/lang/Integer;

    sget-object v2, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->DEFAULT_RC:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 270
    .local v3, res:I
    iget-object v1, v8, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->mid:Ljava/lang/Long;

    sget-object v2, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->DEFAULT_MID:Ljava/lang/Long;

    invoke-static {v1, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 271
    .local v5, maxmid:J
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v4, messages:Ljava/util/List;,"Ljava/util/List<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    iget-object v1, v8, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->messages:Ljava/util/List;

    sget-object v2, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->DEFAULT_MESSAGES:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/didi/frame/protobuffer/InstantMessageMessage;

    .line 276
    .local v10, imm:Lcom/didi/frame/protobuffer/InstantMessageMessage;
    new-instance v11, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-direct {v11}, Lcom/didi/im/model/IMDTOChatRecordAndUser;-><init>()V

    .line 278
    .local v11, message:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    new-instance v13, Lcom/didi/im/model/IMChatRecord;

    invoke-direct {v13}, Lcom/didi/im/model/IMChatRecord;-><init>()V

    .line 279
    .local v13, record:Lcom/didi/im/model/IMChatRecord;
    invoke-virtual {v11, v13}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->setChatRecord(Lcom/didi/im/model/IMChatRecord;)V

    .line 281
    iget-object v1, v10, Lcom/didi/frame/protobuffer/InstantMessageMessage;->mid:Ljava/lang/Long;

    sget-object v2, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->DEFAULT_MID:Ljava/lang/Long;

    invoke-static {v1, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float v12, v1

    .line 282
    .local v12, midF:F
    float-to-int v1, v12

    iput v1, v13, Lcom/didi/im/model/IMChatRecord;->MID:I

    .line 284
    iget-object v1, v10, Lcom/didi/frame/protobuffer/InstantMessageMessage;->time:Ljava/lang/Long;

    sget-object v2, Lcom/didi/frame/protobuffer/InstantMessageMessage;->DEFAULT_TIME:Ljava/lang/Long;

    invoke-static {v1, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v16, 0xf4240

    div-long v1, v1, v16

    iput-wide v1, v13, Lcom/didi/im/model/IMChatRecord;->createTime:J

    .line 287
    iget-object v1, v10, Lcom/didi/frame/protobuffer/InstantMessageMessage;->uid:Ljava/lang/Long;

    sget-object v2, Lcom/didi/frame/protobuffer/InstantMessageMessage;->DEFAULT_UID:Ljava/lang/Long;

    invoke-static {v1, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/didi/im/model/IMChatRecord;->UID:Ljava/lang/String;

    .line 290
    iget-object v1, v10, Lcom/didi/frame/protobuffer/InstantMessageMessage;->type:Ljava/lang/Integer;

    sget-object v2, Lcom/didi/frame/protobuffer/InstantMessageMessage;->DEFAULT_TYPE:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/didi/frame/protobuffer/InstantMessageType;->kInstantMessageTypeText:Lcom/didi/frame/protobuffer/InstantMessageType;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/InstantMessageType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 293
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lcom/didi/im/model/IMChatRecord;->setType(I)V

    .line 294
    iget-object v1, v10, Lcom/didi/frame/protobuffer/InstantMessageMessage;->text:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v13, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    .line 306
    :cond_0
    :goto_1
    new-instance v14, Lcom/didi/im/model/IMUser;

    invoke-direct {v14}, Lcom/didi/im/model/IMUser;-><init>()V

    .line 307
    .local v14, user:Lcom/didi/im/model/IMUser;
    invoke-virtual {v11, v14}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->setUser(Lcom/didi/im/model/IMUser;)V

    .line 309
    iget-object v1, v10, Lcom/didi/frame/protobuffer/InstantMessageMessage;->uid:Ljava/lang/Long;

    sget-object v2, Lcom/didi/frame/protobuffer/InstantMessageMessage;->DEFAULT_UID:Ljava/lang/Long;

    invoke-static {v1, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/didi/im/model/IMUser;->setUID(Ljava/lang/String;)V

    .line 312
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 264
    .end local v3           #res:I
    .end local v4           #messages:Ljava/util/List;,"Ljava/util/List<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    .end local v5           #maxmid:J
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #imm:Lcom/didi/frame/protobuffer/InstantMessageMessage;
    .end local v11           #message:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    .end local v12           #midF:F
    .end local v13           #record:Lcom/didi/im/model/IMChatRecord;
    .end local v14           #user:Lcom/didi/im/model/IMUser;
    :catch_0
    move-exception v7

    .line 265
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 322
    .end local v7           #e:Ljava/io/IOException;
    :goto_2
    return-void

    .line 297
    .restart local v3       #res:I
    .restart local v4       #messages:Ljava/util/List;,"Ljava/util/List<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    .restart local v5       #maxmid:J
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #imm:Lcom/didi/frame/protobuffer/InstantMessageMessage;
    .restart local v11       #message:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    .restart local v12       #midF:F
    .restart local v13       #record:Lcom/didi/im/model/IMChatRecord;
    :cond_1
    iget-object v1, v10, Lcom/didi/frame/protobuffer/InstantMessageMessage;->type:Ljava/lang/Integer;

    sget-object v2, Lcom/didi/frame/protobuffer/InstantMessageMessage;->DEFAULT_TYPE:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/didi/frame/protobuffer/InstantMessageType;->kInstantMessageTypeVoice:Lcom/didi/frame/protobuffer/InstantMessageType;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/InstantMessageType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 300
    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Lcom/didi/im/model/IMChatRecord;->setType(I)V

    .line 301
    iget-object v1, v10, Lcom/didi/frame/protobuffer/InstantMessageMessage;->fid:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v13, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    goto :goto_1

    .line 315
    .end local v10           #imm:Lcom/didi/frame/protobuffer/InstantMessageMessage;
    .end local v11           #message:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    .end local v12           #midF:F
    .end local v13           #record:Lcom/didi/im/model/IMChatRecord;
    :cond_2
    new-instance v1, Lcom/didi/im/helper/IMPushHelper$3;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/didi/im/helper/IMPushHelper$3;-><init>(Lcom/didi/im/helper/IMPushHelper$FetchedMesssageListener;ILjava/util/List;J)V

    invoke-static {v1}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method protected static onIMUnreadReceived([B)V
    .locals 32
    .parameter "data"

    .prologue
    .line 406
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v27

    sget-object v28, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_4

    const-class v21, Lcom/didi/beatles/im/BtsConversationActivity;

    .line 407
    .local v21, targetClass:Ljava/lang/Class;
    :goto_0
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->isActivityInRunningList(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v14

    .line 408
    .local v14, isRuning:Z
    const/16 v16, 0x0

    .line 409
    .local v16, noti:Lcom/didi/frame/protobuffer/MessageSvrNotification;
    new-instance v26, Lcom/squareup/wire/Wire;

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 411
    .local v26, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v27, Lcom/didi/frame/protobuffer/MessageSvrNotification;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v27

    move-object/from16 v0, v27

    check-cast v0, Lcom/didi/frame/protobuffer/MessageSvrNotification;

    move-object/from16 v16, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    const-wide/16 v6, 0x0

    .line 417
    .local v6, curSession:J
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSid()Ljava/lang/String;

    move-result-object v8

    .line 418
    .local v8, curSessionStr:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 419
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/didi/common/config/Preferences;->getSid()Ljava/lang/String;

    move-result-object v8

    .line 421
    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_1

    .line 423
    :try_start_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSid()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    .line 428
    :cond_1
    :goto_1
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 429
    .local v25, unreadMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/16 v24, 0x0

    .line 430
    .local v24, unreadFlag:Z
    const-wide/16 v4, 0x0

    .line 431
    .local v4, curMaxMid:J
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/didi/frame/protobuffer/MessageSvrNotification;->messages:Ljava/util/List;

    move-object/from16 v27, v0

    sget-object v28, Lcom/didi/frame/protobuffer/MessageSvrNotification;->DEFAULT_MESSAGES:Ljava/util/List;

    invoke-static/range {v27 .. v28}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;

    .line 433
    .local v15, msg:Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;
    iget-object v0, v15, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->sid:Ljava/lang/Long;

    move-object/from16 v27, v0

    sget-object v28, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->DEFAULT_SID:Ljava/lang/Long;

    invoke-static/range {v27 .. v28}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Long;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 434
    .local v18, sid:J
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/didi/im/db/IMDBDataHelper;->querySessionOrderBySID(Ljava/lang/String;)Lcom/didi/beatles/model/order/BtsSessionOrder;

    move-result-object v3

    .line 435
    .local v3, btsSessionOrder:Lcom/didi/beatles/model/order/BtsSessionOrder;
    if-eqz v3, :cond_6

    if-nez v14, :cond_6

    .line 436
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v0, v3}, Lcom/didi/beatles/notification/BtsNotificationUtils;->showNotifycation(Landroid/content/Context;Lcom/didi/beatles/model/order/BtsSessionOrder;)V

    .line 448
    :cond_2
    :goto_3
    cmp-long v27, v6, v18

    if-nez v27, :cond_7

    .line 449
    iget-object v0, v15, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->mid:Ljava/lang/Long;

    move-object/from16 v27, v0

    sget-object v28, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->DEFAULT_MID:Ljava/lang/Long;

    invoke-static/range {v27 .. v28}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Long;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    cmp-long v27, v4, v27

    if-gez v27, :cond_3

    .line 450
    iget-object v0, v15, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->mid:Ljava/lang/Long;

    move-object/from16 v27, v0

    sget-object v28, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->DEFAULT_MID:Ljava/lang/Long;

    invoke-static/range {v27 .. v28}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Long;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 455
    :cond_3
    :goto_4
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    .line 456
    .local v22, unread:Ljava/lang/Integer;
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    if-nez v22, :cond_8

    const/16 v27, 0x1

    :goto_5
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 406
    .end local v3           #btsSessionOrder:Lcom/didi/beatles/model/order/BtsSessionOrder;
    .end local v4           #curMaxMid:J
    .end local v6           #curSession:J
    .end local v8           #curSessionStr:Ljava/lang/String;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #isRuning:Z
    .end local v15           #msg:Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;
    .end local v16           #noti:Lcom/didi/frame/protobuffer/MessageSvrNotification;
    .end local v18           #sid:J
    .end local v21           #targetClass:Ljava/lang/Class;
    .end local v22           #unread:Ljava/lang/Integer;
    .end local v24           #unreadFlag:Z
    .end local v25           #unreadMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v26           #wire:Lcom/squareup/wire/Wire;
    :cond_4
    const-class v21, Lcom/didi/im/activity/ConversationActivity;

    goto/16 :goto_0

    .line 412
    .restart local v14       #isRuning:Z
    .restart local v16       #noti:Lcom/didi/frame/protobuffer/MessageSvrNotification;
    .restart local v21       #targetClass:Ljava/lang/Class;
    .restart local v26       #wire:Lcom/squareup/wire/Wire;
    :catch_0
    move-exception v9

    .line 413
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 522
    .end local v9           #e:Ljava/io/IOException;
    :cond_5
    :goto_6
    return-void

    .line 424
    .restart local v6       #curSession:J
    .restart local v8       #curSessionStr:Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 425
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 439
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v3       #btsSessionOrder:Lcom/didi/beatles/model/order/BtsSessionOrder;
    .restart local v4       #curMaxMid:J
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v15       #msg:Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;
    .restart local v18       #sid:J
    .restart local v24       #unreadFlag:Z
    .restart local v25       #unreadMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_6
    if-nez v14, :cond_2

    .line 440
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v27

    const v28, 0x7f05000a

    invoke-virtual/range {v27 .. v28}, Lcom/didi/common/base/DidiApp;->playMustSound(I)V

    .line 441
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/didi/im/helper/IMChatHelper;->vibrate(Landroid/content/Context;)V

    .line 442
    const v27, 0x7f0b01e2

    invoke-static/range {v27 .. v27}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v27

    const v28, 0x7f0b0391

    invoke-static/range {v28 .. v28}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const-class v30, Lcom/didi/frame/MainActivity;

    const/16 v31, 0x0

    invoke-static/range {v27 .. v31}, Lcom/didi/common/notification/CommonNotification;->sendNotification(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Z)V

    goto/16 :goto_3

    .line 453
    :cond_7
    const/16 v24, 0x1

    goto :goto_4

    .line 456
    .restart local v22       #unread:Ljava/lang/Integer;
    :cond_8
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v27

    add-int/lit8 v27, v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .end local v22           #unread:Ljava/lang/Integer;
    .local v23, unread:Ljava/lang/Integer;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v22, v23

    .end local v23           #unread:Ljava/lang/Integer;
    .restart local v22       #unread:Ljava/lang/Integer;
    goto :goto_5

    .line 461
    .end local v3           #btsSessionOrder:Lcom/didi/beatles/model/order/BtsSessionOrder;
    .end local v15           #msg:Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;
    .end local v18           #sid:J
    .end local v22           #unread:Ljava/lang/Integer;
    :cond_9
    sget-object v27, Lcom/didi/im/helper/IMPushHelper;->sIMUnreadListener:Lcom/didi/im/helper/IMPushHelper$IMUnreadListener;

    if-eqz v27, :cond_a

    const-wide/16 v27, 0x0

    cmp-long v27, v4, v27

    if-lez v27, :cond_a

    .line 462
    move-wide v10, v4

    .line 463
    .local v10, fCurMaxMid:J
    new-instance v27, Lcom/didi/im/helper/IMPushHelper$5;

    move-object/from16 v0, v27

    invoke-direct {v0, v10, v11}, Lcom/didi/im/helper/IMPushHelper$5;-><init>(J)V

    invoke-static/range {v27 .. v27}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 470
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .end local v10           #fCurMaxMid:J
    :cond_a
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_b
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Long;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 477
    .restart local v18       #sid:J
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    .line 478
    .local v20, sidStr:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/didi/im/db/IMDBDataHelper;->queryOneImSessionBySID(Ljava/lang/String;)Lcom/didi/im/model/IMSession;

    move-result-object v17

    .line 479
    .local v17, session:Lcom/didi/im/model/IMSession;
    if-nez v17, :cond_b

    .line 480
    new-instance v17, Lcom/didi/im/model/IMSession;

    .end local v17           #session:Lcom/didi/im/model/IMSession;
    invoke-direct/range {v17 .. v17}, Lcom/didi/im/model/IMSession;-><init>()V

    .line 481
    .restart local v17       #session:Lcom/didi/im/model/IMSession;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/didi/im/model/IMSession;->setSID(Ljava/lang/String;)V

    .line 482
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/didi/im/db/IMDBDataHelper;->insertSession(Lcom/didi/im/model/IMSession;Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;)I

    goto :goto_7

    .line 485
    .end local v17           #session:Lcom/didi/im/model/IMSession;
    .end local v18           #sid:J
    .end local v20           #sidStr:Ljava/lang/String;
    :cond_c
    invoke-static/range {v25 .. v25}, Lcom/didi/im/db/IMDBDataHelper;->updateImSessionUnReadCntBySID(Ljava/util/Map;)I

    .line 490
    sget-object v27, Lcom/didi/im/helper/IMPushHelper;->sIMUnreadCountChangeListener:Lcom/didi/im/helper/IMPushHelper$IMUnreadCountChangeListener;

    if-eqz v27, :cond_d

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 491
    const/16 v24, 0x1

    .line 493
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSid()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/didi/im/db/IMDBDataHelper;->queryOneImSessionBySID(Ljava/lang/String;)Lcom/didi/im/model/IMSession;

    move-result-object v17

    .line 494
    .restart local v17       #session:Lcom/didi/im/model/IMSession;
    invoke-virtual/range {v17 .. v17}, Lcom/didi/im/model/IMSession;->getUnreadCnt()I

    move-result v12

    .line 496
    .local v12, funreadCount:I
    new-instance v27, Lcom/didi/im/helper/IMPushHelper$6;

    move-object/from16 v0, v27

    invoke-direct {v0, v12}, Lcom/didi/im/helper/IMPushHelper$6;-><init>(I)V

    invoke-static/range {v27 .. v27}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 510
    .end local v12           #funreadCount:I
    .end local v17           #session:Lcom/didi/im/model/IMSession;
    :cond_d
    sget-object v27, Lcom/didi/im/helper/IMPushHelper;->sIMUnreadTotalChangeListener:Lcom/didi/im/helper/IMPushHelper$IMUnreadTotalChangeListener;

    if-eqz v27, :cond_e

    if-eqz v24, :cond_e

    .line 511
    new-instance v27, Lcom/didi/im/helper/IMPushHelper$7;

    invoke-direct/range {v27 .. v27}, Lcom/didi/im/helper/IMPushHelper$7;-><init>()V

    invoke-static/range {v27 .. v27}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 519
    :cond_e
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v27

    sget-object v28, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_5

    .line 520
    const-string v27, "update_im_message"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->postBtsEvent(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method public static recvAudioFile(JLjava/lang/String;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V
    .locals 8
    .parameter "sid"
    .parameter "fileId"
    .parameter "callback"

    .prologue
    .line 126
    sget-object v3, Lcom/didi/frame/protobuffer/InstantMessageType;->kInstantMessageTypeVoice:Lcom/didi/frame/protobuffer/InstantMessageType;

    invoke-virtual {v3}, Lcom/didi/frame/protobuffer/InstantMessageType;->getValue()I

    move-result v2

    .line 127
    .local v2, instantMsgType:I
    invoke-static {p2}, Lcom/didi/im/helper/IMFileHelper;->getAudioFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 129
    .local v1, filePath:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 130
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 134
    :cond_0
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 135
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v3

    new-instance v4, Lcom/didi/frame/push/IMPushOptionRecord;

    invoke-direct {v4}, Lcom/didi/frame/push/IMPushOptionRecord;-><init>()V

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5, p3}, Lcom/didi/frame/push/Push;->doRecvFilePushMessage(Lcom/didi/frame/push/PushOptionRecordEx;[Ljava/lang/Object;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 145
    :cond_1
    return-void
.end method

.method public static registerAudioResponseMessageListener(Lcom/didi/im/helper/IMPushHelper$AudioResponseMessageListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 162
    sget-object v1, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeMessageSvrSendObjectRsp:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v0

    .line 163
    .local v0, msgType:I
    new-instance v1, Lcom/didi/im/helper/IMPushHelper$1;

    invoke-direct {v1, p0}, Lcom/didi/im/helper/IMPushHelper$1;-><init>(Lcom/didi/im/helper/IMPushHelper$AudioResponseMessageListener;)V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 170
    return-void
.end method

.method public static registerFetchedMesssageListener(Lcom/didi/im/helper/IMPushHelper$FetchedMesssageListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 248
    sget-object v1, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeMessageSvrGetMessagesRsp:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v0

    .line 249
    .local v0, msgType:I
    new-instance v1, Lcom/didi/im/helper/IMPushHelper$2;

    invoke-direct {v1, p0}, Lcom/didi/im/helper/IMPushHelper$2;-><init>(Lcom/didi/im/helper/IMPushHelper$FetchedMesssageListener;)V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 256
    return-void
.end method

.method public static registerIMNotificationMessageListener()V
    .locals 2

    .prologue
    .line 394
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeMessageSvrNotification:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 395
    .local v0, msgType:I
    new-instance v1, Lcom/didi/im/helper/IMPushHelper$4;

    invoke-direct {v1}, Lcom/didi/im/helper/IMPushHelper$4;-><init>()V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 402
    return-void
.end method

.method public static registerIMUnreadCountChangeListener(Lcom/didi/im/helper/IMPushHelper$IMUnreadCountChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 364
    sput-object p0, Lcom/didi/im/helper/IMPushHelper;->sIMUnreadCountChangeListener:Lcom/didi/im/helper/IMPushHelper$IMUnreadCountChangeListener;

    .line 365
    return-void
.end method

.method public static registerIMUnreadListener(Lcom/didi/im/helper/IMPushHelper$IMUnreadListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 346
    sput-object p0, Lcom/didi/im/helper/IMPushHelper;->sIMUnreadListener:Lcom/didi/im/helper/IMPushHelper$IMUnreadListener;

    .line 347
    return-void
.end method

.method public static registerIMUnreadTotalChangeListener(Lcom/didi/im/helper/IMPushHelper$IMUnreadTotalChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 383
    sput-object p0, Lcom/didi/im/helper/IMPushHelper;->sIMUnreadTotalChangeListener:Lcom/didi/im/helper/IMPushHelper$IMUnreadTotalChangeListener;

    .line 384
    return-void
.end method

.method public static sendAudioMessage(JJLjava/lang/String;ILcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V
    .locals 8
    .parameter "sid"
    .parameter "reqId"
    .parameter "filePath"
    .parameter "audioTime"
    .parameter "callback"

    .prologue
    .line 93
    sget-object v3, Lcom/didi/frame/protobuffer/InstantMessageType;->kInstantMessageTypeVoice:Lcom/didi/frame/protobuffer/InstantMessageType;

    invoke-virtual {v3}, Lcom/didi/frame/protobuffer/InstantMessageType;->getValue()I

    move-result v1

    .line 95
    .local v1, instantMsgType:I
    new-instance v0, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta$Builder;

    invoke-direct {v0}, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta$Builder;-><init>()V

    .line 96
    .local v0, builder:Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta$Builder;
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta$Builder;->voice_length(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta$Builder;

    .line 98
    invoke-virtual {v0}, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta$Builder;->build()Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;->toByteArray()[B

    move-result-object v2

    .line 100
    .local v2, meta:[B
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 101
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v3

    new-instance v4, Lcom/didi/frame/push/IMPushOptionRecord;

    invoke-direct {v4}, Lcom/didi/frame/push/IMPushOptionRecord;-><init>()V

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p4, v5, v6

    const/4 v6, 0x4

    aput-object v2, v5, v6

    const/4 v6, 0x5

    array-length v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5, p6}, Lcom/didi/frame/push/Push;->doSendFilePushMessage(Lcom/didi/frame/push/PushOptionRecordEx;[Ljava/lang/Object;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 114
    :cond_0
    return-void
.end method

.method public static sendMessage(JJLjava/lang/String;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V
    .locals 9
    .parameter "sid"
    .parameter "reqId"
    .parameter "text"
    .parameter "callback"

    .prologue
    const/4 v8, 0x1

    .line 62
    new-instance v0, Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$Builder;

    invoke-direct {v0}, Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$Builder;-><init>()V

    .line 63
    .local v0, builder:Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$Builder;
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$Builder;->sid(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$Builder;

    .line 64
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$Builder;->request_id(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$Builder;

    .line 65
    invoke-virtual {v0, p4}, Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$Builder;->text(Ljava/lang/String;)Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$Builder;

    .line 67
    sget-object v3, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeMessageSvrSendTextReq:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v3}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v2

    .line 68
    .local v2, type:I
    invoke-virtual {v0}, Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$Builder;->build()Lcom/didi/frame/protobuffer/MessageSvrSendTextReq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/frame/protobuffer/MessageSvrSendTextReq;->toByteArray()[B

    move-result-object v1

    .line 70
    .local v1, data:[B
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 71
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v3

    new-instance v4, Lcom/didi/frame/push/IMPushOptionRecord;

    invoke-direct {v4}, Lcom/didi/frame/push/IMPushOptionRecord;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v1, v5, v8

    invoke-virtual {v3, v4, v5, p5, v8}, Lcom/didi/frame/push/Push;->doSendPushMessage(Lcom/didi/frame/push/PushOptionRecordEx;[Ljava/lang/Object;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;I)V

    .line 77
    :cond_0
    return-void
.end method

.method public static unregisterAudioResponseMessageListener()V
    .locals 2

    .prologue
    .line 191
    sget-object v1, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeMessageSvrSendObjectRsp:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v0

    .line 192
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 193
    return-void
.end method

.method public static unregisterCommonMesssageListener()V
    .locals 2

    .prologue
    .line 325
    sget-object v1, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeMessageSvrGetMessagesRsp:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v0

    .line 326
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 327
    return-void
.end method

.method public static unregisterIMUnreadCountChangeListener()V
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/im/helper/IMPushHelper;->sIMUnreadCountChangeListener:Lcom/didi/im/helper/IMPushHelper$IMUnreadCountChangeListener;

    .line 369
    return-void
.end method

.method public static unregisterIMUnreadListener()V
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/im/helper/IMPushHelper;->sIMUnreadListener:Lcom/didi/im/helper/IMPushHelper$IMUnreadListener;

    .line 351
    return-void
.end method

.method public static unregisterIMUnreadTotalChangeListener()V
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/im/helper/IMPushHelper;->sIMUnreadTotalChangeListener:Lcom/didi/im/helper/IMPushHelper$IMUnreadTotalChangeListener;

    .line 388
    return-void
.end method
