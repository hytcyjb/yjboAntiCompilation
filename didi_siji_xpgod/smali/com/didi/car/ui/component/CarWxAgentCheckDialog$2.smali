.class Lcom/didi/car/ui/component/CarWxAgentCheckDialog$2;
.super Ljava/lang/Object;
.source "CarWxAgentCheckDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->setDialog(Ljava/lang/String;Lcom/didi/car/model/CarWxAgentFailReason;)V
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
    .line 84
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog$2;->this$0:Lcom/didi/car/ui/component/CarWxAgentCheckDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 87
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog$2;->this$0:Lcom/didi/car/ui/component/CarWxAgentCheckDialog;

    #getter for: Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->txtCheckTip:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->access$200(Lcom/didi/car/ui/component/CarWxAgentCheckDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 88
    .local v0, line:I
    if-le v0, v2, :cond_0

    .line 89
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog$2;->this$0:Lcom/didi/car/ui/component/CarWxAgentCheckDialog;

    #getter for: Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->txtCheckTip:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->access$200(Lcom/didi/car/ui/component/CarWxAgentCheckDialog;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog$2;->this$0:Lcom/didi/car/ui/component/CarWxAgentCheckDialog;

    #getter for: Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->txtCheckTip:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->access$200(Lcom/didi/car/ui/component/CarWxAgentCheckDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method
