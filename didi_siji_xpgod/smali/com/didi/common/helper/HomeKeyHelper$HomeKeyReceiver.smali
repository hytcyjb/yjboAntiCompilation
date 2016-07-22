.class public final Lcom/didi/common/helper/HomeKeyHelper$HomeKeyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeKeyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/helper/HomeKeyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HomeKeyReceiver"
.end annotation


# instance fields
.field private final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

.field private final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 63
    const-string v0, "reason"

    iput-object v0, p0, Lcom/didi/common/helper/HomeKeyHelper$HomeKeyReceiver;->SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

    .line 64
    const-string v0, "homekey"

    iput-object v0, p0, Lcom/didi/common/helper/HomeKeyHelper$HomeKeyReceiver;->SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, reason:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "homekey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-static {p1}, Lcom/didi/common/helper/HomeKeyHelper;->onHomeKeyDown(Landroid/content/Context;)V

    .line 75
    .end local v1           #reason:Ljava/lang/String;
    :cond_0
    return-void
.end method
