.class Lcom/didi/common/helper/PopupHelper$MyPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/helper/PopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPageAdapter"
.end annotation


# instance fields
.field public pics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/didi/common/helper/PopupHelper;


# direct methods
.method public constructor <init>(Lcom/didi/common/helper/PopupHelper;)V
    .locals 1
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->this$0:Lcom/didi/common/helper/PopupHelper;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->pics:Ljava/util/ArrayList;

    .line 298
    return-void
.end method

.method public constructor <init>(Lcom/didi/common/helper/PopupHelper;Ljava/util/ArrayList;Lcom/didi/frame/business/Business;)V
    .locals 1
    .parameter
    .parameter
    .parameter "business"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/didi/frame/business/Business;",
            ")V"
        }
    .end annotation

    .prologue
    .line 300
    .local p2, pics:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->this$0:Lcom/didi/common/helper/PopupHelper;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->pics:Ljava/util/ArrayList;

    .line 301
    iput-object p2, p0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->pics:Ljava/util/ArrayList;

    .line 302
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 410
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 411
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->this$0:Lcom/didi/common/helper/PopupHelper;

    #getter for: Lcom/didi/common/helper/PopupHelper;->loadFromNet:Z
    invoke-static {v0}, Lcom/didi/common/helper/PopupHelper;->access$100(Lcom/didi/common/helper/PopupHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->pics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 309
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/didi/common/helper/PopupHelper;->access$200()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 10
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/16 v9, 0xf

    const/4 v8, -0x1

    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 317
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/frame/FragmentMgr;->isCarRealtimeFragment()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p2, v5, :cond_2

    .line 318
    new-instance v0, Lx/RelativeLayout;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v5

    invoke-direct {v0, v5}, Lx/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 319
    .local v0, contain:Lx/RelativeLayout;
    new-instance v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 320
    .local v1, imageView:Landroid/widget/ImageView;
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 321
    iget-object v5, p0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->this$0:Lcom/didi/common/helper/PopupHelper;

    #getter for: Lcom/didi/common/helper/PopupHelper;->isCarFirstShow:Z
    invoke-static {v5}, Lcom/didi/common/helper/PopupHelper;->access$300(Lcom/didi/common/helper/PopupHelper;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 322
    invoke-static {}, Lcom/didi/common/helper/PopupHelper;->access$200()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-static {v5, v7, v6}, Lutil/ImageUtil;->round(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 340
    :goto_0
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 342
    .local v3, paramsImageView:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v1, v3}, Lx/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    new-instance v4, Lx/ImageView;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v5

    invoke-direct {v4, v5}, Lx/ImageView;-><init>(Landroid/content/Context;)V

    .line 345
    .local v4, userItem:Lx/ImageView;
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Lx/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 346
    const v5, 0x7f0200dd

    invoke-virtual {v4, v5}, Lx/ImageView;->setBackgroundResource(I)V

    .line 347
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0xf3

    const/16 v6, 0x58

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 348
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    iput v9, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 349
    iput v9, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 350
    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 351
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 352
    invoke-static {v4}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 353
    invoke-virtual {v0, v4, v2}, Lx/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    new-instance v5, Lcom/didi/common/helper/PopupHelper$MyPageAdapter$2;

    invoke-direct {v5, p0}, Lcom/didi/common/helper/PopupHelper$MyPageAdapter$2;-><init>(Lcom/didi/common/helper/PopupHelper$MyPageAdapter;)V

    invoke-virtual {v4, v5}, Lx/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 375
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 376
    iget-object v5, p0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->this$0:Lcom/didi/common/helper/PopupHelper;

    #getter for: Lcom/didi/common/helper/PopupHelper;->imageListener:Landroid/view/View$OnClickListener;
    invoke-static {v5}, Lcom/didi/common/helper/PopupHelper;->access$500(Lcom/didi/common/helper/PopupHelper;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v0, v5}, Lx/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    .end local v0           #contain:Lx/RelativeLayout;
    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #paramsImageView:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #userItem:Lx/ImageView;
    :goto_1
    return-object v0

    .line 324
    .restart local v0       #contain:Lx/RelativeLayout;
    .restart local p1
    :cond_0
    iget-object v5, p0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->this$0:Lcom/didi/common/helper/PopupHelper;

    #getter for: Lcom/didi/common/helper/PopupHelper;->loadFromNet:Z
    invoke-static {v5}, Lcom/didi/common/helper/PopupHelper;->access$100(Lcom/didi/common/helper/PopupHelper;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 325
    iget-object v5, p0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->pics:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lcom/didi/common/helper/PopupHelper$MyPageAdapter$1;

    invoke-direct {v6, p0, v1}, Lcom/didi/common/helper/PopupHelper$MyPageAdapter$1;-><init>(Lcom/didi/common/helper/PopupHelper$MyPageAdapter;Landroid/widget/ImageView;)V

    invoke-static {v5, v6}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    goto :goto_0

    .line 337
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/PopupHelper;->access$200()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-static {v5, v7, v6}, Lutil/ImageUtil;->round(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 380
    .end local v0           #contain:Lx/RelativeLayout;
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_2
    new-instance v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 381
    .restart local v1       #imageView:Landroid/widget/ImageView;
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 382
    iget-object v5, p0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->this$0:Lcom/didi/common/helper/PopupHelper;

    #getter for: Lcom/didi/common/helper/PopupHelper;->isCarFirstShow:Z
    invoke-static {v5}, Lcom/didi/common/helper/PopupHelper;->access$300(Lcom/didi/common/helper/PopupHelper;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 383
    invoke-static {}, Lcom/didi/common/helper/PopupHelper;->access$200()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-static {v5, v7, v6}, Lutil/ImageUtil;->round(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 402
    :goto_2
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 403
    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 404
    iget-object v5, p0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->this$0:Lcom/didi/common/helper/PopupHelper;

    #getter for: Lcom/didi/common/helper/PopupHelper;->imageListener:Landroid/view/View$OnClickListener;
    invoke-static {v5}, Lcom/didi/common/helper/PopupHelper;->access$500(Lcom/didi/common/helper/PopupHelper;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    .line 405
    goto :goto_1

    .line 385
    .restart local p1
    :cond_3
    iget-object v5, p0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->this$0:Lcom/didi/common/helper/PopupHelper;

    #getter for: Lcom/didi/common/helper/PopupHelper;->loadFromNet:Z
    invoke-static {v5}, Lcom/didi/common/helper/PopupHelper;->access$100(Lcom/didi/common/helper/PopupHelper;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 386
    iget-object v5, p0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->pics:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lcom/didi/common/helper/PopupHelper$MyPageAdapter$3;

    invoke-direct {v6, p0, v1}, Lcom/didi/common/helper/PopupHelper$MyPageAdapter$3;-><init>(Lcom/didi/common/helper/PopupHelper$MyPageAdapter;Landroid/widget/ImageView;)V

    invoke-static {v5, v6}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    goto :goto_2

    .line 398
    :cond_4
    invoke-static {}, Lcom/didi/common/helper/PopupHelper;->access$200()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-static {v5, v7, v6}, Lutil/ImageUtil;->round(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 415
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
