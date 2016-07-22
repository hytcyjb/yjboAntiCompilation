.class Lcom/didi/common/ui/component/CommonDialog$5;
.super Ljava/lang/Object;
.source "CommonDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/component/CommonDialog;->handleTextViewGravity()V
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
    .line 525
    iput-object p1, p0, Lcom/didi/common/ui/component/CommonDialog$5;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 528
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog$5;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    #getter for: Lcom/didi/common/ui/component/CommonDialog;->contentOnlyTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/common/ui/component/CommonDialog;->access$400(Lcom/didi/common/ui/component/CommonDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 529
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog$5;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    #getter for: Lcom/didi/common/ui/component/CommonDialog;->contentOnlyTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/common/ui/component/CommonDialog;->access$400(Lcom/didi/common/ui/component/CommonDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 533
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog$5;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    #getter for: Lcom/didi/common/ui/component/CommonDialog;->contentOnlyTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/common/ui/component/CommonDialog;->access$400(Lcom/didi/common/ui/component/CommonDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method
