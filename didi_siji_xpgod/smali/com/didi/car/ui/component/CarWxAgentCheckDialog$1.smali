.class Lcom/didi/car/ui/component/CarWxAgentCheckDialog$1;
.super Ljava/lang/Object;
.source "CarWxAgentCheckDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->init()V
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
    .line 49
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog$1;->this$0:Lcom/didi/car/ui/component/CarWxAgentCheckDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog$1;->this$0:Lcom/didi/car/ui/component/CarWxAgentCheckDialog;

    #getter for: Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->mReason:Lcom/didi/car/model/CarWxAgentFailReason;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->access$000(Lcom/didi/car/ui/component/CarWxAgentCheckDialog;)Lcom/didi/car/model/CarWxAgentFailReason;

    move-result-object v0

    iget-boolean v0, v0, Lcom/didi/car/model/CarWxAgentFailReason;->checkboxSelected:Z

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog$1;->this$0:Lcom/didi/car/ui/component/CarWxAgentCheckDialog;

    #getter for: Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->mReason:Lcom/didi/car/model/CarWxAgentFailReason;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->access$000(Lcom/didi/car/ui/component/CarWxAgentCheckDialog;)Lcom/didi/car/model/CarWxAgentFailReason;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/didi/car/model/CarWxAgentFailReason;->checkboxSelected:Z

    .line 54
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog$1;->this$0:Lcom/didi/car/ui/component/CarWxAgentCheckDialog;

    #getter for: Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->imgCheckbox:Lx/ImageView;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->access$100(Lcom/didi/car/ui/component/CarWxAgentCheckDialog;)Lx/ImageView;

    move-result-object v0

    const v1, 0x7f02016c

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog$1;->this$0:Lcom/didi/car/ui/component/CarWxAgentCheckDialog;

    #getter for: Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->mReason:Lcom/didi/car/model/CarWxAgentFailReason;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->access$000(Lcom/didi/car/ui/component/CarWxAgentCheckDialog;)Lcom/didi/car/model/CarWxAgentFailReason;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/didi/car/model/CarWxAgentFailReason;->checkboxSelected:Z

    .line 57
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog$1;->this$0:Lcom/didi/car/ui/component/CarWxAgentCheckDialog;

    #getter for: Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->imgCheckbox:Lx/ImageView;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->access$100(Lcom/didi/car/ui/component/CarWxAgentCheckDialog;)Lx/ImageView;

    move-result-object v0

    const v1, 0x7f02016d

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
