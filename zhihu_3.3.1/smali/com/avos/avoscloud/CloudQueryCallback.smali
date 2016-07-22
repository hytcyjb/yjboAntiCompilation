.class public abstract Lcom/avos/avoscloud/CloudQueryCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "CloudQueryCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/AVCloudQueryResult;",
        ">",
        "Lcom/avos/avoscloud/AVCallback",
        "<",
        "Lcom/avos/avoscloud/AVCloudQueryResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Lcom/avos/avoscloud/AVCloudQueryResult;Lcom/avos/avoscloud/AVException;)V
.end method

.method protected final internalDone0(Lcom/avos/avoscloud/AVCloudQueryResult;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/CloudQueryCallback;->done(Lcom/avos/avoscloud/AVCloudQueryResult;Lcom/avos/avoscloud/AVException;)V

    .line 16
    return-void
.end method

.method protected bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9
    check-cast p1, Lcom/avos/avoscloud/AVCloudQueryResult;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/CloudQueryCallback;->internalDone0(Lcom/avos/avoscloud/AVCloudQueryResult;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
