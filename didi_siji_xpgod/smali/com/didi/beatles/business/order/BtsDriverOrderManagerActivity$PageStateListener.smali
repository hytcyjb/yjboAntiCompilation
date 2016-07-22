.class Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$PageStateListener;
.super Ljava/lang/Object;
.source "BtsDriverOrderManagerActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;


# direct methods
.method private constructor <init>(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$PageStateListener;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$PageStateListener;-><init>(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 182
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 187
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 191
    packed-switch p1, :pswitch_data_0

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$PageStateListener;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mCurrentIndex:Lcom/didi/beatles/business/order/BtsTabIndex;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->access$100(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)Lcom/didi/beatles/business/order/BtsTabIndex;

    move-result-object v0

    sget-object v1, Lcom/didi/beatles/business/order/BtsTabIndex;->TASK:Lcom/didi/beatles/business/order/BtsTabIndex;

    if-ne v0, v1, :cond_1

    .line 208
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->isOpenDriverTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$PageStateListener;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    const/4 v1, 0x0

    #calls: Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->updateTaskIcon(Z)V
    invoke-static {v0, v1}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->access$200(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;Z)V

    .line 210
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->setOpenDriverTask(Z)V

    .line 215
    :cond_0
    :goto_1
    return-void

    .line 193
    :pswitch_0
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$PageStateListener;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    sget-object v1, Lcom/didi/beatles/business/order/BtsTabIndex;->PENGING_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    #setter for: Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mCurrentIndex:Lcom/didi/beatles/business/order/BtsTabIndex;
    invoke-static {v0, v1}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->access$102(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;Lcom/didi/beatles/business/order/BtsTabIndex;)Lcom/didi/beatles/business/order/BtsTabIndex;

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$PageStateListener;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    sget-object v1, Lcom/didi/beatles/business/order/BtsTabIndex;->MATCH_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    #setter for: Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mCurrentIndex:Lcom/didi/beatles/business/order/BtsTabIndex;
    invoke-static {v0, v1}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->access$102(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;Lcom/didi/beatles/business/order/BtsTabIndex;)Lcom/didi/beatles/business/order/BtsTabIndex;

    goto :goto_0

    .line 199
    :pswitch_2
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$PageStateListener;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    sget-object v1, Lcom/didi/beatles/business/order/BtsTabIndex;->NEARBY_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    #setter for: Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mCurrentIndex:Lcom/didi/beatles/business/order/BtsTabIndex;
    invoke-static {v0, v1}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->access$102(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;Lcom/didi/beatles/business/order/BtsTabIndex;)Lcom/didi/beatles/business/order/BtsTabIndex;

    goto :goto_0

    .line 202
    :pswitch_3
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$PageStateListener;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    sget-object v1, Lcom/didi/beatles/business/order/BtsTabIndex;->TASK:Lcom/didi/beatles/business/order/BtsTabIndex;

    #setter for: Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mCurrentIndex:Lcom/didi/beatles/business/order/BtsTabIndex;
    invoke-static {v0, v1}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->access$102(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;Lcom/didi/beatles/business/order/BtsTabIndex;)Lcom/didi/beatles/business/order/BtsTabIndex;

    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$PageStateListener;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabModle:[Lcom/didi/beatles/business/order/BtsTabModel;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsTabModel;->red_point:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
