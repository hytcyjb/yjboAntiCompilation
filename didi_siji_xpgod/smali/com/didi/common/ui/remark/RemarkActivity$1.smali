.class Lcom/didi/common/ui/remark/RemarkActivity$1;
.super Ljava/lang/Object;
.source "RemarkActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/remark/RemarkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private before:I

.field private count:I

.field private start:I

.field final synthetic this$0:Lcom/didi/common/ui/remark/RemarkActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/remark/RemarkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/didi/common/ui/remark/RemarkActivity$1;->this$0:Lcom/didi/common/ui/remark/RemarkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    .line 70
    iget-object v6, p0, Lcom/didi/common/ui/remark/RemarkActivity$1;->this$0:Lcom/didi/common/ui/remark/RemarkActivity;

    #getter for: Lcom/didi/common/ui/remark/RemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;
    invoke-static {v6}, Lcom/didi/common/ui/remark/RemarkActivity;->access$100(Lcom/didi/common/ui/remark/RemarkActivity;)Lcom/didi/common/ui/component/SearchBar;

    move-result-object v6

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v7

    rsub-int/lit8 v7, v7, 0x14

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/didi/common/ui/component/SearchBar;->setCountText(Ljava/lang/String;)V

    .line 72
    iget-object v6, p0, Lcom/didi/common/ui/remark/RemarkActivity$1;->this$0:Lcom/didi/common/ui/remark/RemarkActivity;

    #getter for: Lcom/didi/common/ui/remark/RemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;
    invoke-static {v6}, Lcom/didi/common/ui/remark/RemarkActivity;->access$100(Lcom/didi/common/ui/remark/RemarkActivity;)Lcom/didi/common/ui/component/SearchBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/common/ui/component/SearchBar;->getInput()Lx/EditText;

    move-result-object v6

    invoke-virtual {v6, p0}, Lx/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, string:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/didi/common/util/TextUtil;->trimInner(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, text:Ljava/lang/String;
    iget-object v6, p0, Lcom/didi/common/ui/remark/RemarkActivity$1;->this$0:Lcom/didi/common/ui/remark/RemarkActivity;

    #getter for: Lcom/didi/common/ui/remark/RemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;
    invoke-static {v6}, Lcom/didi/common/ui/remark/RemarkActivity;->access$100(Lcom/didi/common/ui/remark/RemarkActivity;)Lcom/didi/common/ui/component/SearchBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/common/ui/component/SearchBar;->getInput()Lx/EditText;

    move-result-object v6

    invoke-virtual {v6, v4}, Lx/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget v6, p0, Lcom/didi/common/ui/remark/RemarkActivity$1;->count:I

    iget v7, p0, Lcom/didi/common/ui/remark/RemarkActivity$1;->before:I

    sub-int v1, v6, v7

    .line 77
    .local v1, offset:I
    iget v6, p0, Lcom/didi/common/ui/remark/RemarkActivity$1;->start:I

    if-lez v1, :cond_5

    .end local v1           #offset:I
    :goto_0
    add-int v2, v6, v1

    .line 78
    .local v2, selectionInedx:I
    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, p0, Lcom/didi/common/ui/remark/RemarkActivity$1;->start:I

    if-nez v6, :cond_0

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 80
    const/4 v2, 0x0

    .line 81
    :cond_0
    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->length(Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, length:I
    iget-object v6, p0, Lcom/didi/common/ui/remark/RemarkActivity$1;->this$0:Lcom/didi/common/ui/remark/RemarkActivity;

    #getter for: Lcom/didi/common/ui/remark/RemarkActivity;->isAddFromTag:Z
    invoke-static {v6}, Lcom/didi/common/ui/remark/RemarkActivity;->access$200(Lcom/didi/common/ui/remark/RemarkActivity;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 83
    move v2, v0

    .line 84
    :cond_1
    if-gez v2, :cond_2

    .line 85
    const/4 v2, 0x0

    .line 86
    :cond_2
    if-le v2, v0, :cond_3

    .line 87
    move v2, v0

    .line 88
    :cond_3
    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 89
    iget-object v6, p0, Lcom/didi/common/ui/remark/RemarkActivity$1;->this$0:Lcom/didi/common/ui/remark/RemarkActivity;

    #getter for: Lcom/didi/common/ui/remark/RemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;
    invoke-static {v6}, Lcom/didi/common/ui/remark/RemarkActivity;->access$100(Lcom/didi/common/ui/remark/RemarkActivity;)Lcom/didi/common/ui/component/SearchBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/common/ui/component/SearchBar;->getInput()Lx/EditText;

    move-result-object v6

    invoke-virtual {v6, v2}, Lx/EditText;->setSelection(I)V

    .line 91
    :cond_4
    iget-object v6, p0, Lcom/didi/common/ui/remark/RemarkActivity$1;->this$0:Lcom/didi/common/ui/remark/RemarkActivity;

    #getter for: Lcom/didi/common/ui/remark/RemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;
    invoke-static {v6}, Lcom/didi/common/ui/remark/RemarkActivity;->access$100(Lcom/didi/common/ui/remark/RemarkActivity;)Lcom/didi/common/ui/component/SearchBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/common/ui/component/SearchBar;->getInput()Lx/EditText;

    move-result-object v6

    invoke-virtual {v6, p0}, Lx/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    iget-object v6, p0, Lcom/didi/common/ui/remark/RemarkActivity$1;->this$0:Lcom/didi/common/ui/remark/RemarkActivity;

    #setter for: Lcom/didi/common/ui/remark/RemarkActivity;->isAddFromTag:Z
    invoke-static {v6, v5}, Lcom/didi/common/ui/remark/RemarkActivity;->access$202(Lcom/didi/common/ui/remark/RemarkActivity;Z)Z

    .line 93
    return-void

    .end local v0           #length:I
    .end local v2           #selectionInedx:I
    .restart local v1       #offset:I
    :cond_5
    move v1, v5

    .line 77
    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 66
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkActivity$1;->this$0:Lcom/didi/common/ui/remark/RemarkActivity;

    #calls: Lcom/didi/common/ui/remark/RemarkActivity;->updateButtons()V
    invoke-static {v0}, Lcom/didi/common/ui/remark/RemarkActivity;->access$000(Lcom/didi/common/ui/remark/RemarkActivity;)V

    .line 58
    iput p2, p0, Lcom/didi/common/ui/remark/RemarkActivity$1;->start:I

    .line 59
    iput p4, p0, Lcom/didi/common/ui/remark/RemarkActivity$1;->count:I

    .line 60
    iput p3, p0, Lcom/didi/common/ui/remark/RemarkActivity$1;->before:I

    .line 61
    return-void
.end method
