.class Lcom/didi/car/ui/component/CarWxAgentDialog$5;
.super Ljava/lang/Object;
.source "CarWxAgentDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/component/CarWxAgentDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/component/CarWxAgentDialog;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/CarWxAgentDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWxAgentDialog$5;->this$0:Lcom/didi/car/ui/component/CarWxAgentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog$5;->this$0:Lcom/didi/car/ui/component/CarWxAgentDialog;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWxAgentDialog;->dismiss()V

    .line 127
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog$5;->this$0:Lcom/didi/car/ui/component/CarWxAgentDialog;

    #getter for: Lcom/didi/car/ui/component/CarWxAgentDialog;->listener:Lcom/didi/car/ui/component/CarWxAgentDialog$ImgDialogListener;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarWxAgentDialog;->access$000(Lcom/didi/car/ui/component/CarWxAgentDialog;)Lcom/didi/car/ui/component/CarWxAgentDialog$ImgDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog$5;->this$0:Lcom/didi/car/ui/component/CarWxAgentDialog;

    #getter for: Lcom/didi/car/ui/component/CarWxAgentDialog;->listener:Lcom/didi/car/ui/component/CarWxAgentDialog$ImgDialogListener;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarWxAgentDialog;->access$000(Lcom/didi/car/ui/component/CarWxAgentDialog;)Lcom/didi/car/ui/component/CarWxAgentDialog$ImgDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWxAgentDialog$ImgDialogListener;->onConfirm()V

    .line 129
    :cond_0
    return-void
.end method
