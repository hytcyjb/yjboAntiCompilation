.class public Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$MyAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "BtsDriverOrderManagerActivity.java"

# interfaces
.implements Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$ViewTabProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field mTabModels:[Lcom/didi/beatles/business/order/BtsTabModel;

.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;


# direct methods
.method public constructor <init>(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;Landroid/support/v4/app/FragmentManager;[Lcom/didi/beatles/business/order/BtsTabModel;)V
    .locals 0
    .parameter
    .parameter "fm"
    .parameter "models"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$MyAdapter;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    .line 265
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 266
    iput-object p3, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$MyAdapter;->mTabModels:[Lcom/didi/beatles/business/order/BtsTabModel;

    .line 267
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$MyAdapter;->mTabModels:[Lcom/didi/beatles/business/order/BtsTabModel;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 281
    packed-switch p1, :pswitch_data_0

    .line 303
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 283
    :pswitch_0
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$MyAdapter;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mFragments:[Lcom/didi/beatles/business/order/BtsBaseFragment;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->access$300(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)[Lcom/didi/beatles/business/order/BtsBaseFragment;

    move-result-object v0

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$MyAdapter;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mFragments:[Lcom/didi/beatles/business/order/BtsBaseFragment;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->access$300(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)[Lcom/didi/beatles/business/order/BtsBaseFragment;

    move-result-object v0

    sget-object v1, Lcom/didi/beatles/business/order/BtsTabIndex;->PENGING_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    invoke-static {v1}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->newInstance(Lcom/didi/beatles/business/order/BtsTabIndex;)Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;

    move-result-object v1

    aput-object v1, v0, v2

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$MyAdapter;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mFragments:[Lcom/didi/beatles/business/order/BtsBaseFragment;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->access$300(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)[Lcom/didi/beatles/business/order/BtsBaseFragment;

    move-result-object v0

    aget-object v0, v0, v2

    goto :goto_0

    .line 288
    :pswitch_1
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$MyAdapter;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mFragments:[Lcom/didi/beatles/business/order/BtsBaseFragment;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->access$300(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)[Lcom/didi/beatles/business/order/BtsBaseFragment;

    move-result-object v0

    aget-object v0, v0, v3

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$MyAdapter;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mFragments:[Lcom/didi/beatles/business/order/BtsBaseFragment;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->access$300(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)[Lcom/didi/beatles/business/order/BtsBaseFragment;

    move-result-object v0

    sget-object v1, Lcom/didi/beatles/business/order/BtsTabIndex;->MATCH_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    invoke-static {v1}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->newInstance(Lcom/didi/beatles/business/order/BtsTabIndex;)Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;

    move-result-object v1

    aput-object v1, v0, v3

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$MyAdapter;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mFragments:[Lcom/didi/beatles/business/order/BtsBaseFragment;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->access$300(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)[Lcom/didi/beatles/business/order/BtsBaseFragment;

    move-result-object v0

    aget-object v0, v0, v3

    goto :goto_0

    .line 293
    :pswitch_2
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$MyAdapter;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mFragments:[Lcom/didi/beatles/business/order/BtsBaseFragment;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->access$300(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)[Lcom/didi/beatles/business/order/BtsBaseFragment;

    move-result-object v0

    aget-object v0, v0, v4

    if-nez v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$MyAdapter;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mFragments:[Lcom/didi/beatles/business/order/BtsBaseFragment;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->access$300(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)[Lcom/didi/beatles/business/order/BtsBaseFragment;

    move-result-object v0

    sget-object v1, Lcom/didi/beatles/business/order/BtsTabIndex;->NEARBY_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    invoke-static {v1}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->newInstance(Lcom/didi/beatles/business/order/BtsTabIndex;)Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;

    move-result-object v1

    aput-object v1, v0, v4

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$MyAdapter;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mFragments:[Lcom/didi/beatles/business/order/BtsBaseFragment;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->access$300(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)[Lcom/didi/beatles/business/order/BtsBaseFragment;

    move-result-object v0

    aget-object v0, v0, v4

    goto :goto_0

    .line 298
    :pswitch_3
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$MyAdapter;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mFragments:[Lcom/didi/beatles/business/order/BtsBaseFragment;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->access$300(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)[Lcom/didi/beatles/business/order/BtsBaseFragment;

    move-result-object v0

    aget-object v0, v0, v5

    if-nez v0, :cond_3

    .line 299
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$MyAdapter;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mFragments:[Lcom/didi/beatles/business/order/BtsBaseFragment;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->access$300(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)[Lcom/didi/beatles/business/order/BtsBaseFragment;

    move-result-object v0

    sget-object v1, Lcom/didi/beatles/business/order/BtsTabIndex;->TASK:Lcom/didi/beatles/business/order/BtsTabIndex;

    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$MyAdapter;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    iget-object v2, v2, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mOrderTaskListener:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;

    invoke-static {v1, v2}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->newInstance(Lcom/didi/beatles/business/order/BtsTabIndex;Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;)Lcom/didi/beatles/business/order/BtsDriverTaskFragment;

    move-result-object v1

    aput-object v1, v0, v5

    .line 301
    :cond_3
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$MyAdapter;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mFragments:[Lcom/didi/beatles/business/order/BtsBaseFragment;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->access$300(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)[Lcom/didi/beatles/business/order/BtsBaseFragment;

    move-result-object v0

    aget-object v0, v0, v5

    goto/16 :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPageTabView(I)Landroid/view/View;
    .locals 1
    .parameter "position"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$MyAdapter;->mTabModels:[Lcom/didi/beatles/business/order/BtsTabModel;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsTabModel;->view:Landroid/view/View;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "position"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$MyAdapter;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$MyAdapter;->mTabModels:[Lcom/didi/beatles/business/order/BtsTabModel;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/didi/beatles/business/order/BtsTabModel;->tabTitile:I

    invoke-virtual {v0, v1}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
