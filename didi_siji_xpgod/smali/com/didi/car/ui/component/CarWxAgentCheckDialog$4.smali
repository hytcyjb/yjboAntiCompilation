.class Lcom/didi/car/ui/component/CarWxAgentCheckDialog$4;
.super Ljava/lang/Object;
.source "CarWxAgentCheckDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/component/CarWxAgentCheckDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/component/CarWxAgentCheckDialog;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/CarWxAgentCheckDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog$4;->this$0:Lcom/didi/car/ui/component/CarWxAgentCheckDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog$4;->this$0:Lcom/didi/car/ui/component/CarWxAgentCheckDialog;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->dismiss()V

    .line 121
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog$4;->this$0:Lcom/didi/car/ui/component/CarWxAgentCheckDialog;

    #getter for: Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->access$300(Lcom/didi/car/ui/component/CarWxAgentCheckDialog;)Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog$4;->this$0:Lcom/didi/car/ui/component/CarWxAgentCheckDialog;

    #getter for: Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->access$300(Lcom/didi/car/ui/component/CarWxAgentCheckDialog;)Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->submit()V

    .line 123
    :cond_0
    return-void
.end method
