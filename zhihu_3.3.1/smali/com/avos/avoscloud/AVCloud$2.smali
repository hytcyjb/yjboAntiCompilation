.class final Lcom/avos/avoscloud/AVCloud$2;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVCloud;->callFunctionInBackground(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/FunctionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/FunctionCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/FunctionCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/avos/avoscloud/AVCloud$2;->val$callback:Lcom/avos/avoscloud/FunctionCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/avos/avoscloud/AVCloud$2;->val$callback:Lcom/avos/avoscloud/FunctionCallback;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/avos/avoscloud/AVCloud$2;->val$callback:Lcom/avos/avoscloud/FunctionCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/FunctionCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 100
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/avos/avoscloud/AVCloud$2;->val$callback:Lcom/avos/avoscloud/FunctionCallback;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/avos/avoscloud/AVCloud$2;->val$callback:Lcom/avos/avoscloud/FunctionCallback;

    invoke-static {p1}, Lcom/avos/avoscloud/AVCloud;->convertCloudResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/FunctionCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 93
    :cond_0
    return-void
.end method
