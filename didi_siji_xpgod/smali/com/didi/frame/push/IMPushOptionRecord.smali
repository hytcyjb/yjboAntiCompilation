.class public Lcom/didi/frame/push/IMPushOptionRecord;
.super Lcom/didi/frame/push/PushOptionRecordEx;
.source "IMPushOptionRecord.java"


# static fields
.field private static final serialVersionUID:J = 0x6dda6d2ddc22eaaeL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/didi/frame/push/PushOptionRecordEx;-><init>()V

    return-void
.end method

.method private parseFileDownloadResponse([B)V
    .locals 8
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    .line 159
    const/4 v1, 0x0

    .line 161
    .local v1, downloadRsp:Lcom/didi/frame/protobuffer/FileSvrDownloadRsp;
    new-instance v4, Lcom/squareup/wire/Wire;

    new-array v5, v7, [Ljava/lang/Class;

    invoke-direct {v4, v5}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 163
    .local v4, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v5, Lcom/didi/frame/protobuffer/FileSvrDownloadRsp;

    invoke-virtual {v4, p1, v5}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/didi/frame/protobuffer/FileSvrDownloadRsp;

    move-object v1, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    iget-object v5, v1, Lcom/didi/frame/protobuffer/FileSvrDownloadRsp;->rc:Ljava/lang/Integer;

    sget-object v6, Lcom/didi/frame/protobuffer/FileSvrDownloadRsp;->DEFAULT_RC:Ljava/lang/Integer;

    invoke-static {v5, v6}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 172
    .local v3, res:I
    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v5}, Lcom/didi/frame/push/IMPushOptionRecord;->onOptionCallback(I[Ljava/lang/Object;)V

    .line 173
    .end local v3           #res:I
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v2

    .line 165
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseGetMessageResponse([B)V
    .locals 23
    .parameter "data"

    .prologue
    .line 84
    const/4 v4, 0x0

    .line 86
    .local v4, getMsgRsp:Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;
    new-instance v18, Lcom/squareup/wire/Wire;

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 88
    .local v18, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v19, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;

    move-object v4, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    iget-object v0, v4, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->rc:Ljava/lang/Integer;

    move-object/from16 v19, v0

    sget-object v20, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->DEFAULT_RC:Ljava/lang/Integer;

    invoke-static/range {v19 .. v20}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 95
    .local v15, res:I
    iget-object v0, v4, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->mid:Ljava/lang/Long;

    move-object/from16 v19, v0

    sget-object v20, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->DEFAULT_MID:Ljava/lang/Long;

    invoke-static/range {v19 .. v20}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 96
    .local v8, maxmid:J
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v11, messages:Ljava/util/List;,"Ljava/util/List<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    iget-object v0, v4, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->messages:Ljava/util/List;

    move-object/from16 v19, v0

    sget-object v20, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->DEFAULT_MESSAGES:Ljava/util/List;

    invoke-static/range {v19 .. v20}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/didi/frame/protobuffer/InstantMessageMessage;

    .line 100
    .local v6, imm:Lcom/didi/frame/protobuffer/InstantMessageMessage;
    new-instance v10, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-direct {v10}, Lcom/didi/im/model/IMDTOChatRecordAndUser;-><init>()V

    .line 101
    .local v10, message:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    new-instance v14, Lcom/didi/im/model/IMChatRecord;

    invoke-direct {v14}, Lcom/didi/im/model/IMChatRecord;-><init>()V

    .line 104
    .local v14, record:Lcom/didi/im/model/IMChatRecord;
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/didi/im/model/IMChatRecord;->setStatus(I)V

    .line 105
    invoke-virtual {v10, v14}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->setChatRecord(Lcom/didi/im/model/IMChatRecord;)V

    .line 106
    iget-object v0, v6, Lcom/didi/frame/protobuffer/InstantMessageMessage;->mid:Ljava/lang/Long;

    move-object/from16 v19, v0

    sget-object v20, Lcom/didi/frame/protobuffer/InstantMessageMessage;->DEFAULT_MID:Ljava/lang/Long;

    invoke-static/range {v19 .. v20}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 107
    .local v12, mid:J
    long-to-int v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v14, Lcom/didi/im/model/IMChatRecord;->MID:I

    .line 108
    iget-object v0, v6, Lcom/didi/frame/protobuffer/InstantMessageMessage;->time:Ljava/lang/Long;

    move-object/from16 v19, v0

    sget-object v20, Lcom/didi/frame/protobuffer/InstantMessageMessage;->DEFAULT_TIME:Ljava/lang/Long;

    invoke-static/range {v19 .. v20}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/32 v21, 0xf4240

    div-long v19, v19, v21

    move-wide/from16 v0, v19

    iput-wide v0, v14, Lcom/didi/im/model/IMChatRecord;->createTime:J

    .line 109
    iget-object v0, v6, Lcom/didi/frame/protobuffer/InstantMessageMessage;->uid:Ljava/lang/Long;

    move-object/from16 v19, v0

    sget-object v20, Lcom/didi/frame/protobuffer/InstantMessageMessage;->DEFAULT_UID:Ljava/lang/Long;

    invoke-static/range {v19 .. v20}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v14, Lcom/didi/im/model/IMChatRecord;->UID:Ljava/lang/String;

    .line 111
    iget-object v0, v6, Lcom/didi/frame/protobuffer/InstantMessageMessage;->type:Ljava/lang/Integer;

    move-object/from16 v19, v0

    sget-object v20, Lcom/didi/frame/protobuffer/InstantMessageMessage;->DEFAULT_TYPE:Ljava/lang/Integer;

    invoke-static/range {v19 .. v20}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 113
    .local v7, immType:I
    sget-object v19, Lcom/didi/frame/protobuffer/InstantMessageType;->kInstantMessageTypeText:Lcom/didi/frame/protobuffer/InstantMessageType;

    invoke-virtual/range {v19 .. v19}, Lcom/didi/frame/protobuffer/InstantMessageType;->getValue()I

    move-result v19

    move/from16 v0, v19

    if-ne v7, v0, :cond_1

    .line 114
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/didi/im/model/IMChatRecord;->setType(I)V

    .line 115
    iget-object v0, v6, Lcom/didi/frame/protobuffer/InstantMessageMessage;->text:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v0, v14, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    .line 125
    :cond_0
    :goto_1
    new-instance v16, Lcom/didi/im/model/IMUser;

    invoke-direct/range {v16 .. v16}, Lcom/didi/im/model/IMUser;-><init>()V

    .line 126
    .local v16, user:Lcom/didi/im/model/IMUser;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->setUser(Lcom/didi/im/model/IMUser;)V

    .line 127
    iget-object v0, v6, Lcom/didi/frame/protobuffer/InstantMessageMessage;->uid:Ljava/lang/Long;

    move-object/from16 v19, v0

    sget-object v20, Lcom/didi/frame/protobuffer/InstantMessageMessage;->DEFAULT_UID:Ljava/lang/Long;

    invoke-static/range {v19 .. v20}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/didi/im/model/IMUser;->setUID(Ljava/lang/String;)V

    .line 129
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 89
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #imm:Lcom/didi/frame/protobuffer/InstantMessageMessage;
    .end local v7           #immType:I
    .end local v8           #maxmid:J
    .end local v10           #message:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    .end local v11           #messages:Ljava/util/List;,"Ljava/util/List<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    .end local v12           #mid:J
    .end local v14           #record:Lcom/didi/im/model/IMChatRecord;
    .end local v15           #res:I
    .end local v16           #user:Lcom/didi/im/model/IMUser;
    :catch_0
    move-exception v3

    .line 90
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    .end local v3           #e:Ljava/io/IOException;
    :goto_2
    return-void

    .line 117
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #imm:Lcom/didi/frame/protobuffer/InstantMessageMessage;
    .restart local v7       #immType:I
    .restart local v8       #maxmid:J
    .restart local v10       #message:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    .restart local v11       #messages:Ljava/util/List;,"Ljava/util/List<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    .restart local v12       #mid:J
    .restart local v14       #record:Lcom/didi/im/model/IMChatRecord;
    .restart local v15       #res:I
    :cond_1
    sget-object v19, Lcom/didi/frame/protobuffer/InstantMessageType;->kInstantMessageTypeVoice:Lcom/didi/frame/protobuffer/InstantMessageType;

    invoke-virtual/range {v19 .. v19}, Lcom/didi/frame/protobuffer/InstantMessageType;->getValue()I

    move-result v19

    move/from16 v0, v19

    if-ne v7, v0, :cond_0

    .line 118
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/didi/im/model/IMChatRecord;->setType(I)V

    .line 119
    iget-object v0, v6, Lcom/didi/frame/protobuffer/InstantMessageMessage;->fid:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v0, v14, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    .line 121
    iget-object v0, v6, Lcom/didi/frame/protobuffer/InstantMessageMessage;->meta:Lokio/ByteString;

    move-object/from16 v19, v0

    sget-object v20, Lcom/didi/frame/protobuffer/InstantMessageMessage;->DEFAULT_META:Lokio/ByteString;

    invoke-static/range {v19 .. v20}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lokio/ByteString;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/didi/frame/push/IMPushOptionRecord;->parseVoiceMetaVoiceTime(Lokio/ByteString;)I

    move-result v17

    .line 122
    .local v17, voiceTime:I
    move/from16 v0, v17

    iput v0, v14, Lcom/didi/im/model/IMChatRecord;->voiceTime:I

    goto :goto_1

    .line 132
    .end local v6           #imm:Lcom/didi/frame/protobuffer/InstantMessageMessage;
    .end local v7           #immType:I
    .end local v10           #message:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    .end local v12           #mid:J
    .end local v14           #record:Lcom/didi/im/model/IMChatRecord;
    .end local v17           #voiceTime:I
    :cond_2
    new-instance v19, Lcom/didi/frame/push/IMPushOptionRecord$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/didi/frame/push/IMPushOptionRecord$1;-><init>(Lcom/didi/frame/push/IMPushOptionRecord;)V

    move-object/from16 v0, v19

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 140
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v11, v19, v20

    const/16 v20, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Lcom/didi/frame/push/IMPushOptionRecord;->onOptionCallback(I[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private parseSendObjectResponse([B)V
    .locals 11
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 70
    const/4 v4, 0x0

    .line 72
    .local v4, sendObjRsp:Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;
    new-instance v7, Lcom/squareup/wire/Wire;

    new-array v8, v10, [Ljava/lang/Class;

    invoke-direct {v7, v8}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 73
    .local v7, wire:Lcom/squareup/wire/Wire;
    const-class v8, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;

    invoke-virtual {v7, p1, v8}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v4

    .end local v4           #sendObjRsp:Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;
    check-cast v4, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;

    .line 75
    .restart local v4       #sendObjRsp:Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;
    iget-object v8, v4, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->rc:Ljava/lang/Integer;

    sget-object v9, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->DEFAULT_RC:Ljava/lang/Integer;

    invoke-static {v8, v9}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 76
    .local v3, rc:I
    iget-object v8, v4, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->mid:Ljava/lang/Long;

    sget-object v9, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->DEFAULT_MID:Ljava/lang/Long;

    invoke-static {v8, v9}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 77
    .local v1, mid:J
    iget-object v8, v4, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->fid:Ljava/lang/String;

    const-string v9, ""

    invoke-static {v8, v9}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    .local v0, fileId:Ljava/lang/String;
    iget-object v8, v4, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->time:Ljava/lang/Long;

    sget-object v9, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->DEFAULT_TIME:Ljava/lang/Long;

    invoke-static {v8, v9}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 80
    .local v5, time:J
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v9, 0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v3, v8}, Lcom/didi/frame/push/IMPushOptionRecord;->onOptionCallback(I[Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method private parseSendTextResponse([B)V
    .locals 10
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 57
    const/4 v3, 0x0

    .line 59
    .local v3, sendTextRsp:Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp;
    new-instance v6, Lcom/squareup/wire/Wire;

    new-array v7, v9, [Ljava/lang/Class;

    invoke-direct {v6, v7}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 60
    .local v6, wire:Lcom/squareup/wire/Wire;
    const-class v7, Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp;

    invoke-virtual {v6, p1, v7}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v3

    .end local v3           #sendTextRsp:Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp;
    check-cast v3, Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp;

    .line 62
    .restart local v3       #sendTextRsp:Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp;
    iget-object v7, v3, Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp;->rc:Ljava/lang/Integer;

    sget-object v8, Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp;->DEFAULT_RC:Ljava/lang/Integer;

    invoke-static {v7, v8}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 63
    .local v2, rc:I
    iget-object v7, v3, Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp;->mid:Ljava/lang/Long;

    sget-object v8, Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp;->DEFAULT_MID:Ljava/lang/Long;

    invoke-static {v7, v8}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 64
    .local v0, mid:J
    iget-object v7, v3, Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp;->time:Ljava/lang/Long;

    sget-object v8, Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp;->DEFAULT_TIME:Ljava/lang/Long;

    invoke-static {v7, v8}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 66
    .local v4, time:J
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v2, v7}, Lcom/didi/frame/push/IMPushOptionRecord;->onOptionCallback(I[Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method private parseVoiceMetaVoiceTime(Lokio/ByteString;)I
    .locals 7
    .parameter "byteString"

    .prologue
    const/4 v5, 0x0

    .line 144
    const/4 v2, 0x0

    .line 146
    .local v2, meta:Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;
    new-instance v3, Lcom/squareup/wire/Wire;

    new-array v4, v5, [Ljava/lang/Class;

    invoke-direct {v3, v4}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 149
    .local v3, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    invoke-virtual {p1}, Lokio/ByteString;->toByteArray()[B

    move-result-object v4

    const-class v6, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;

    invoke-virtual {v3, v4, v6}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;

    move-object v2, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    iget-object v4, v2, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;->voice_length:Ljava/lang/Integer;

    sget-object v5, Lcom/didi/frame/protobuffer/InstantMessageVoiceMeta;->DEFAULT_VOICE_LENGTH:Ljava/lang/Integer;

    invoke-static {v4, v5}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_0
    return v4

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v4, v5

    .line 152
    goto :goto_0
.end method


# virtual methods
.method onPushOptionResponsed(I[B)V
    .locals 1
    .parameter "msgType"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/frame/push/IMPushOptionRecord;->optionCallback:Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;

    if-nez v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    sget-object v0, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeMessageSvrSendTextRsp:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v0}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 40
    invoke-direct {p0, p2}, Lcom/didi/frame/push/IMPushOptionRecord;->parseSendTextResponse([B)V

    .line 43
    :cond_2
    sget-object v0, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeMessageSvrSendObjectRsp:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v0}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 44
    invoke-direct {p0, p2}, Lcom/didi/frame/push/IMPushOptionRecord;->parseSendObjectResponse([B)V

    .line 47
    :cond_3
    sget-object v0, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeMessageSvrGetMessagesRsp:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v0}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 48
    invoke-direct {p0, p2}, Lcom/didi/frame/push/IMPushOptionRecord;->parseGetMessageResponse([B)V

    .line 51
    :cond_4
    sget-object v0, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeFileSvrDownloadRsp:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v0}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 52
    invoke-direct {p0, p2}, Lcom/didi/frame/push/IMPushOptionRecord;->parseFileDownloadResponse([B)V

    goto :goto_0
.end method
