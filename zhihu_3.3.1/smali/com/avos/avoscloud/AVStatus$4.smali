.class final Lcom/avos/avoscloud/AVStatus$4;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVStatus;->getStatusImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/StatusListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/StatusListCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/StatusListCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 569
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus$4;->val$callback:Lcom/avos/avoscloud/StatusListCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 580
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$4;->val$callback:Lcom/avos/avoscloud/StatusListCallback;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$4;->val$callback:Lcom/avos/avoscloud/StatusListCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/StatusListCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 583
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 572
    invoke-static {p1}, Lcom/avos/avoscloud/AVStatus;->processStatusResultList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 573
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus$4;->val$callback:Lcom/avos/avoscloud/StatusListCallback;

    if-eqz v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus$4;->val$callback:Lcom/avos/avoscloud/StatusListCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/StatusListCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 576
    :cond_0
    return-void
.end method
