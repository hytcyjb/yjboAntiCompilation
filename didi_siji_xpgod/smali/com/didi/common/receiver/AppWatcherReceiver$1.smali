.class Lcom/didi/common/receiver/AppWatcherReceiver$1;
.super Lthread/Job;
.source "AppWatcherReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/receiver/AppWatcherReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/receiver/AppWatcherReceiver;


# direct methods
.method constructor <init>(Lcom/didi/common/receiver/AppWatcherReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/didi/common/receiver/AppWatcherReceiver$1;->this$0:Lcom/didi/common/receiver/AppWatcherReceiver;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected run()V
    .locals 0

    .prologue
    .line 24
    invoke-static {}, Lcom/didi/common/helper/AppWatcherHelper;->collectAndUploadAppInfo()V

    .line 25
    return-void
.end method
