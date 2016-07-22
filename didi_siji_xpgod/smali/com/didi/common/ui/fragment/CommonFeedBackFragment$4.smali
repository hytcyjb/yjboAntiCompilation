.class Lcom/didi/common/ui/fragment/CommonFeedBackFragment$4;
.super Ljava/lang/Object;
.source "CommonFeedBackFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonFeedBackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonFeedBackFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonFeedBackFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonFeedBackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 207
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonFeedBackFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->etFeedback:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->access$200(Lcom/didi/common/ui/fragment/CommonFeedBackFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, feedback:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonFeedBackFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->tvSubmit:Landroid/widget/Button;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->access$000(Lcom/didi/common/ui/fragment/CommonFeedBackFragment;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonFeedBackFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->tvSubmit:Landroid/widget/Button;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->access$000(Lcom/didi/common/ui/fragment/CommonFeedBackFragment;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 199
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 203
    return-void
.end method
