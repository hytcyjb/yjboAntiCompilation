.class Lcom/didi/common/ui/component/CommonDialog$6;
.super Ljava/lang/Object;
.source "CommonDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/component/CommonDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/component/CommonDialog;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/component/CommonDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 614
    iput-object p1, p0, Lcom/didi/common/ui/component/CommonDialog$6;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog$6;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->dismiss()V

    .line 619
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog$6;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    #getter for: Lcom/didi/common/ui/component/CommonDialog;->listener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;
    invoke-static {v0}, Lcom/didi/common/ui/component/CommonDialog;->access$500(Lcom/didi/common/ui/component/CommonDialog;)Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080226

    if-ne v0, v1, :cond_2

    .line 623
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog$6;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    #getter for: Lcom/didi/common/ui/component/CommonDialog;->listener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;
    invoke-static {v0}, Lcom/didi/common/ui/component/CommonDialog;->access$500(Lcom/didi/common/ui/component/CommonDialog;)Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;->submitOnly()V

    goto :goto_0

    .line 624
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0802f5

    if-ne v0, v1, :cond_3

    .line 625
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog$6;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    #getter for: Lcom/didi/common/ui/component/CommonDialog;->listener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;
    invoke-static {v0}, Lcom/didi/common/ui/component/CommonDialog;->access$500(Lcom/didi/common/ui/component/CommonDialog;)Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;->submit()V

    goto :goto_0

    .line 626
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0802f4

    if-ne v0, v1, :cond_4

    .line 627
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog$6;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    #getter for: Lcom/didi/common/ui/component/CommonDialog;->listener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;
    invoke-static {v0}, Lcom/didi/common/ui/component/CommonDialog;->access$500(Lcom/didi/common/ui/component/CommonDialog;)Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;->cancel()V

    goto :goto_0

    .line 628
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0802f7

    if-ne v0, v1, :cond_5

    .line 629
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog$6;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    #getter for: Lcom/didi/common/ui/component/CommonDialog;->listener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;
    invoke-static {v0}, Lcom/didi/common/ui/component/CommonDialog;->access$500(Lcom/didi/common/ui/component/CommonDialog;)Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;->firstClick()V

    goto :goto_0

    .line 630
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0802f8

    if-ne v0, v1, :cond_6

    .line 631
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog$6;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    #getter for: Lcom/didi/common/ui/component/CommonDialog;->listener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;
    invoke-static {v0}, Lcom/didi/common/ui/component/CommonDialog;->access$500(Lcom/didi/common/ui/component/CommonDialog;)Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;->secondClick()V

    goto :goto_0

    .line 632
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0802f9

    if-ne v0, v1, :cond_0

    .line 633
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog$6;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    #getter for: Lcom/didi/common/ui/component/CommonDialog;->listener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;
    invoke-static {v0}, Lcom/didi/common/ui/component/CommonDialog;->access$500(Lcom/didi/common/ui/component/CommonDialog;)Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;->thirdClick()V

    goto :goto_0
.end method
