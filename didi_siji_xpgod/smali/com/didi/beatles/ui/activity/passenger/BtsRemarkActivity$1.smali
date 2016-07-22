.class Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$1;
.super Ljava/lang/Object;
.source "BtsRemarkActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private before:I

.field private count:I

.field private start:I

.field final synthetic this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$1;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    .line 62
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$1;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;
    invoke-static {v6}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;)Lcom/didi/common/ui/component/SearchBar;

    move-result-object v6

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v7

    rsub-int/lit8 v7, v7, 0x14

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/didi/common/ui/component/SearchBar;->setCountText(Ljava/lang/String;)V

    .line 63
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$1;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;
    invoke-static {v6}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;)Lcom/didi/common/ui/component/SearchBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/common/ui/component/SearchBar;->getInput()Lx/EditText;

    move-result-object v6

    invoke-virtual {v6, p0}, Lx/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, string:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/didi/common/util/TextUtil;->trimInner(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, text:Ljava/lang/String;
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$1;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;
    invoke-static {v6}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;)Lcom/didi/common/ui/component/SearchBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/common/ui/component/SearchBar;->getInput()Lx/EditText;

    move-result-object v6

    invoke-virtual {v6, v4}, Lx/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$1;->count:I

    iget v7, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$1;->before:I

    sub-int v1, v6, v7

    .line 68
    .local v1, offset:I
    iget v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$1;->start:I

    if-lez v1, :cond_5

    .end local v1           #offset:I
    :goto_0
    add-int v2, v6, v1

    .line 69
    .local v2, selectionInedx:I
    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$1;->start:I

    if-nez v6, :cond_0

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 70
    const/4 v2, 0x0

    .line 71
    :cond_0
    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->length(Ljava/lang/String;)I

    move-result v0

    .line 72
    .local v0, length:I
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$1;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->isAddFromTag:Z
    invoke-static {v6}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->access$200(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 73
    move v2, v0

    .line 74
    :cond_1
    if-gez v2, :cond_2

    .line 75
    const/4 v2, 0x0

    .line 76
    :cond_2
    if-le v2, v0, :cond_3

    .line 77
    move v2, v0

    .line 78
    :cond_3
    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 79
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$1;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;
    invoke-static {v6}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;)Lcom/didi/common/ui/component/SearchBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/common/ui/component/SearchBar;->getInput()Lx/EditText;

    move-result-object v6

    invoke-virtual {v6, v2}, Lx/EditText;->setSelection(I)V

    .line 81
    :cond_4
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$1;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;
    invoke-static {v6}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;)Lcom/didi/common/ui/component/SearchBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/common/ui/component/SearchBar;->getInput()Lx/EditText;

    move-result-object v6

    invoke-virtual {v6, p0}, Lx/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 82
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$1;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;

    #setter for: Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->isAddFromTag:Z
    invoke-static {v6, v5}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->access$202(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;Z)Z

    .line 83
    return-void

    .end local v0           #length:I
    .end local v2           #selectionInedx:I
    .restart local v1       #offset:I
    :cond_5
    move v1, v5

    .line 68
    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 58
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$1;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->updateButtons()V
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->access$000(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;)V

    .line 51
    iput p2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$1;->start:I

    .line 52
    iput p4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$1;->count:I

    .line 53
    iput p3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$1;->before:I

    .line 54
    return-void
.end method
