.class Lcom/didi/common/base/BaseApplication$1;
.super Landroid/os/Handler;
.source "BaseApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/base/BaseApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/base/BaseApplication;


# direct methods
.method constructor <init>(Lcom/didi/common/base/BaseApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/didi/common/base/BaseApplication$1;->this$0:Lcom/didi/common/base/BaseApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 31
    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    .line 32
    sget-boolean v0, Lcom/didi/common/util/Constant;->isPreRom:Z

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->access$000()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    sget-object v1, Lcom/didi/common/util/Constant;->BUGLY_APPID:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 34
    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/CrashReport;->setUserId(Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method
