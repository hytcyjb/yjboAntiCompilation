.class Lcom/didi/common/ui/component/CommonDialog$2;
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
    .line 228
    iput-object p1, p0, Lcom/didi/common/ui/component/CommonDialog$2;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog$2;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    #getter for: Lcom/didi/common/ui/component/CommonDialog;->checkedTextView:Landroid/widget/CheckedTextView;
    invoke-static {v0}, Lcom/didi/common/ui/component/CommonDialog;->access$000(Lcom/didi/common/ui/component/CommonDialog;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkbox state :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog$2;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    #getter for: Lcom/didi/common/ui/component/CommonDialog;->checkedTextView:Landroid/widget/CheckedTextView;
    invoke-static {v1}, Lcom/didi/common/ui/component/CommonDialog;->access$000(Lcom/didi/common/ui/component/CommonDialog;)Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 235
    return-void
.end method
