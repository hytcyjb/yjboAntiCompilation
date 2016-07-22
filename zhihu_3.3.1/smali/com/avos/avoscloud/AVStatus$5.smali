.class final Lcom/avos/avoscloud/AVStatus$5;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVStatus;->getStatusCountImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/CountCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/CountCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/CountCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus$5;->val$callback:Lcom/avos/avoscloud/CountCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 606
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$5;->val$callback:Lcom/avos/avoscloud/CountCallback;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$5;->val$callback:Lcom/avos/avoscloud/CountCallback;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/CountCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 609
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 598
    invoke-static {p1}, Lcom/avos/avoscloud/AVStatus;->processStatusCount(Ljava/lang/String;)I

    move-result v0

    .line 599
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus$5;->val$callback:Lcom/avos/avoscloud/CountCallback;

    if-eqz v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus$5;->val$callback:Lcom/avos/avoscloud/CountCallback;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/CountCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 602
    :cond_0
    return-void
.end method
