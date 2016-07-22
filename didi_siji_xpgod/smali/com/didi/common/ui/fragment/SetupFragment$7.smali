.class Lcom/didi/common/ui/fragment/SetupFragment$7;
.super Ljava/lang/Object;
.source "SetupFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;


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
    .line 466
    iput-object p1, p0, Lcom/didi/common/ui/fragment/SetupFragment$7;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnChanged(Lcom/didi/common/ui/component/SwitchBar;Z)V
    .locals 2
    .parameter "wiperSwitch"
    .parameter "checkState"

    .prologue
    .line 470
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/didi/common/config/Preferences;->setSoundsSwitch(Z)V

    .line 471
    if-eqz p2, :cond_0

    .line 472
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playMustSound(I)V

    .line 474
    :cond_0
    return-void
.end method
