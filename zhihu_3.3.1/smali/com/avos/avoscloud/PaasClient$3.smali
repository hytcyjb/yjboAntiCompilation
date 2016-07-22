.class Lcom/avos/avoscloud/PaasClient$3;
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

.field final synthetic val$absolutURLString:Ljava/lang/String;

.field final synthetic val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

.field final synthetic val$lastModifyTime:Ljava/lang/String;

.field final synthetic val$maxAgeInMilliseconds:J


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/PaasClient;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient$3;->this$0:Lcom/avos/avoscloud/PaasClient;

    iput-object p2, p0, Lcom/avos/avoscloud/PaasClient$3;->val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

    iput-object p3, p0, Lcom/avos/avoscloud/PaasClient$3;->val$absolutURLString:Ljava/lang/String;

    iput-object p4, p0, Lcom/avos/avoscloud/PaasClient$3;->val$lastModifyTime:Ljava/lang/String;

    iput-wide p5, p0, Lcom/avos/avoscloud/PaasClient$3;->val$maxAgeInMilliseconds:J

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 344
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/avos/avoscloud/PaasClient$3;->val$absolutURLString:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/PaasClient$3;->val$lastModifyTime:Ljava/lang/String;

    iget-wide v4, p0, Lcom/avos/avoscloud/PaasClient$3;->val$maxAgeInMilliseconds:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/avos/avoscloud/AVCacheManager;->hasValidCache(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/avos/avoscloud/PaasClient$3;->val$absolutURLString:Ljava/lang/String;

    iget-wide v2, p0, Lcom/avos/avoscloud/PaasClient$3;->val$maxAgeInMilliseconds:J

    iget-object v4, p0, Lcom/avos/avoscloud/PaasClient$3;->val$lastModifyTime:Ljava/lang/String;

    iget-object v5, p0, Lcom/avos/avoscloud/PaasClient$3;->val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVCacheManager;->get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$3;->val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 339
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$3;->val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    .line 340
    return-void
.end method
