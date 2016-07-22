.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;
.super Ljava/lang/Object;
.source "BtsPassengerWaitingForDriverActivity.java"

# interfaces
.implements Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 389
    const-string v1, "onGlobalLayout \u952e\u76d8\u9690\u85cf"

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mUserRateContainer:Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$700(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mUserRateContainer:Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$700(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->setVisibility(I)V

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mAddTags:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$1400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->refreshLeftTag(I)V
    invoke-static {v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$1500(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;I)V

    .line 393
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsTagsForCommentLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$900(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/component/BtsFlowLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 394
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsTagsForCommentLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$900(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/component/BtsFlowLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->setVisibility(I)V

    .line 395
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsXingchengLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$1000(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$1200(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/component/BtsScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/ui/component/BtsScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 398
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 400
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$1600(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/map/BtsMapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/map/BtsMapView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$1600(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/map/BtsMapView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/didi/beatles/map/BtsMapView;->setVisibility(I)V

    .line 403
    .end local v0           #p:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public onShow()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 371
    const-string v0, "onGlobalLayout \u952e\u76d8\u5f39\u51fa "

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mUserRateContainer:Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$700(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mUserRateContainer:Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$700(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->setVisibility(I)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$500(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->refreshLeftTxt(I)V
    invoke-static {v0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$800(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;I)V

    .line 375
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsTagsForCommentLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$900(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/component/BtsFlowLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsTagsForCommentLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$900(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/component/BtsFlowLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsXingchengLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$1000(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsDriverProfileView:Lcom/didi/beatles/ui/component/BtsDriverProfileView;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$1100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/component/BtsDriverProfileView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 379
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$1200(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/component/BtsScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsTagEditLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$1300(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/component/BtsFlowLayout;

    move-result-object v0

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->setBackgroundResource(I)V

    .line 385
    return-void
.end method
