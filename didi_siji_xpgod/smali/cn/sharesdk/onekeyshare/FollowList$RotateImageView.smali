.class Lcn/sharesdk/onekeyshare/FollowList$RotateImageView;
.super Landroid/widget/ImageView;
.source "FollowList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/onekeyshare/FollowList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RotateImageView"
.end annotation


# instance fields
.field private rotation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 543
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 544
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 552
    iget v0, p0, Lcn/sharesdk/onekeyshare/FollowList$RotateImageView;->rotation:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/FollowList$RotateImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/FollowList$RotateImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 553
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 554
    return-void
.end method

.method public setRotation(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 547
    iput p1, p0, Lcn/sharesdk/onekeyshare/FollowList$RotateImageView;->rotation:I

    .line 548
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/FollowList$RotateImageView;->invalidate()V

    .line 549
    return-void
.end method
