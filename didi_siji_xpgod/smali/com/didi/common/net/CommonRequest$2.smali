.class final Lcom/didi/common/net/CommonRequest$2;
.super Ljava/lang/Object;
.source "CommonRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/net/CommonRequest;->onGetConfig(Lcom/didi/common/model/CommonConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$config:Lcom/didi/common/model/CommonConfig;


# direct methods
.method constructor <init>(Lcom/didi/common/model/CommonConfig;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/didi/common/net/CommonRequest$2;->val$config:Lcom/didi/common/model/CommonConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 453
    const-string v0, "config"

    const-string v1, "\u7ebf\u7a0b\u4fdd\u5b58config"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/didi/common/net/CommonRequest$2;->val$config:Lcom/didi/common/model/CommonConfig;

    invoke-virtual {v0}, Lcom/didi/common/model/CommonConfig;->save()V

    .line 455
    return-void
.end method
