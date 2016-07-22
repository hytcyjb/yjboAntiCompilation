.class public abstract Lcom/avos/avoscloud/InboxStatusFindCallback;
.super Lcom/avos/avoscloud/FindCallback;
.source "InboxStatusFindCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/FindCallback",
        "<",
        "Lcom/avos/avoscloud/AVStatus;",
        ">;"
    }
.end annotation


# instance fields
.field end:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/avos/avoscloud/FindCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnd()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/avos/avoscloud/InboxStatusFindCallback;->end:Z

    return v0
.end method

.method protected setEnd(Z)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/avos/avoscloud/InboxStatusFindCallback;->end:Z

    .line 25
    return-void
.end method
