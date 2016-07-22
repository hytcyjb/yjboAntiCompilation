.class public Lcom/avos/avoscloud/AVIMOperationQueue$Operation;
.super Ljava/lang/Object;
.source "AVIMOperationQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVIMOperationQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Operation"
.end annotation


# instance fields
.field conversationId:Ljava/lang/String;

.field operation:I

.field requestId:I

.field sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    new-instance v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;-><init>()V

    .line 25
    iput-object p2, v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->conversationId:Ljava/lang/String;

    .line 26
    iput-object p1, v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->sessionId:Ljava/lang/String;

    .line 27
    iput p0, v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    .line 28
    iput p3, v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->requestId:I

    .line 29
    return-object v0
.end method
