.class Lcom/didi/ddrive/ui/fragment/DDriveResendFragment$4;
.super Ljava/lang/Object;
.source "DDriveResendFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment$4;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 235
    const-string v0, "pdjxrecalldj_00_ck"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 238
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearAllDrivers()V

    .line 239
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->endBusinessMap()V

    .line 240
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 241
    return-void
.end method
