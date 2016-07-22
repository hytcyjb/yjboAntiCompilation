.class public Lcom/didi/common/search/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"

# interfaces
.implements Lcom/didi/frame/search/SearchSugView$AddressListener;


# instance fields
.field private mSearchView:Lcom/didi/frame/search/SearchSugView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private show(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 44
    const-string v5, "search_extra_type"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 45
    .local v3, type:I
    const-string v5, "search_extra_order_type"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 46
    .local v2, flag:I
    const-string v5, "search_extra_cityname"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, cityName:Ljava/lang/String;
    const-string v5, "search_extra_cityid"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, cityId:Ljava/lang/String;
    iget-object v5, p0, Lcom/didi/common/search/SearchActivity;->mSearchView:Lcom/didi/frame/search/SearchSugView;

    invoke-virtual {v5, v3}, Lcom/didi/frame/search/SearchSugView;->setSearchType(I)V

    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 50
    iget-object v5, p0, Lcom/didi/common/search/SearchActivity;->mSearchView:Lcom/didi/frame/search/SearchSugView;

    invoke-virtual {v5, v1}, Lcom/didi/frame/search/SearchSugView;->setCityName(Ljava/lang/String;)V

    .line 51
    iget-object v5, p0, Lcom/didi/common/search/SearchActivity;->mSearchView:Lcom/didi/frame/search/SearchSugView;

    invoke-virtual {v5, v0}, Lcom/didi/frame/search/SearchSugView;->setCityId(Ljava/lang/String;)V

    .line 53
    :cond_0
    iget-object v5, p0, Lcom/didi/common/search/SearchActivity;->mSearchView:Lcom/didi/frame/search/SearchSugView;

    if-nez v2, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-virtual {v5, v4}, Lcom/didi/frame/search/SearchSugView;->setIsRealtime(Z)V

    .line 54
    iget-object v4, p0, Lcom/didi/common/search/SearchActivity;->mSearchView:Lcom/didi/frame/search/SearchSugView;

    invoke-virtual {v4}, Lcom/didi/frame/search/SearchSugView;->preShowData()V

    .line 55
    iget-object v4, p0, Lcom/didi/common/search/SearchActivity;->mSearchView:Lcom/didi/frame/search/SearchSugView;

    invoke-virtual {v4, p0}, Lcom/didi/frame/search/SearchSugView;->setListener(Lcom/didi/frame/search/SearchSugView$AddressListener;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/common/search/SearchActivity;->mSearchView:Lcom/didi/frame/search/SearchSugView;

    invoke-virtual {v0}, Lcom/didi/frame/search/SearchSugView;->shouldBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/didi/common/search/SearchActivity;->mSearchView:Lcom/didi/frame/search/SearchSugView;

    invoke-virtual {v0}, Lcom/didi/frame/search/SearchSugView;->showNormal()V

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/didi/common/search/SearchActivity;->finish()V

    .line 71
    const v0, 0x7f040019

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/didi/common/search/SearchActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/async/task/ActivityController;->addAcitivty(Landroid/app/Activity;)V

    .line 24
    const v0, 0x7f04001b

    const v1, 0x7f04001c

    invoke-virtual {p0, v0, v1}, Lcom/didi/common/search/SearchActivity;->overridePendingTransition(II)V

    .line 25
    new-instance v0, Lcom/didi/frame/search/SearchSugView;

    invoke-direct {v0, p0}, Lcom/didi/frame/search/SearchSugView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/common/search/SearchActivity;->mSearchView:Lcom/didi/frame/search/SearchSugView;

    .line 26
    iget-object v0, p0, Lcom/didi/common/search/SearchActivity;->mSearchView:Lcom/didi/frame/search/SearchSugView;

    invoke-virtual {p0, v0}, Lcom/didi/common/search/SearchActivity;->setContentView(Landroid/view/View;)V

    .line 27
    invoke-virtual {p0}, Lcom/didi/common/search/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/common/search/SearchActivity;->show(Landroid/content/Intent;)V

    .line 28
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 61
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/async/task/ActivityController;->removeActivity(Landroid/app/Activity;)V

    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 63
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0}, Lcom/didi/common/helper/HomeKeyHelper;->unregisterHomeReceiver(Landroid/content/Context;)V

    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 40
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 32
    invoke-static {p0}, Lcom/didi/common/helper/HomeKeyHelper;->registerHomeReceiver(Landroid/content/Context;)V

    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 34
    return-void
.end method

.method public onSelect(Lcom/didi/common/model/Address;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "search_extra_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 79
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/didi/common/search/SearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/didi/common/search/SearchActivity;->finish()V

    .line 81
    const v1, 0x7f040019

    const v2, 0x7f04001a

    invoke-virtual {p0, v1, v2}, Lcom/didi/common/search/SearchActivity;->overridePendingTransition(II)V

    .line 82
    return-void
.end method
