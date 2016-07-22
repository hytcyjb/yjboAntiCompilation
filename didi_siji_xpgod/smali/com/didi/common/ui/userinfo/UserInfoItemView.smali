.class public Lcom/didi/common/ui/userinfo/UserInfoItemView;
.super Landroid/widget/FrameLayout;
.source "UserInfoItemView.java"


# instance fields
.field private callback:Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;

.field private mArrowView:Landroid/widget/ImageView;

.field private mInfoContentImage:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

.field private mInfoContentView:Landroid/widget/TextView;

.field private mInfoItemView:Landroid/view/View;

.field private mInfoTitleView:Landroid/widget/TextView;

.field private mOldInfoContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 119
    new-instance v0, Lcom/didi/common/ui/userinfo/UserInfoItemView$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/userinfo/UserInfoItemView$1;-><init>(Lcom/didi/common/ui/userinfo/UserInfoItemView;)V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->callback:Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;

    .line 35
    const v0, 0x7f03010c

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoItemView:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoItemView:Landroid/view/View;

    const v1, 0x7f08060c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoTitleView:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoItemView:Landroid/view/View;

    const v1, 0x7f08060d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentView:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoItemView:Landroid/view/View;

    const v1, 0x7f08060e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentImage:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    .line 40
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoItemView:Landroid/view/View;

    const v1, 0x7f0801b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mArrowView:Landroid/widget/ImageView;

    .line 41
    return-void
.end method


# virtual methods
.method public fillImageInfo(ILjava/lang/String;I)V
    .locals 2
    .parameter "titleResId"
    .parameter "imageUrl"
    .parameter "defaultImage"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentImage:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    invoke-virtual {v0, p3}, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->setImageResource(I)V

    .line 60
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentImage:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->setVisibility(I)V

    .line 61
    invoke-static {p2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->callback:Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;

    invoke-static {p2, v0}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    .line 64
    :cond_0
    return-void
.end method

.method public fillInfo(ILjava/lang/String;)V
    .locals 1
    .parameter "titleResId"
    .parameter "infoContent"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->fillInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public fillInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "infoTitle"
    .parameter "infoContent"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageViewSize()I
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentImage:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    invoke-virtual {v0}, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentImage:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    invoke-virtual {v1}, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public hideArrow()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mArrowView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    return-void
.end method

.method public rollbackToOld()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mOldInfoContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method

.method public setContentHint(I)V
    .locals 2
    .parameter "hintResId"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(I)V

    .line 86
    return-void
.end method

.method public setHitColor(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 117
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    return-void
.end method

.method public updateContent(Ljava/lang/String;)Z
    .locals 3
    .parameter "content"

    .prologue
    const/4 v0, 0x0

    .line 89
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 90
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mOldInfoContent:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mOldInfoContent:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mOldInfoContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentImage:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    invoke-virtual {v0}, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentImage:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->setVisibility(I)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->mInfoContentImage:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    invoke-virtual {v0, p1}, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 71
    return-void
.end method

.method public updateImage(Ljava/lang/String;)V
    .locals 1
    .parameter "imageUrl"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView;->callback:Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;

    invoke-static {p1, v0}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    .line 75
    return-void
.end method
