.class Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$6;
.super Ljava/lang/Object;
.source "CarPayWxAgentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->initPayResultCheckAlarm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$6;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    iput-object p2, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$6;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$6;->val$intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$6;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mCarPayParams:Lcom/didi/car/model/CarPayParams;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$800(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Lcom/didi/car/model/CarPayParams;

    move-result-object v1

    iget v1, v1, Lcom/didi/car/model/CarPayParams;->pollingFreguency:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/didi/common/alarm/CommonAlarmManager;->setRepeatingAlarm(Landroid/content/Intent;J)V

    .line 270
    return-void
.end method
