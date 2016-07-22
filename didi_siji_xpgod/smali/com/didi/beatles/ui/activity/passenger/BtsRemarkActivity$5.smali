.class Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$5;
.super Ljava/lang/Object;
.source "BtsRemarkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->addTag(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$5;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;

    iput-object p2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$5;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 178
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$5;->val$tag:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$5;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;)Lcom/didi/common/ui/component/SearchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/ui/component/SearchBar;->getInputText()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, text:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$5;->val$tag:Ljava/lang/String;

    .line 182
    :goto_1
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$5;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;

    const/4 v2, 0x1

    #setter for: Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->isAddFromTag:Z
    invoke-static {v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->access$202(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;Z)Z

    .line 183
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$5;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;)Lcom/didi/common/ui/component/SearchBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/common/ui/component/SearchBar;->setInputText(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$5;->val$tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v1, ","

    goto :goto_2
.end method
