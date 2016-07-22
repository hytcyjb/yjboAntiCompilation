.class Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$4;
.super Ljava/lang/Object;
.source "CarPayWxAgentFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$4;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnChanged(Lcom/didi/common/ui/component/SwitchBar;Z)V
    .locals 1
    .parameter "wiperSwitch"
    .parameter "checkState"

    .prologue
    .line 195
    if-eqz p2, :cond_0

    .line 196
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$4;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #calls: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->showBindConfirmDialog()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$600(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$4;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #calls: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->showConfirmDialog()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$700(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V

    goto :goto_0
.end method
