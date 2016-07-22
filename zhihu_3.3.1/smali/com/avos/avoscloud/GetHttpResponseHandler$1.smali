.class Lcom/avos/avoscloud/GetHttpResponseHandler$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "GetHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/GetHttpResponseHandler;->tryLastModifyCache(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/GetHttpResponseHandler;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/GetHttpResponseHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/avos/avoscloud/GetHttpResponseHandler$1;->this$0:Lcom/avos/avoscloud/GetHttpResponseHandler;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/avos/avoscloud/GetHttpResponseHandler$1;->this$0:Lcom/avos/avoscloud/GetHttpResponseHandler;

    #getter for: Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->access$000(Lcom/avos/avoscloud/GetHttpResponseHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient;->removeLastModifyForUrl(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/avos/avoscloud/GetHttpResponseHandler$1;->this$0:Lcom/avos/avoscloud/GetHttpResponseHandler;

    invoke-virtual {v0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/avos/avoscloud/GetHttpResponseHandler$1;->this$0:Lcom/avos/avoscloud/GetHttpResponseHandler;

    invoke-virtual {v0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    .line 48
    return-void
.end method
