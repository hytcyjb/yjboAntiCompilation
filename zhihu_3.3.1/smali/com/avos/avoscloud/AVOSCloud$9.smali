.class final Lcom/avos/avoscloud/AVOSCloud$9;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVOSCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVOSCloud;->getServerDateInBackground(ZLcom/avos/avoscloud/callback/AVServerDateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/callback/AVServerDateCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/callback/AVServerDateCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 686
    iput-object p1, p0, Lcom/avos/avoscloud/AVOSCloud$9;->val$callback:Lcom/avos/avoscloud/callback/AVServerDateCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 703
    iget-object v0, p0, Lcom/avos/avoscloud/AVOSCloud$9;->val$callback:Lcom/avos/avoscloud/callback/AVServerDateCallback;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/avos/avoscloud/AVOSCloud$9;->val$callback:Lcom/avos/avoscloud/callback/AVServerDateCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/callback/AVServerDateCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 706
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 690
    :try_start_0
    const-class v0, Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->dateFromMap(Ljava/util/Map;)Ljava/util/Date;

    move-result-object v0

    .line 691
    iget-object v1, p0, Lcom/avos/avoscloud/AVOSCloud$9;->val$callback:Lcom/avos/avoscloud/callback/AVServerDateCallback;

    if-eqz v1, :cond_0

    .line 692
    iget-object v1, p0, Lcom/avos/avoscloud/AVOSCloud$9;->val$callback:Lcom/avos/avoscloud/callback/AVServerDateCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/callback/AVServerDateCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 694
    :catch_0
    move-exception v0

    .line 695
    iget-object v1, p0, Lcom/avos/avoscloud/AVOSCloud$9;->val$callback:Lcom/avos/avoscloud/callback/AVServerDateCallback;

    if-eqz v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/avos/avoscloud/AVOSCloud$9;->val$callback:Lcom/avos/avoscloud/callback/AVServerDateCallback;

    invoke-static {v0, v3}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/avos/avoscloud/callback/AVServerDateCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method
