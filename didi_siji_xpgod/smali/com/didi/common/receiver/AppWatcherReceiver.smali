.class public Lcom/didi/common/receiver/AppWatcherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppWatcherReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 21
    new-instance v0, Lcom/didi/common/receiver/AppWatcherReceiver$1;

    invoke-direct {v0, p0}, Lcom/didi/common/receiver/AppWatcherReceiver$1;-><init>(Lcom/didi/common/receiver/AppWatcherReceiver;)V

    invoke-virtual {v0}, Lcom/didi/common/receiver/AppWatcherReceiver$1;->start()Lthread/Job;

    .line 27
    return-void
.end method
