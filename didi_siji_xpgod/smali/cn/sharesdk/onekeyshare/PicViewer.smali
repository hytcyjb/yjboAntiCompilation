.class public Lcn/sharesdk/onekeyshare/PicViewer;
.super Lcn/sharesdk/framework/FakeActivity;
.source "PicViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private ivViewer:Landroid/widget/ImageView;

.field private pic:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/sharesdk/framework/FakeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/PicViewer;->finish()V

    .line 45
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/PicViewer;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->ivViewer:Landroid/widget/ImageView;

    .line 34
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->ivViewer:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 35
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->ivViewer:Landroid/widget/ImageView;

    const/high16 v1, -0x4000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 36
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->ivViewer:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/PicViewer;->ivViewer:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 38
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->pic:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->pic:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->ivViewer:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/PicViewer;->pic:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 41
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "pic"

    .prologue
    .line 26
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/PicViewer;->pic:Landroid/graphics/Bitmap;

    .line 27
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->ivViewer:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PicViewer;->ivViewer:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 30
    :cond_0
    return-void
.end method
