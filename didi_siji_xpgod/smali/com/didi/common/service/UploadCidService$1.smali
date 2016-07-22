.class Lcom/didi/common/service/UploadCidService$1;
.super Ljava/lang/Object;
.source "UploadCidService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/service/UploadCidService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/service/UploadCidService;


# direct methods
.method constructor <init>(Lcom/didi/common/service/UploadCidService;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/didi/common/service/UploadCidService$1;->this$0:Lcom/didi/common/service/UploadCidService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getClientIdString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/taxi/net/TaxiRequest;->uploadCid(Ljava/lang/String;)V

    .line 34
    return-void
.end method
