.class public Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;
.super Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
.source "PlatformListPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private gridViewAdapter:Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->hiddenPlatforms:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;)Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->gridViewAdapter:Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;

    return-object v0
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 36
    const-string v3, "backImageView"

    invoke-virtual {p0, v3}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->findViewByResName(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, backImageView:Landroid/view/View;
    const/high16 v3, 0x104

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const-string v3, "okImageView"

    invoke-virtual {p0, v3}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->findViewByResName(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 41
    .local v2, okImageView:Landroid/view/View;
    const v3, 0x104000a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    new-instance v3, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->gridViewAdapter:Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;

    .line 45
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->gridViewAdapter:Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->customerLogos:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->setCustomerLogos(Ljava/util/ArrayList;)V

    .line 47
    const-string v3, "gridView"

    invoke-virtual {p0, v3}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->findViewByResName(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 48
    .local v1, gridView:Landroid/widget/GridView;
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->gridViewAdapter:Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    new-instance v3, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage$1;

    invoke-direct {v3, p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage$1;-><init>(Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    return-void
.end method

.method private onShareButtonClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 81
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->gridViewAdapter:Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;

    if-eqz v1, :cond_0

    const-string v1, "locked"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->gridViewAdapter:Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;

    invoke-virtual {v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->getCheckedItems()Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, checkedPlatforms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 86
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->activity:Landroid/app/Activity;

    const-string v3, "select_one_plat_at_least"

    invoke-static {v2, v3}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 90
    :cond_2
    const-string v1, "locked"

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0, p1, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->onShareButtonClick(Landroid/view/View;Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 66
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 78
    .end local v0           #tag:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local v0       #tag:Ljava/lang/Object;
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 71
    :sswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->setCanceled(Z)V

    .line 72
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->finish()V

    goto :goto_0

    .line 75
    :sswitch_1
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->onShareButtonClick(Landroid/view/View;)V

    goto :goto_0

    .line 69
    nop

    :sswitch_data_0
    .sparse-switch
        0x1040000 -> :sswitch_0
        0x104000a -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 29
    invoke-super {p0}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->onCreate()V

    .line 30
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->activity:Landroid/app/Activity;

    const-string v2, "skyblue_share_platform_list"

    invoke-static {v1, v2}, Lcn/sharesdk/framework/utils/R;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 32
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->initView()V

    .line 33
    return-void
.end method
