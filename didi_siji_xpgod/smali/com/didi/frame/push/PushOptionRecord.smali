.class public Lcom/didi/frame/push/PushOptionRecord;
.super Ljava/lang/Object;
.source "PushOptionRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1295377de6b2e833L


# instance fields
.field public args:[Ljava/lang/Object;

.field public cmd:I

.field private mPushContext:Lcom/didi/frame/push/Push;

.field public optionCallback:Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;

.field public priority:I

.field public seqId:[B

.field public waitForResponse:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/didi/frame/push/PushOptionRecord;->seqId:[B

    .line 47
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/push/PushOptionRecord;->mPushContext:Lcom/didi/frame/push/Push;

    .line 48
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 1
    .parameter "cmd"
    .parameter "args"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/didi/frame/push/PushOptionRecord;->seqId:[B

    .line 37
    iput p1, p0, Lcom/didi/frame/push/PushOptionRecord;->cmd:I

    .line 38
    iput-object p2, p0, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/push/Push;)V
    .locals 1
    .parameter "pushContext"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/didi/frame/push/PushOptionRecord;->seqId:[B

    .line 33
    iput-object p1, p0, Lcom/didi/frame/push/PushOptionRecord;->mPushContext:Lcom/didi/frame/push/Push;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/push/Push;[Ljava/lang/Object;)V
    .locals 1
    .parameter "pushContext"
    .parameter "args"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/didi/frame/push/PushOptionRecord;->seqId:[B

    .line 42
    iput-object p1, p0, Lcom/didi/frame/push/PushOptionRecord;->mPushContext:Lcom/didi/frame/push/Push;

    .line 43
    iput-object p2, p0, Lcom/didi/frame/push/PushOptionRecord;->args:[Ljava/lang/Object;

    .line 44
    return-void
.end method


# virtual methods
.method public doOption()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/frame/push/PushOptionRecord;->doOption(Z)V

    .line 52
    return-void
.end method

.method public doOption(Z)V
    .locals 3
    .parameter "front"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/didi/frame/push/PushOptionRecord;->mPushContext:Lcom/didi/frame/push/Push;

    .line 58
    .local v0, pushContext:Lcom/didi/frame/push/Push;
    if-nez v0, :cond_0

    .line 60
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "push context is null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_0
    iget v1, p0, Lcom/didi/frame/push/PushOptionRecord;->cmd:I

    packed-switch v1, :pswitch_data_0

    .line 115
    :goto_0
    :pswitch_0
    return-void

    .line 67
    :pswitch_1
    invoke-virtual {v0, p0, p1}, Lcom/didi/frame/push/Push;->configPushParams(Lcom/didi/frame/push/PushOptionRecord;Z)V

    goto :goto_0

    .line 72
    :pswitch_2
    invoke-virtual {v0, p0, p1}, Lcom/didi/frame/push/Push;->createPushConnection(Lcom/didi/frame/push/PushOptionRecord;Z)V

    goto :goto_0

    .line 77
    :pswitch_3
    invoke-virtual {v0, p0, p1}, Lcom/didi/frame/push/Push;->sendPushMessage(Lcom/didi/frame/push/PushOptionRecord;Z)V

    goto :goto_0

    .line 82
    :pswitch_4
    invoke-virtual {v0, p0, p1}, Lcom/didi/frame/push/Push;->setPushFileChannel(Lcom/didi/frame/push/PushOptionRecord;Z)V

    goto :goto_0

    .line 87
    :pswitch_5
    invoke-virtual {v0, p0, p1}, Lcom/didi/frame/push/Push;->sendPushFile(Lcom/didi/frame/push/PushOptionRecord;Z)V

    goto :goto_0

    .line 92
    :pswitch_6
    invoke-virtual {v0, p0, p1}, Lcom/didi/frame/push/Push;->recvPushFile(Lcom/didi/frame/push/PushOptionRecord;Z)V

    goto :goto_0

    .line 97
    :pswitch_7
    invoke-virtual {v0, p0, p1}, Lcom/didi/frame/push/Push;->cancelPushMessage(Lcom/didi/frame/push/PushOptionRecord;Z)V

    goto :goto_0

    .line 102
    :pswitch_8
    invoke-virtual {v0, p0, p1}, Lcom/didi/frame/push/Push;->closePushConnection(Lcom/didi/frame/push/PushOptionRecord;Z)V

    goto :goto_0

    .line 107
    :pswitch_9
    invoke-virtual {v0, p0, p1}, Lcom/didi/frame/push/Push;->exitPush(Lcom/didi/frame/push/PushOptionRecord;Z)V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 267
    if-ne p0, p1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v1

    .line 269
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 270
    goto :goto_0

    .line 271
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 272
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 273
    check-cast v0, Lcom/didi/frame/push/PushOptionRecord;

    .line 274
    .local v0, other:Lcom/didi/frame/push/PushOptionRecord;
    iget v3, p0, Lcom/didi/frame/push/PushOptionRecord;->cmd:I

    iget v4, v0, Lcom/didi/frame/push/PushOptionRecord;->cmd:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 275
    goto :goto_0

    .line 276
    :cond_4
    iget-object v3, p0, Lcom/didi/frame/push/PushOptionRecord;->seqId:[B

    iget-object v4, v0, Lcom/didi/frame/push/PushOptionRecord;->seqId:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 277
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 258
    const/16 v0, 0x1f

    .line 259
    .local v0, prime:I
    const/4 v1, 0x1

    .line 260
    .local v1, result:I
    iget v2, p0, Lcom/didi/frame/push/PushOptionRecord;->cmd:I

    add-int/lit8 v1, v2, 0x1f

    .line 261
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/didi/frame/push/PushOptionRecord;->seqId:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 262
    return v1
.end method

.method public varargs onOptionCallback(I[Ljava/lang/Object;)V
    .locals 1
    .parameter "res"
    .parameter "args"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/didi/frame/push/PushOptionRecord;->optionCallback:Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Lcom/didi/frame/push/PushOptionRecord$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/didi/frame/push/PushOptionRecord$1;-><init>(Lcom/didi/frame/push/PushOptionRecord;I[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 127
    :cond_0
    return-void
.end method

.method onPushOptionResponsed(I[B)V
    .locals 2
    .parameter "msgType"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "must implement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
