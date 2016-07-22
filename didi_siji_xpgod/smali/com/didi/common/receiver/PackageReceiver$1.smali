.class Lcom/didi/common/receiver/PackageReceiver$1;
.super Lthread/Job;
.source "PackageReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/receiver/PackageReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/receiver/PackageReceiver;

.field final synthetic val$fAppType:Lcom/didi/common/helper/AppWatcherHelper$AppType;

.field final synthetic val$fPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/common/receiver/PackageReceiver;Ljava/lang/String;Lcom/didi/common/helper/AppWatcherHelper$AppType;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/didi/common/receiver/PackageReceiver$1;->this$0:Lcom/didi/common/receiver/PackageReceiver;

    iput-object p2, p0, Lcom/didi/common/receiver/PackageReceiver$1;->val$fPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/didi/common/receiver/PackageReceiver$1;->val$fAppType:Lcom/didi/common/helper/AppWatcherHelper$AppType;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/didi/common/receiver/PackageReceiver$1;->val$fPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/common/receiver/PackageReceiver$1;->val$fAppType:Lcom/didi/common/helper/AppWatcherHelper$AppType;

    invoke-static {v0, v1}, Lcom/didi/common/helper/AppWatcherHelper;->uploadAppInfo(Ljava/lang/String;Lcom/didi/common/helper/AppWatcherHelper$AppType;)V

    .line 60
    return-void
.end method
