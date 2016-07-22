.class Lcom/didi/common/ui/fragment/SetupFragment$8;
.super Ljava/lang/Object;
.source "SetupFragment.java"

# interfaces
.implements Lcom/didi/common/download/UpdateHelper$UpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/SetupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/SetupFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/SetupFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/didi/common/ui/fragment/SetupFragment$8;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 495
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setFirstBoot(Z)V

    .line 496
    const-string v0, "appVersion4="

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 497
    invoke-static {}, Lcom/didi/common/base/DidiApp;->checkAppVersion()V

    .line 498
    return-void
.end method
