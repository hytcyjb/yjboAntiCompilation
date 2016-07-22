.class Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity$1;
.super Ljava/lang/Object;
.source "CommonVirtualMobileActivity.java"

# interfaces
.implements Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity$1;->this$0:Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnChanged(Lcom/didi/common/ui/component/SwitchBar;Z)V
    .locals 2
    .parameter "wiperSwitch"
    .parameter "checkState"

    .prologue
    .line 77
    if-eqz p2, :cond_1

    .line 78
    const-string v0, "pgxtelpt"

    const-string v1, "[value=true]"

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setVirtualStatus(I)V

    .line 84
    :goto_0
    if-eqz p2, :cond_0

    .line 85
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playMustSound(I)V

    .line 87
    :cond_0
    return-void

    .line 81
    :cond_1
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setVirtualStatus(I)V

    .line 82
    const-string v0, "pgxtelpt"

    const-string v1, "[value=false]"

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
