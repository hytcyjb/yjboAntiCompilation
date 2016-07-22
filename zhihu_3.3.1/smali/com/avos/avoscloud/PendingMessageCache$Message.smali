.class public Lcom/avos/avoscloud/PendingMessageCache$Message;
.super Ljava/lang/Object;
.source "PendingMessageCache.java"

# interfaces
.implements Lcom/avos/avospush/session/MessageQueue$HasId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/PendingMessageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Message"
.end annotation


# instance fields
.field public cid:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field public peerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public requestReceipt:Z

.field public roomId:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessage(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/avos/avoscloud/PendingMessageCache$Message;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/PendingMessageCache$Message;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/avos/avoscloud/PendingMessageCache$Message;

    invoke-direct {v0}, Lcom/avos/avoscloud/PendingMessageCache$Message;-><init>()V

    .line 34
    iput-object p0, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->msg:Ljava/lang/String;

    .line 35
    iput-object p1, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->peerIds:Ljava/util/List;

    .line 36
    iput-object p2, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->roomId:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, p3}, Lcom/avos/avoscloud/PendingMessageCache$Message;->setId(Ljava/lang/String;)V

    .line 38
    iput-boolean p4, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->requestReceipt:Z

    .line 39
    iput-object p5, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->cid:Ljava/lang/String;

    .line 40
    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/avos/avoscloud/PendingMessageCache$Message;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/avos/avoscloud/PendingMessageCache$Message;->id:Ljava/lang/String;

    .line 29
    return-void
.end method
