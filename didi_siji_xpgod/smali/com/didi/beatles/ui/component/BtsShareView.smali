.class public Lcom/didi/beatles/ui/component/BtsShareView;
.super Lcom/didi/taxi/ui/component/ShareView;
.source "BtsShareView.java"


# instance fields
.field private mSharemodel:Lcom/didi/beatles/model/BtsShareMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/component/ShareView;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/didi/taxi/ui/component/ShareView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/taxi/ui/component/ShareView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/ui/component/BtsShareView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/beatles/ui/component/BtsShareView;->addAppSharePublicLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/beatles/ui/component/BtsShareView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/beatles/ui/component/BtsShareView;->addAppSharePublicLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setShare(Lcom/didi/beatles/model/BtsShareMode;)V
    .locals 3
    .parameter "sharemodel"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/didi/taxi/ui/component/ShareView;->setShare(Lcom/didi/beatles/model/BtsShareMode;)V

    .line 39
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsShareView;->mSharemodel:Lcom/didi/beatles/model/BtsShareMode;

    .line 41
    iget-boolean v0, p1, Lcom/didi/beatles/model/BtsShareMode;->isShareQQEnable:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsShareView;->mQqView:Lcom/didi/common/ui/component/PayShareItemView;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/PayShareItemView;->setVisibility(I)V

    .line 47
    :goto_0
    iget-boolean v0, p1, Lcom/didi/beatles/model/BtsShareMode;->isShareQZoneEnable:Z

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsShareView;->mQzoneView:Lcom/didi/common/ui/component/PayShareItemView;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/PayShareItemView;->setVisibility(I)V

    .line 52
    :goto_1
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsShareView;->mQqView:Lcom/didi/common/ui/component/PayShareItemView;

    invoke-virtual {v0, v2}, Lcom/didi/common/ui/component/PayShareItemView;->setVisibility(I)V

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsShareView;->mQzoneView:Lcom/didi/common/ui/component/PayShareItemView;

    invoke-virtual {v0, v2}, Lcom/didi/common/ui/component/PayShareItemView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected shareQQ()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    sget-object v1, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 57
    .local v0, modelQQ:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsShareView;->mSharemodel:Lcom/didi/beatles/model/BtsShareMode;

    iget-object v1, v1, Lcom/didi/beatles/model/BtsShareMode;->qqTitle:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->title:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsShareView;->mSharemodel:Lcom/didi/beatles/model/BtsShareMode;

    iget-object v1, v1, Lcom/didi/beatles/model/BtsShareMode;->qqUrl:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsShareView;->mSharemodel:Lcom/didi/beatles/model/BtsShareMode;

    iget-object v1, v1, Lcom/didi/beatles/model/BtsShareMode;->qqContent:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->content:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsShareView;->mSharemodel:Lcom/didi/beatles/model/BtsShareMode;

    iget-object v1, v1, Lcom/didi/beatles/model/BtsShareMode;->qqLogo:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgUrl:Ljava/lang/String;

    .line 61
    const/4 v1, 0x0

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    .line 62
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsShareView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/didi/beatles/ui/component/BtsShareView$1;

    invoke-direct {v2, p0}, Lcom/didi/beatles/ui/component/BtsShareView$1;-><init>(Lcom/didi/beatles/ui/component/BtsShareView;)V

    invoke-static {v1, v0, v2}, Lcom/didi/common/util/DiDiShareUtil;->show(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OneKeyShareModel;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 80
    return-void
.end method

.method protected shareQZone()V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    sget-object v1, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 85
    .local v0, modelQZone:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsShareView;->mSharemodel:Lcom/didi/beatles/model/BtsShareMode;

    iget-object v1, v1, Lcom/didi/beatles/model/BtsShareMode;->qzoneTitle:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->title:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsShareView;->mSharemodel:Lcom/didi/beatles/model/BtsShareMode;

    iget-object v1, v1, Lcom/didi/beatles/model/BtsShareMode;->qzoneUrl:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsShareView;->mSharemodel:Lcom/didi/beatles/model/BtsShareMode;

    iget-object v1, v1, Lcom/didi/beatles/model/BtsShareMode;->qzoneContent:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->content:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsShareView;->mSharemodel:Lcom/didi/beatles/model/BtsShareMode;

    iget-object v1, v1, Lcom/didi/beatles/model/BtsShareMode;->qzoneLogo:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgUrl:Ljava/lang/String;

    .line 89
    const/4 v1, 0x0

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    .line 90
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsShareView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/didi/beatles/ui/component/BtsShareView$2;

    invoke-direct {v2, p0}, Lcom/didi/beatles/ui/component/BtsShareView$2;-><init>(Lcom/didi/beatles/ui/component/BtsShareView;)V

    invoke-static {v1, v0, v2}, Lcom/didi/common/util/DiDiShareUtil;->show(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OneKeyShareModel;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 108
    return-void
.end method
