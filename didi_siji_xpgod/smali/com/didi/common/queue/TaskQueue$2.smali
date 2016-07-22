.class final Lcom/didi/common/queue/TaskQueue$2;
.super Ljava/lang/Object;
.source "TaskQueue.java"

# interfaces
.implements Lcom/didi/common/receiver/NetReceiver$NetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/queue/TaskQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 0

    .prologue
    .line 52
    invoke-static {}, Lcom/didi/common/queue/TaskQueue;->popQueue()V

    .line 53
    return-void
.end method
