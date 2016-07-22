.class Lcom/avos/avoscloud/PaasClient$2;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "PaasClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;J)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/PaasClient;

.field final synthetic val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

.field final synthetic val$header:Ljava/util/Map;

.field final synthetic val$parameters:Lcom/avos/avoscloud/AVRequestParams;

.field final synthetic val$policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

.field final synthetic val$relativePath:Ljava/lang/String;

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/PaasClient;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient$2;->this$0:Lcom/avos/avoscloud/PaasClient;

    iput-object p2, p0, Lcom/avos/avoscloud/PaasClient$2;->val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

    iput-object p3, p0, Lcom/avos/avoscloud/PaasClient$2;->val$relativePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/avos/avoscloud/PaasClient$2;->val$parameters:Lcom/avos/avoscloud/AVRequestParams;

    iput-boolean p5, p0, Lcom/avos/avoscloud/PaasClient$2;->val$sync:Z

    iput-object p6, p0, Lcom/avos/avoscloud/PaasClient$2;->val$header:Ljava/util/Map;

    iput-object p7, p0, Lcom/avos/avoscloud/PaasClient$2;->val$policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$2;->this$0:Lcom/avos/avoscloud/PaasClient;

    iget-object v1, p0, Lcom/avos/avoscloud/PaasClient$2;->val$relativePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/PaasClient$2;->val$parameters:Lcom/avos/avoscloud/AVRequestParams;

    iget-boolean v3, p0, Lcom/avos/avoscloud/PaasClient$2;->val$sync:Z

    iget-object v4, p0, Lcom/avos/avoscloud/PaasClient$2;->val$header:Ljava/util/Map;

    iget-object v5, p0, Lcom/avos/avoscloud/PaasClient$2;->val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

    iget-object v6, p0, Lcom/avos/avoscloud/PaasClient$2;->val$policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    .line 332
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$2;->val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    .line 327
    return-void
.end method
