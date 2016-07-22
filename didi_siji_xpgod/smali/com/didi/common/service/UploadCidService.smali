.class public Lcom/didi/common/service/UploadCidService;
.super Landroid/app/IntentService;
.source "UploadCidService.java"


# static fields
.field public static UPLOAD_ACTION:Ljava/lang/String;

.field public static UPLOAD_MID_ACTION:Ljava/lang/String;

.field public static UPLOAD_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "UPLOAD_TYPE"

    sput-object v0, Lcom/didi/common/service/UploadCidService;->UPLOAD_TYPE:Ljava/lang/String;

    .line 20
    const-string v0, "upload_cid_action"

    sput-object v0, Lcom/didi/common/service/UploadCidService;->UPLOAD_ACTION:Ljava/lang/String;

    .line 21
    const-string v0, "upload_mid_action"

    sput-object v0, Lcom/didi/common/service/UploadCidService;->UPLOAD_MID_ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "UploadCidService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 27
    sget-object v2, Lcom/didi/common/service/UploadCidService;->UPLOAD_TYPE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, action:Ljava/lang/String;
    sget-object v2, Lcom/didi/common/service/UploadCidService;->UPLOAD_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    .local v1, handler:Landroid/os/Handler;
    new-instance v2, Lcom/didi/common/service/UploadCidService$1;

    invoke-direct {v2, p0}, Lcom/didi/common/service/UploadCidService$1;-><init>(Lcom/didi/common/service/UploadCidService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    .end local v1           #handler:Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    sget-object v2, Lcom/didi/common/service/UploadCidService;->UPLOAD_MID_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    .restart local v1       #handler:Landroid/os/Handler;
    new-instance v2, Lcom/didi/common/service/UploadCidService$2;

    invoke-direct {v2, p0}, Lcom/didi/common/service/UploadCidService$2;-><init>(Lcom/didi/common/service/UploadCidService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
