.class final Lcom/avos/avoscloud/AVObject$15;
.super Lcom/avos/avoscloud/SaveCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->saveAll(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1537
    invoke-direct {p0}, Lcom/avos/avoscloud/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter

    .prologue
    .line 1540
    if-eqz p1, :cond_0

    .line 1541
    invoke-static {p1}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    .line 1543
    :cond_0
    return-void
.end method

.method protected mustRunOnUIThread()Z
    .locals 1

    .prologue
    .line 1547
    const/4 v0, 0x0

    return v0
.end method
