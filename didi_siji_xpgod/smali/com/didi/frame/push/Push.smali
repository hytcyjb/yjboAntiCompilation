.class public Lcom/didi/frame/push/Push;
.super Lcom/didi/frame/push/PushContextWraper;
.source "Push.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;,
        Lcom/didi/frame/push/Push$PushListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/frame/push/PushContextWraper",
        "<",
        "Lcom/didi/frame/push/PushOptionRecord;",
        ">;"
    }
.end annotation


# static fields
.field private static final mReceiveListenerList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/didi/frame/push/Push;


# instance fields
.field private mExited:Z

.field private mPushLis:Lcom/didi/frame/push/Push$PushListener;

.field private mPushOptionRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/push/PushOptionRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/frame/push/Push;->mReceiveListenerList:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/didi/frame/push/PushContextWraper;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/push/Push;->mPushOptionRecordList:Ljava/util/List;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/frame/push/Push;->mExited:Z

    .line 91
    return-void
.end method

.method private declared-synchronized addOptionRecord(Lcom/didi/frame/push/PushOptionRecord;)V
    .locals 1
    .parameter "record"

    .prologue
    .line 498
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/didi/frame/push/Push;->mPushOptionRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    monitor-exit p0

    return-void

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private checkError(II)V
    .locals 1
    .parameter "cmd"
    .parameter "res"

    .prologue
    .line 560
    const/4 v0, -0x6

    if-ne p2, v0, :cond_0

    .line 564
    :cond_0
    const/4 v0, -0x7

    if-ne p2, v0, :cond_1

    .line 568
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 572
    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_3

    .line 576
    :cond_3
    const/4 v0, -0x3

    if-ne p2, v0, :cond_4

    .line 580
    :cond_4
    const/16 v0, -0x10

    if-ne p2, v0, :cond_5

    .line 583
    :cond_5
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;Lcom/didi/frame/push/Push$PushListener;)V
    .locals 2
    .parameter "context"
    .parameter "l"

    .prologue
    .line 34
    const-class v1, Lcom/didi/frame/push/Push;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/frame/push/Push;->sInstance:Lcom/didi/frame/push/Push;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/didi/frame/push/Push;

    invoke-direct {v0, p0}, Lcom/didi/frame/push/Push;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/didi/frame/push/Push;->sInstance:Lcom/didi/frame/push/Push;

    .line 36
    sget-object v0, Lcom/didi/frame/push/Push;->sInstance:Lcom/didi/frame/push/Push;

    iput-object p1, v0, Lcom/didi/frame/push/Push;->mPushLis:Lcom/didi/frame/push/Push$PushListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    monitor-exit v1

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private doPushOption(I[Ljava/lang/Object;Z)V
    .locals 1
    .parameter "cmd"
    .parameter "args"
    .parameter "front"

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;ZLcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 278
    return-void
.end method

.method private doPushOption(I[Ljava/lang/Object;ZLcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V
    .locals 6
    .parameter "cmd"
    .parameter "args"
    .parameter "front"
    .parameter "callback"

    .prologue
    .line 304
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;ZLcom/didi/frame/push/PushOptionRecord$PushOptionCallback;I)V

    .line 305
    return-void
.end method

.method private doPushOption(I[Ljava/lang/Object;ZLcom/didi/frame/push/PushOptionRecord$PushOptionCallback;I)V
    .locals 1
    .parameter "cmd"
    .parameter "args"
    .parameter "front"
    .parameter "callback"
    .parameter "waitForResponse"

    .prologue
    .line 294
    new-instance v0, Lcom/didi/frame/push/PushOptionRecord;

    invoke-direct {v0, p0}, Lcom/didi/frame/push/PushOptionRecord;-><init>(Lcom/didi/frame/push/Push;)V

    .line 295
    .local v0, pushOption:Lcom/didi/frame/push/PushOptionRecord;
    iput-object p2, v0, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    .line 296
    iput p1, v0, Lcom/didi/frame/push/PushOptionRecord;->cmd:I

    .line 297
    iput-object p4, v0, Lcom/didi/frame/push/PushOptionRecord;->optionCallback:Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;

    .line 298
    iput p5, v0, Lcom/didi/frame/push/PushOptionRecord;->waitForResponse:I

    .line 300
    invoke-virtual {v0, p3}, Lcom/didi/frame/push/PushOptionRecord;->doOption(Z)V

    .line 301
    return-void
.end method

.method private doPushOption(Lcom/didi/frame/push/PushOptionRecord;I[Ljava/lang/Object;ZLcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V
    .locals 7
    .parameter
    .parameter "cmd"
    .parameter "args"
    .parameter "front"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/didi/frame/push/PushOptionRecord;",
            ">(TT;I[",
            "Ljava/lang/Object;",
            "Z",
            "Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, pushOption:Lcom/didi/frame/push/PushOptionRecord;,"TT;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/didi/frame/push/Push;->doPushOption(Lcom/didi/frame/push/PushOptionRecord;I[Ljava/lang/Object;ZLcom/didi/frame/push/PushOptionRecord$PushOptionCallback;I)V

    .line 309
    return-void
.end method

.method private doPushOption(Lcom/didi/frame/push/PushOptionRecord;I[Ljava/lang/Object;ZLcom/didi/frame/push/PushOptionRecord$PushOptionCallback;I)V
    .locals 0
    .parameter
    .parameter "cmd"
    .parameter "args"
    .parameter "front"
    .parameter "callback"
    .parameter "waitForResponse"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/didi/frame/push/PushOptionRecord;",
            ">(TT;I[",
            "Ljava/lang/Object;",
            "Z",
            "Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, pushOption:Lcom/didi/frame/push/PushOptionRecord;,"TT;"
    if-nez p1, :cond_0

    .line 322
    :goto_0
    return-void

    .line 316
    :cond_0
    iput-object p3, p1, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    .line 317
    iput p2, p1, Lcom/didi/frame/push/PushOptionRecord;->cmd:I

    .line 318
    iput-object p5, p1, Lcom/didi/frame/push/PushOptionRecord;->optionCallback:Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;

    .line 319
    iput p6, p1, Lcom/didi/frame/push/PushOptionRecord;->waitForResponse:I

    .line 321
    invoke-virtual {p1, p4}, Lcom/didi/frame/push/PushOptionRecord;->doOption(Z)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/didi/frame/push/Push;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/didi/frame/push/Push;->sInstance:Lcom/didi/frame/push/Push;

    return-object v0
.end method

.method public static hadRegisterReceiveListener(I)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 733
    sget-object v1, Lcom/didi/frame/push/Push;->mReceiveListenerList:Ljava/util/Map;

    monitor-enter v1

    .line 734
    :try_start_0
    sget-object v0, Lcom/didi/frame/push/Push;->mReceiveListenerList:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 735
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleAppPushMessageReq([B[B)V
    .locals 12
    .parameter "data"
    .parameter "seqId"

    .prologue
    .line 678
    const/4 v3, 0x0

    .line 681
    .local v3, msg:Lcom/didi/frame/protobuffer/PushMsg;
    :try_start_0
    new-instance v7, Lcom/squareup/wire/Wire;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-direct {v7, v8}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 682
    .local v7, wire:Lcom/squareup/wire/Wire;
    const-class v8, Lcom/didi/frame/protobuffer/PushMsg;

    invoke-virtual {v7, p1, v8}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/didi/frame/protobuffer/PushMsg;

    move-object v3, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    .end local v7           #wire:Lcom/squareup/wire/Wire;
    :goto_0
    iget-object v8, v3, Lcom/didi/frame/protobuffer/PushMsg;->type:Ljava/lang/Integer;

    sget-object v9, Lcom/didi/frame/protobuffer/PushMsg;->DEFAULT_TYPE:Ljava/lang/Integer;

    invoke-static {v8, v9}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 688
    .local v4, msgType:I
    iget-object v8, v3, Lcom/didi/frame/protobuffer/PushMsg;->product:Ljava/lang/Integer;

    sget-object v9, Lcom/didi/frame/protobuffer/PushMsg;->DEFAULT_PRODUCT:Ljava/lang/Integer;

    invoke-static {v8, v9}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 690
    .local v5, productId:I
    sget-object v9, Lcom/didi/frame/push/Push;->mReceiveListenerList:Ljava/util/Map;

    monitor-enter v9

    .line 691
    :try_start_1
    sget-object v8, Lcom/didi/frame/push/Push;->mReceiveListenerList:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 692
    .local v6, type:Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v4, v8, :cond_0

    .line 694
    sget-object v8, Lcom/didi/frame/push/Push;->mReceiveListenerList:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v3, Lcom/didi/frame/protobuffer/PushMsg;->payload:Lokio/ByteString;

    invoke-virtual {v11}, Lokio/ByteString;->toByteArray()[B

    move-result-object v11

    invoke-interface {v8, v5, v10, v11}, Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;->onPushMessageReceived(II[B)V

    .line 698
    .end local v6           #type:Ljava/lang/Integer;
    :cond_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 704
    return-void

    .line 683
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #msgType:I
    .end local v5           #productId:I
    :catch_0
    move-exception v1

    .line 684
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 698
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #msgType:I
    .restart local v5       #productId:I
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8
.end method

.method private handleCdntSvrDownReq([B)V
    .locals 7
    .parameter "data"

    .prologue
    .line 660
    sget-object v3, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeCdntSvrDownReq:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v3}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v0

    .line 662
    .local v0, eType:I
    sget-object v4, Lcom/didi/frame/push/Push;->mReceiveListenerList:Ljava/util/Map;

    monitor-enter v4

    .line 663
    :try_start_0
    sget-object v3, Lcom/didi/frame/push/Push;->mReceiveListenerList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 664
    .local v2, type:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 666
    sget-object v3, Lcom/didi/frame/push/Push;->mReceiveListenerList:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v3, v5, v6, p1}, Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;->onPushMessageReceived(II[B)V

    goto :goto_0

    .line 669
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #type:Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 670
    return-void
.end method

.method private handlePushMessageReqForCallback(I[B[B)V
    .locals 2
    .parameter "msgType"
    .parameter "data"
    .parameter "seqId"

    .prologue
    .line 714
    invoke-direct {p0, p3}, Lcom/didi/frame/push/Push;->removeOptionRecord([B)Lcom/didi/frame/push/PushOptionRecord;

    move-result-object v1

    .line 716
    .local v1, option:Lcom/didi/frame/push/PushOptionRecord;
    if-eqz v1, :cond_0

    .line 718
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcom/didi/frame/push/PushOptionRecord;->onPushOptionResponsed(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V
    .locals 3
    .parameter "msgType"
    .parameter "l"

    .prologue
    .line 105
    sget-object v1, Lcom/didi/frame/push/Push;->mReceiveListenerList:Ljava/util/Map;

    monitor-enter v1

    .line 106
    :try_start_0
    sget-object v0, Lcom/didi/frame/push/Push;->mReceiveListenerList:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    monitor-exit v1

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeOptionRecord([B)Lcom/didi/frame/push/PushOptionRecord;
    .locals 4
    .parameter "seqId"

    .prologue
    .line 506
    iget-object v3, p0, Lcom/didi/frame/push/Push;->mPushOptionRecordList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 508
    .local v2, size:I
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 509
    iget-object v3, p0, Lcom/didi/frame/push/Push;->mPushOptionRecordList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/push/PushOptionRecord;

    .line 510
    .local v1, record:Lcom/didi/frame/push/PushOptionRecord;
    iget-object v3, v1, Lcom/didi/frame/push/PushOptionRecord;->seqId:[B

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 511
    invoke-direct {p0, v1}, Lcom/didi/frame/push/Push;->removeOptionRecord(Lcom/didi/frame/push/PushOptionRecord;)V

    .line 516
    .end local v1           #record:Lcom/didi/frame/push/PushOptionRecord;
    :goto_1
    return-object v1

    .line 508
    .restart local v1       #record:Lcom/didi/frame/push/PushOptionRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 516
    .end local v1           #record:Lcom/didi/frame/push/PushOptionRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private declared-synchronized removeOptionRecord(Lcom/didi/frame/push/PushOptionRecord;)V
    .locals 1
    .parameter "record"

    .prologue
    .line 502
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/didi/frame/push/Push;->mPushOptionRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    monitor-exit p0

    return-void

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private responseAppPushMessageReq([B)V
    .locals 6
    .parameter "seqId"

    .prologue
    const/4 v5, 0x0

    .line 746
    new-instance v1, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;

    invoke-direct {v1}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;-><init>()V

    .line 747
    .local v1, msgBuilder:Lcom/didi/frame/protobuffer/BinaryMsg$Builder;
    sget-object v3, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypePushSvrAppRspReq:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v3}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/BinaryMsg$Builder;

    .line 748
    array-length v3, p1

    invoke-static {p1, v5, v3}, Lokio/ByteString;->of([BII)Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->payload(Lokio/ByteString;)Lcom/didi/frame/protobuffer/BinaryMsg$Builder;

    .line 750
    sget-object v3, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeAppPushMessageRsp:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v3}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v2

    .line 751
    .local v2, type:I
    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->build()Lcom/didi/frame/protobuffer/BinaryMsg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/frame/protobuffer/BinaryMsg;->toByteArray()[B

    move-result-object v0

    .line 753
    .local v0, data:[B
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/push/Push;->doSendPushMessage([Ljava/lang/Object;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 754
    return-void
.end method

.method public static unregisterPushMessageReceiveListener(I)V
    .locals 3
    .parameter "msgType"

    .prologue
    .line 117
    sget-object v1, Lcom/didi/frame/push/Push;->mReceiveListenerList:Ljava/util/Map;

    monitor-enter v1

    .line 118
    :try_start_0
    sget-object v0, Lcom/didi/frame/push/Push;->mReceiveListenerList:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    monitor-exit v1

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method cancelPushMessage(Lcom/didi/frame/push/PushOptionRecord;Z)V
    .locals 5
    .parameter "record"
    .parameter "front"

    .prologue
    .line 464
    iget-object v3, p1, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 466
    .local v1, seqId:J
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 467
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "seqId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 468
    const-string v3, "option_record"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 470
    invoke-virtual {p0, v0, p2}, Lcom/didi/frame/push/Push;->recvFile(Landroid/os/Bundle;Z)V

    .line 471
    return-void
.end method

.method public bridge synthetic closeConnection(Landroid/os/Bundle;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->closeConnection(Landroid/os/Bundle;Z)V

    return-void
.end method

.method closePushConnection(Lcom/didi/frame/push/PushOptionRecord;Z)V
    .locals 1
    .parameter "record"
    .parameter "front"

    .prologue
    .line 480
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/didi/frame/push/Push;->closeConnection(Landroid/os/Bundle;Z)V

    .line 481
    return-void
.end method

.method public bridge synthetic config(Landroid/os/Bundle;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->config(Landroid/os/Bundle;Z)V

    return-void
.end method

.method configPushParams(Lcom/didi/frame/push/PushOptionRecord;Z)V
    .locals 20
    .parameter "record"
    .parameter "front"

    .prologue
    .line 328
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 329
    .local v17, msgQueueCapacity:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 330
    .local v9, connChannelTaskQueueCapaicity:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 331
    .local v4, connChannelDNSTimeout:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 332
    .local v3, connChannelConnectTimeout:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 333
    .local v5, connChannelHeartBeatInterval:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 334
    .local v6, connChannelHeartBeatRetryCount:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 335
    .local v7, connChannelHeartBeatRetryInterval:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x7

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 336
    .local v8, connChannelRecvBufferSize:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 337
    .local v15, fileChannelTaskQueueCapaicity:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x9

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 338
    .local v13, fileChannelConnectionNumber:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0xa

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 339
    .local v14, fileChannelDNSTimeout:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 340
    .local v12, fileChannelConnectTimeout:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0xc

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 341
    .local v16, fileChannelTaskTimeout:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0xd

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 342
    .local v10, dnsCacheCapcity:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 344
    .local v11, dnsCacheTimeout:I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 345
    .local v2, bundle:Landroid/os/Bundle;
    const-string v18, "1"

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    const-string v18, "2"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 347
    const-string v18, "4"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    const-string v18, "5"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 349
    const-string v18, "6"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 350
    const-string v18, "7"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 351
    const-string v18, "8"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 352
    const-string v18, "10"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    const-string v18, "11"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 354
    const-string v18, "12"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 355
    const-string v18, "13"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 356
    const-string v18, "14"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 357
    const-string v18, "15"

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 358
    const-string v18, "16"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 359
    const-string v18, "17"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 360
    const-string v18, "option_record"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 362
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/didi/frame/push/Push;->config(Landroid/os/Bundle;Z)V

    .line 363
    return-void
.end method

.method public bridge synthetic createConnection(Landroid/os/Bundle;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->createConnection(Landroid/os/Bundle;Z)V

    return-void
.end method

.method createPushConnection(Lcom/didi/frame/push/PushOptionRecord;Z)V
    .locals 9
    .parameter "record"
    .parameter "front"

    .prologue
    .line 373
    iget-object v7, p1, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    const/4 v8, 0x0

    aget-object v3, v7, v8

    check-cast v3, Ljava/lang/String;

    .line 374
    .local v3, ip:Ljava/lang/String;
    iget-object v7, p1, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 375
    .local v4, port:I
    iget-object v7, p1, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    const/4 v8, 0x2

    aget-object v0, v7, v8

    check-cast v0, Ljava/lang/String;

    .line 376
    .local v0, account:Ljava/lang/String;
    iget-object v7, p1, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    const/4 v8, 0x3

    aget-object v6, v7, v8

    check-cast v6, Ljava/lang/String;

    .line 377
    .local v6, token:Ljava/lang/String;
    iget-object v7, p1, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    check-cast v7, [B

    move-object v2, v7

    check-cast v2, [B

    .line 378
    .local v2, extraData:[B
    iget-object v7, p1, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 380
    .local v5, role:I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 381
    .local v1, bundle:Landroid/os/Bundle;
    const-string v7, "ip"

    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v7, "port"

    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 383
    const-string v7, "account"

    invoke-virtual {v1, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v7, "token"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v7, "extra"

    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 386
    const-string v7, "role"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 387
    const-string v7, "option_record"

    invoke-virtual {v1, v7, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 389
    invoke-virtual {p0, v1, p2}, Lcom/didi/frame/push/Push;->createConnection(Landroid/os/Bundle;Z)V

    .line 390
    return-void
.end method

.method public doCancelPushMessage([Ljava/lang/Object;)V
    .locals 2
    .parameter "cancelArgs"

    .prologue
    .line 253
    const/16 v0, 0xc

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;Z)V

    .line 254
    return-void
.end method

.method public doCancelPushMessage([Ljava/lang/Object;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V
    .locals 2
    .parameter "cancelArgs"
    .parameter "callback"

    .prologue
    .line 249
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;ZLcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 250
    return-void
.end method

.method public doCancelPushMessage([Ljava/lang/Object;Z)V
    .locals 1
    .parameter "cancelArgs"
    .parameter "front"

    .prologue
    .line 245
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1, p2}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;Z)V

    .line 246
    return-void
.end method

.method public doClosePushConnection()V
    .locals 3

    .prologue
    .line 266
    const/16 v0, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;Z)V

    .line 267
    return-void
.end method

.method public doClosePushConnection(Z)V
    .locals 2
    .parameter "front"

    .prologue
    .line 262
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;Z)V

    .line 263
    return-void
.end method

.method public doConfigPush([Ljava/lang/Object;)V
    .locals 1
    .parameter "configArgs"

    .prologue
    const/4 v0, 0x1

    .line 132
    invoke-direct {p0, v0, p1, v0}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;Z)V

    .line 133
    return-void
.end method

.method public doConfigPush([Ljava/lang/Object;Z)V
    .locals 1
    .parameter "configArgs"
    .parameter "front"

    .prologue
    .line 128
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;Z)V

    .line 129
    return-void
.end method

.method public doCreatePushConnection([Ljava/lang/Object;)V
    .locals 2
    .parameter "connArgs"

    .prologue
    .line 147
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;Z)V

    .line 148
    return-void
.end method

.method public doCreatePushConnection([Ljava/lang/Object;Z)V
    .locals 1
    .parameter "connArgs"
    .parameter "front"

    .prologue
    .line 143
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;Z)V

    .line 144
    return-void
.end method

.method public doExitPush()V
    .locals 3

    .prologue
    .line 273
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;Z)V

    .line 274
    return-void
.end method

.method public doRectFilePushMessage([Ljava/lang/Object;)V
    .locals 2
    .parameter "recvFileArgs"

    .prologue
    .line 241
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;Z)V

    .line 242
    return-void
.end method

.method public doRecvFilePushMessage(Lcom/didi/frame/push/PushOptionRecordEx;[Ljava/lang/Object;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V
    .locals 6
    .parameter "pushOption"
    .parameter "recvFileArgs"
    .parameter "callback"

    .prologue
    .line 237
    const/16 v2, 0x9

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/didi/frame/push/Push;->doPushOption(Lcom/didi/frame/push/PushOptionRecord;I[Ljava/lang/Object;ZLcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 238
    return-void
.end method

.method public doRecvFilePushMessage([Ljava/lang/Object;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V
    .locals 2
    .parameter "recvFileArgs"
    .parameter "callback"

    .prologue
    .line 233
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;ZLcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 234
    return-void
.end method

.method public doRecvFilePushMessage([Ljava/lang/Object;Z)V
    .locals 1
    .parameter "recvFileArgs"
    .parameter "front"

    .prologue
    .line 229
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1, p2}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;Z)V

    .line 230
    return-void
.end method

.method public doSendFilePushMessage(Lcom/didi/frame/push/PushOptionRecordEx;[Ljava/lang/Object;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V
    .locals 6
    .parameter "pushOption"
    .parameter "sendFileArgs"
    .parameter "callback"

    .prologue
    .line 212
    const/16 v2, 0x8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/didi/frame/push/Push;->doPushOption(Lcom/didi/frame/push/PushOptionRecord;I[Ljava/lang/Object;ZLcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 213
    return-void
.end method

.method public doSendFilePushMessage([Ljava/lang/Object;)V
    .locals 2
    .parameter "sendFileArgs"

    .prologue
    .line 220
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;Z)V

    .line 221
    return-void
.end method

.method public doSendFilePushMessage([Ljava/lang/Object;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V
    .locals 2
    .parameter "sendFileArgs"
    .parameter "callback"

    .prologue
    .line 216
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;ZLcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 217
    return-void
.end method

.method public doSendFilePushMessage([Ljava/lang/Object;Z)V
    .locals 1
    .parameter "sendFileArgs"
    .parameter "front"

    .prologue
    .line 208
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;Z)V

    .line 209
    return-void
.end method

.method public doSendPushMessage(Lcom/didi/frame/push/PushOptionRecordEx;[Ljava/lang/Object;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;I)V
    .locals 7
    .parameter "pushOption"
    .parameter "sendArgs"
    .parameter "callback"
    .parameter "waitForResponse"

    .prologue
    .line 173
    const/4 v2, 0x4

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/didi/frame/push/Push;->doPushOption(Lcom/didi/frame/push/PushOptionRecord;I[Ljava/lang/Object;ZLcom/didi/frame/push/PushOptionRecord$PushOptionCallback;I)V

    .line 174
    return-void
.end method

.method public doSendPushMessage([Ljava/lang/Object;)V
    .locals 2
    .parameter "sendArgs"

    .prologue
    .line 182
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;Z)V

    .line 183
    return-void
.end method

.method public doSendPushMessage([Ljava/lang/Object;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V
    .locals 2
    .parameter "sendArgs"
    .parameter "callback"

    .prologue
    .line 177
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;ZLcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 178
    return-void
.end method

.method public doSendPushMessage([Ljava/lang/Object;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;I)V
    .locals 6
    .parameter "sendArgs"
    .parameter "callback"
    .parameter "waitForResponse"

    .prologue
    .line 169
    const/4 v1, 0x4

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;ZLcom/didi/frame/push/PushOptionRecord$PushOptionCallback;I)V

    .line 170
    return-void
.end method

.method public doSendPushMessage([Ljava/lang/Object;Z)V
    .locals 1
    .parameter "sendArgs"
    .parameter "front"

    .prologue
    .line 157
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;Z)V

    .line 158
    return-void
.end method

.method public doSetFileChannelPushMessage([Ljava/lang/Object;)V
    .locals 2
    .parameter "fileChannelArgs"

    .prologue
    .line 195
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;Z)V

    .line 196
    return-void
.end method

.method public doSetFileChannelPushMessage([Ljava/lang/Object;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V
    .locals 2
    .parameter "fileChannelArgs"
    .parameter "callback"

    .prologue
    .line 199
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;ZLcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 200
    return-void
.end method

.method public doSetFileChannelPushMessage([Ljava/lang/Object;Z)V
    .locals 1
    .parameter "fileChannelArgs"
    .parameter "front"

    .prologue
    .line 191
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2}, Lcom/didi/frame/push/Push;->doPushOption(I[Ljava/lang/Object;Z)V

    .line 192
    return-void
.end method

.method public bridge synthetic exit(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/didi/frame/push/PushContextWraper;->exit(Z)V

    return-void
.end method

.method exitPush(Lcom/didi/frame/push/PushOptionRecord;Z)V
    .locals 1
    .parameter "record"
    .parameter "front"

    .prologue
    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/frame/push/Push;->mExited:Z

    .line 491
    invoke-virtual {p0, p2}, Lcom/didi/frame/push/Push;->exit(Z)V

    .line 492
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/frame/push/Push;->sInstance:Lcom/didi/frame/push/Push;

    .line 493
    return-void
.end method

.method public bridge synthetic handleCanceling(Landroid/os/Bundle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/didi/frame/push/PushContextWraper;->handleCanceling(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic handleConfig(Landroid/os/Bundle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/didi/frame/push/PushContextWraper;->handleConfig(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic handleDisconnect(Landroid/os/Bundle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/didi/frame/push/PushContextWraper;->handleDisconnect(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic handleFileChannel(Landroid/os/Bundle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/didi/frame/push/PushContextWraper;->handleFileChannel(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic handleLoop()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/didi/frame/push/PushContextWraper;->handleLoop()I

    move-result v0

    return v0
.end method

.method public bridge synthetic handleReceigingFile(Landroid/os/Bundle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/didi/frame/push/PushContextWraper;->handleReceigingFile(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method protected handleReceiving(I[B[B)V
    .locals 1
    .parameter "eType"
    .parameter "data"
    .parameter "seqId"

    .prologue
    .line 638
    sget-object v0, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeCdntSvrDownReq:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v0}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 640
    invoke-direct {p0, p2}, Lcom/didi/frame/push/Push;->handleCdntSvrDownReq([B)V

    .line 650
    :goto_0
    return-void

    .line 644
    :cond_0
    sget-object v0, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeAppPushMessageReq:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v0}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 645
    invoke-direct {p0, p2, p3}, Lcom/didi/frame/push/Push;->handleAppPushMessageReq([B[B)V

    goto :goto_0

    .line 649
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/frame/push/Push;->handlePushMessageReqForCallback(I[B[B)V

    goto :goto_0
.end method

.method protected declared-synchronized handleSendCallback(I[B)V
    .locals 2
    .parameter "retCode"
    .parameter "seqId"

    .prologue
    .line 625
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    array-length v1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 633
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 629
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/didi/frame/push/Push;->removeOptionRecord([B)Lcom/didi/frame/push/PushOptionRecord;

    move-result-object v0

    .line 630
    .local v0, record:Lcom/didi/frame/push/PushOptionRecord;
    if-eqz v0, :cond_0

    .line 631
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/didi/frame/push/PushOptionRecord;->onOptionCallback(I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 625
    .end local v0           #record:Lcom/didi/frame/push/PushOptionRecord;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bridge synthetic handleSendingFile(Landroid/os/Bundle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/didi/frame/push/PushContextWraper;->handleSendingFile(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic handleStoppingLoop(Landroid/os/Bundle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/didi/frame/push/PushContextWraper;->handleStoppingLoop(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/didi/frame/push/PushContextWraper;->isConnected()Z

    move-result v0

    return v0
.end method

.method public onConnCallback(I)V
    .locals 1
    .parameter "retCode"

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/didi/frame/push/Push;->mExited:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/frame/push/Push;->mPushLis:Lcom/didi/frame/push/Push$PushListener;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/didi/frame/push/Push;->mPushLis:Lcom/didi/frame/push/Push$PushListener;

    invoke-interface {v0, p1}, Lcom/didi/frame/push/Push$PushListener;->onPushConnCallback(I)V

    .line 592
    :cond_0
    return-void
.end method

.method public bridge synthetic onMessageReceived(Landroid/os/Bundle;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->onMessageReceived(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public bridge synthetic onMessageSent(Landroid/os/Bundle;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->onMessageSent(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public onMsgReceivedCallback(I[B[BI)V
    .locals 2
    .parameter "msgType"
    .parameter "seqId"
    .parameter "data"
    .parameter "dataLen"

    .prologue
    .line 607
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 608
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "msgType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 609
    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 610
    const-string v1, "seqId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 612
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/push/Push;->onMessageReceived(Landroid/os/Bundle;Z)V

    .line 613
    return-void
.end method

.method public onMsgSentCallback(II[B)V
    .locals 2
    .parameter "retCode"
    .parameter "msgType"
    .parameter "seqId"

    .prologue
    .line 596
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 597
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "retCode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 598
    const-string v1, "seqId"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 599
    const-string v1, "msgType"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 601
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/push/Push;->onMessageSent(Landroid/os/Bundle;Z)V

    .line 602
    return-void
.end method

.method protected onOptionDone(IILcom/didi/frame/push/PushOptionRecord;)V
    .locals 1
    .parameter "cmd"
    .parameter "res"
    .parameter "record"

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/didi/frame/push/Push;->mExited:Z

    if-eqz v0, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/didi/frame/push/Push;->checkError(II)V

    .line 544
    if-eqz p2, :cond_2

    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/didi/frame/push/Push;->mPushLis:Lcom/didi/frame/push/Push$PushListener;

    if-eqz v0, :cond_2

    .line 545
    iget-object v0, p0, Lcom/didi/frame/push/Push;->mPushLis:Lcom/didi/frame/push/Push$PushListener;

    invoke-interface {v0, p2}, Lcom/didi/frame/push/Push$PushListener;->onPushFileConnError(I)V

    goto :goto_0

    .line 549
    :cond_2
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 550
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p3, p2, v0}, Lcom/didi/frame/push/PushOptionRecord;->onOptionCallback(I[Ljava/lang/Object;)V

    .line 553
    :cond_3
    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 555
    :cond_4
    invoke-direct {p0, p3}, Lcom/didi/frame/push/Push;->addOptionRecord(Lcom/didi/frame/push/PushOptionRecord;)V

    goto :goto_0
.end method

.method protected bridge synthetic onOptionDone(IILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    check-cast p3, Lcom/didi/frame/push/PushOptionRecord;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/frame/push/Push;->onOptionDone(IILcom/didi/frame/push/PushOptionRecord;)V

    return-void
.end method

.method public onProgressCallback([BII)V
    .locals 0
    .parameter "seqId"
    .parameter "progressState"
    .parameter "progressPercent"

    .prologue
    .line 618
    return-void
.end method

.method protected onPushContextStarted()V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/didi/frame/push/Push;->mPushLis:Lcom/didi/frame/push/Push$PushListener;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/didi/frame/push/Push;->mPushLis:Lcom/didi/frame/push/Push$PushListener;

    invoke-interface {v0}, Lcom/didi/frame/push/Push$PushListener;->onPushContextStarted()V

    .line 525
    :cond_0
    return-void
.end method

.method protected onStartLoopFailed(I)V
    .locals 1
    .parameter "retCode"

    .prologue
    .line 529
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/didi/frame/push/Push;->checkError(II)V

    .line 530
    iget-boolean v0, p0, Lcom/didi/frame/push/Push;->mExited:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/frame/push/Push;->mPushLis:Lcom/didi/frame/push/Push$PushListener;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/didi/frame/push/Push;->mPushLis:Lcom/didi/frame/push/Push$PushListener;

    invoke-interface {v0, p1}, Lcom/didi/frame/push/Push$PushListener;->onPushLoopError(I)V

    .line 533
    :cond_0
    return-void
.end method

.method public bridge synthetic recvFile(Landroid/os/Bundle;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->recvFile(Landroid/os/Bundle;Z)V

    return-void
.end method

.method recvPushFile(Lcom/didi/frame/push/PushOptionRecord;Z)V
    .locals 8
    .parameter "record"
    .parameter "front"

    .prologue
    .line 447
    iget-object v6, p1, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 448
    .local v4, sessionId:J
    iget-object v6, p1, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 449
    .local v3, msgType:I
    iget-object v6, p1, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    const/4 v7, 0x2

    aget-object v1, v6, v7

    check-cast v1, Ljava/lang/String;

    .line 450
    .local v1, fileId:Ljava/lang/String;
    iget-object v6, p1, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    const/4 v7, 0x3

    aget-object v2, v6, v7

    check-cast v2, Ljava/lang/String;

    .line 452
    .local v2, filePath:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 453
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "session_id"

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 454
    const-string v6, "msgType"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    const-string v6, "file_id"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v6, "file_path"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v6, "seqId"

    iget-object v7, p1, Lcom/didi/frame/push/PushOptionRecord;->seqId:[B

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 458
    const-string v6, "option_record"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 460
    invoke-virtual {p0, v0, p2}, Lcom/didi/frame/push/Push;->recvFile(Landroid/os/Bundle;Z)V

    .line 461
    return-void
.end method

.method public bridge synthetic run()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/didi/frame/push/PushContextWraper;->run()V

    return-void
.end method

.method public bridge synthetic sendFile(Landroid/os/Bundle;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->sendFile(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public bridge synthetic sendMessage(Landroid/os/Bundle;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->sendMessage(Landroid/os/Bundle;Z)V

    return-void
.end method

.method sendPushFile(Lcom/didi/frame/push/PushOptionRecord;Z)V
    .locals 11
    .parameter "record"
    .parameter "front"

    .prologue
    .line 426
    iget-object v9, p1, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 427
    .local v7, sessionId:J
    iget-object v9, p1, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 428
    .local v5, reqId:J
    iget-object v9, p1, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 429
    .local v4, msgType:I
    iget-object v9, p1, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    const/4 v10, 0x3

    aget-object v1, v9, v10

    check-cast v1, Ljava/lang/String;

    .line 430
    .local v1, filePath:Ljava/lang/String;
    iget-object v9, p1, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    const/4 v10, 0x4

    aget-object v9, v9, v10

    check-cast v9, [B

    move-object v2, v9

    check-cast v2, [B

    .line 431
    .local v2, metaData:[B
    iget-object v9, p1, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    const/4 v10, 0x5

    aget-object v9, v9, v10

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 433
    .local v3, metaSize:I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 434
    .local v0, bundle:Landroid/os/Bundle;
    const-string v9, "session_id"

    invoke-virtual {v0, v9, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 435
    const-string v9, "msgType"

    invoke-virtual {v0, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 436
    const-string v9, "file_path"

    invoke-virtual {v0, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v9, "seqId"

    iget-object v10, p1, Lcom/didi/frame/push/PushOptionRecord;->seqId:[B

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 438
    const-string v9, "reqId"

    invoke-virtual {v0, v9, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 439
    const-string v9, "meta"

    invoke-virtual {v0, v9, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 440
    const-string v9, "meta_size"

    invoke-virtual {v0, v9, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 441
    const-string v9, "option_record"

    invoke-virtual {v0, v9, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 443
    invoke-virtual {p0, v0, p2}, Lcom/didi/frame/push/Push;->sendFile(Landroid/os/Bundle;Z)V

    .line 444
    return-void
.end method

.method sendPushMessage(Lcom/didi/frame/push/PushOptionRecord;Z)V
    .locals 5
    .parameter "record"
    .parameter "front"

    .prologue
    .line 400
    iget-object v3, p1, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 401
    .local v2, msgType:I
    iget-object v3, p1, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    check-cast v3, [B

    move-object v1, v3

    check-cast v1, [B

    .line 403
    .local v1, data:[B
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 404
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "msgType"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 405
    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 406
    const-string v3, "seqId"

    iget-object v4, p1, Lcom/didi/frame/push/PushOptionRecord;->seqId:[B

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 407
    const-string v3, "wait_for_response"

    iget v4, p1, Lcom/didi/frame/push/PushOptionRecord;->waitForResponse:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 408
    const-string v3, "option_record"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 410
    invoke-virtual {p0, v0, p2}, Lcom/didi/frame/push/Push;->sendMessage(Landroid/os/Bundle;Z)V

    .line 411
    return-void
.end method

.method public bridge synthetic setFileChannel(Landroid/os/Bundle;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->setFileChannel(Landroid/os/Bundle;Z)V

    return-void
.end method

.method setPushFileChannel(Lcom/didi/frame/push/PushOptionRecord;Z)V
    .locals 5
    .parameter "record"
    .parameter "front"

    .prologue
    .line 414
    iget-object v3, p1, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v1, v3, v4

    check-cast v1, Ljava/lang/String;

    .line 415
    .local v1, ip:Ljava/lang/String;
    iget-object v3, p1, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 417
    .local v2, port:I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 418
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "ip"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v3, "port"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 420
    const-string v3, "option_record"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 422
    invoke-virtual {p0, v0, p2}, Lcom/didi/frame/push/Push;->setFileChannel(Landroid/os/Bundle;Z)V

    .line 423
    return-void
.end method

.method public setPushListener(Lcom/didi/frame/push/Push$PushListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/didi/frame/push/Push;->mPushLis:Lcom/didi/frame/push/Push$PushListener;

    .line 95
    return-void
.end method

.method public bridge synthetic startLoop(Landroid/os/Bundle;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->startLoop(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public bridge synthetic startLoopInThread()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/didi/frame/push/PushContextWraper;->startLoopInThread()I

    move-result v0

    return v0
.end method

.method public bridge synthetic stopLoop(Landroid/os/Bundle;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->stopLoop(Landroid/os/Bundle;Z)V

    return-void
.end method
