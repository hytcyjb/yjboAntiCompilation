.class Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;
.super Ljava/lang/Object;
.source "BtsDriverHoldOrderActivity.java"

# interfaces
.implements Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1127
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mAddTags:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$1100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->refreshLeftTag(I)V
    invoke-static {v1, v2}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$2100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;I)V

    .line 1128
    const-string v1, "onGlobalLayout \u952e\u76d8\u9690\u85cf"

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1129
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mUserRateContainer:Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$1500(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1130
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mUserRateContainer:Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$1500(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->setVisibility(I)V

    .line 1131
    :cond_0
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsTagsForCommentLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$1600(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/component/BtsFlowLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1132
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsTagsForCommentLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$1600(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/component/BtsFlowLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->setVisibility(I)V

    .line 1133
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsXingchengRLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$1700(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1135
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$1900(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/component/BtsScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/ui/component/BtsScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1136
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1137
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$2200(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/map/BtsMapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/map/BtsMapView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1138
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$2200(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/map/BtsMapView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/didi/beatles/map/BtsMapView;->setVisibility(I)V

    .line 1140
    .end local v0           #p:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public onShow()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1111
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->tagEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$500(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->refreshLeftTxt(I)V
    invoke-static {v0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$1400(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;I)V

    .line 1112
    const-string v0, "onGlobalLayout \u952e\u76d8\u5f39\u51fa"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1113
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mUserRateContainer:Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$1500(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mUserRateContainer:Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$1500(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->setVisibility(I)V

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsTagsForCommentLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$1600(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/component/BtsFlowLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1116
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsTagsForCommentLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$1600(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/component/BtsFlowLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->setVisibility(I)V

    .line 1117
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsXingchengRLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$1700(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1118
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->passengerProfileView:Lcom/didi/beatles/ui/component/BtsPassengerProfileView;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$1800(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/component/BtsPassengerProfileView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1119
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$1900(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/component/BtsScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsTagEditLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$2000(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/component/BtsFlowLayout;

    move-result-object v0

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->setBackgroundResource(I)V

    .line 1123
    return-void
.end method
