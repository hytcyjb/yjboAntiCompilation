.class public Lcom/didi/common/ui/component/Share;
.super Ljava/lang/Object;
.source "Share.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/component/Share$ShareFriends;
    }
.end annotation


# static fields
.field private static final CANCEL_REDIRECT_DELAY:I = 0xbb8

.field private static final DES_SINA_WEIBO:Ljava/lang/String; = "sina_weibo"

.field private static final DES_TENCENT_WEIBO:Ljava/lang/String; = "tencent_weibo"

.field public static final SHARE_FROM_INVITE_FRIENDS:I = 0x3

.field public static final SHARE_FROM_PAY_EVA:I = 0x1

.field public static final SHARE_FROM_WAIT_DRIVER:I = 0x2

.field private static mContext:Landroid/content/Context;

.field public static mShareActivty:I

.field private static share:Lcom/didi/common/ui/component/Share;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public shareSinaFriendView(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "content"
    .parameter "draw"
    .parameter "sharetype"

    .prologue
    .line 186
    if-nez p2, :cond_0

    .line 187
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    const v1, 0x7f05001b

    invoke-static {v1}, Lcom/didi/common/helper/XmlAttibuteHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 194
    :cond_0
    :goto_0
    new-instance v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    sget-object v1, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 195
    .local v0, modelmoment:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    const-string v1, ""

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->title:Ljava/lang/String;

    .line 196
    iput-object p1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->content:Ljava/lang/String;

    .line 197
    const-string v1, ""

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    .line 198
    iput-object p2, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    .line 199
    sget-object v1, Lcom/didi/common/ui/component/Share;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcn/sharesdk/onekeyshare/ShareUtil;->show(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OneKeyShareModel;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 201
    return-void

    .line 189
    .end local v0           #modelmoment:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    :cond_1
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    :cond_2
    const v1, 0x7f050004

    invoke-static {v1}, Lcom/didi/common/helper/XmlAttibuteHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0
.end method

.method public shareWeXinImage(ILandroid/graphics/drawable/Drawable;II)V
    .locals 6
    .parameter "to"
    .parameter "drawable"
    .parameter "sharetype"
    .parameter "from"

    .prologue
    const v5, 0x7f05001b

    const v4, 0x7f050004

    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez p2, :cond_5

    .line 481
    const/4 v1, 0x0

    .line 482
    .local v1, draw:Landroid/graphics/drawable/Drawable;
    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 483
    invoke-static {v5}, Lcom/didi/common/helper/XmlAttibuteHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 489
    :cond_0
    :goto_0
    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 490
    invoke-static {v4}, Lcom/didi/common/helper/XmlAttibuteHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 492
    :cond_1
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #draw:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 541
    .end local p2
    :cond_2
    :goto_1
    return-void

    .line 484
    .restart local v1       #draw:Landroid/graphics/drawable/Drawable;
    .restart local p2
    :cond_3
    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    :cond_4
    invoke-static {v4}, Lcom/didi/common/helper/XmlAttibuteHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 494
    .end local v1           #draw:Landroid/graphics/drawable/Drawable;
    :cond_5
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 495
    if-nez v0, :cond_2

    .line 496
    const/4 v1, 0x0

    .line 497
    .restart local v1       #draw:Landroid/graphics/drawable/Drawable;
    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 498
    invoke-static {v5}, Lcom/didi/common/helper/XmlAttibuteHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 502
    :cond_6
    :goto_2
    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 503
    invoke-static {v4}, Lcom/didi/common/helper/XmlAttibuteHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 505
    :cond_7
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #draw:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 499
    .restart local v1       #draw:Landroid/graphics/drawable/Drawable;
    :cond_8
    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 500
    invoke-static {v4}, Lcom/didi/common/helper/XmlAttibuteHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2
.end method
