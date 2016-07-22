.class public Lcom/didi/beatles/common/utils/BtsShareUtil;
.super Ljava/lang/Object;
.source "BtsShareUtil.java"


# static fields
.field private static pop:Landroid/widget/PopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/beatles/common/utils/BtsShareUtil;->pop:Landroid/widget/PopupWindow;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/didi/beatles/common/utils/BtsShareUtil;->pop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    sput-object p0, Lcom/didi/beatles/common/utils/BtsShareUtil;->pop:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static getShareInfo(Lcom/didi/beatles/model/order/BtsShare;)Lcom/didi/beatles/model/BtsShareMode;
    .locals 4
    .parameter "share"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    if-nez p0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 111
    :goto_0
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Lcom/didi/beatles/model/BtsShareMode;

    invoke-direct {v0}, Lcom/didi/beatles/model/BtsShareMode;-><init>()V

    .line 74
    .local v0, shareInfo:Lcom/didi/beatles/model/BtsShareMode;
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->shareContent:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/BtsShareMode;->contentWX:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->sharePic:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/BtsShareMode;->picWB:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->sharePic:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/BtsShareMode;->picWX:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->shareTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/BtsShareMode;->titleWB:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->shareTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/BtsShareMode;->titleWX:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->shareUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/BtsShareMode;->picWXUrl:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->weibo:Lcom/didi/beatles/model/order/BtsShare$Weibo;

    if-eqz v1, :cond_1

    .line 82
    iput-boolean v3, v0, Lcom/didi/beatles/model/BtsShareMode;->isShowSina:Z

    .line 84
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->weibo:Lcom/didi/beatles/model/order/BtsShare$Weibo;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsShare$Weibo;->weibo_share_title:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/BtsShareMode;->weiboTitle:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->weibo:Lcom/didi/beatles/model/order/BtsShare$Weibo;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsShare$Weibo;->weibo_share_content:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/BtsShareMode;->weiboContent:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->weibo:Lcom/didi/beatles/model/order/BtsShare$Weibo;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsShare$Weibo;->weibo_share_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/BtsShareMode;->weiboUrl:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->weibo:Lcom/didi/beatles/model/order/BtsShare$Weibo;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsShare$Weibo;->weibo_share_pic:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/BtsShareMode;->weiboLogo:Ljava/lang/String;

    .line 93
    :goto_1
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->qq:Lcom/didi/beatles/model/order/BtsShare$QQ;

    if-eqz v1, :cond_2

    .line 94
    iput-boolean v3, v0, Lcom/didi/beatles/model/BtsShareMode;->isShareQQEnable:Z

    .line 95
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->qq:Lcom/didi/beatles/model/order/BtsShare$QQ;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsShare$QQ;->qq_share_title:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/BtsShareMode;->qqTitle:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->qq:Lcom/didi/beatles/model/order/BtsShare$QQ;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsShare$QQ;->qq_share_content:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/BtsShareMode;->qqContent:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->qq:Lcom/didi/beatles/model/order/BtsShare$QQ;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsShare$QQ;->qq_share_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/BtsShareMode;->qqUrl:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->qq:Lcom/didi/beatles/model/order/BtsShare$QQ;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsShare$QQ;->qq_share_pic:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/BtsShareMode;->qqLogo:Ljava/lang/String;

    .line 100
    iput-boolean v3, v0, Lcom/didi/beatles/model/BtsShareMode;->isShareQZoneEnable:Z

    .line 101
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->qq:Lcom/didi/beatles/model/order/BtsShare$QQ;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsShare$QQ;->qq_share_title:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/BtsShareMode;->qzoneTitle:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->qq:Lcom/didi/beatles/model/order/BtsShare$QQ;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsShare$QQ;->qq_share_content:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/BtsShareMode;->qzoneContent:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->qq:Lcom/didi/beatles/model/order/BtsShare$QQ;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsShare$QQ;->qq_share_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/BtsShareMode;->qzoneUrl:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsShare;->qq:Lcom/didi/beatles/model/order/BtsShare$QQ;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsShare$QQ;->qq_share_pic:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/BtsShareMode;->qzoneLogo:Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_1
    iput-boolean v2, v0, Lcom/didi/beatles/model/BtsShareMode;->isShowSina:Z

    goto :goto_1

    .line 107
    :cond_2
    iput-boolean v2, v0, Lcom/didi/beatles/model/BtsShareMode;->isShareQQEnable:Z

    .line 108
    iput-boolean v2, v0, Lcom/didi/beatles/model/BtsShareMode;->isShareQZoneEnable:Z

    goto :goto_0
.end method

.method public static share(Landroid/content/Context;Landroid/view/View;ILcom/didi/beatles/model/BtsShareMode;)V
    .locals 5
    .parameter "context"
    .parameter "parentView"
    .parameter "gravity"
    .parameter "shareInfo"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 35
    if-nez p3, :cond_0

    .line 60
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v0, Lcom/didi/beatles/ui/component/BtsShareView;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/component/BtsShareView;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, shareView:Lcom/didi/beatles/ui/component/BtsShareView;
    const v1, 0x7f07002c

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsShareView;->setBackgroundColor(I)V

    .line 41
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsShareView;->setListener(Lcom/didi/taxi/ui/component/ShareView$ShareListener;)V

    .line 42
    invoke-virtual {v0, p3}, Lcom/didi/beatles/ui/component/BtsShareView;->setShare(Lcom/didi/beatles/model/BtsShareMode;)V

    .line 43
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 44
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, v2, v2, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    sput-object v1, Lcom/didi/beatles/common/utils/BtsShareUtil;->pop:Landroid/widget/PopupWindow;

    .line 45
    sget-object v1, Lcom/didi/beatles/common/utils/BtsShareUtil;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 46
    sget-object v1, Lcom/didi/beatles/common/utils/BtsShareUtil;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1, p2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 47
    new-instance v1, Lcom/didi/beatles/common/utils/BtsShareUtil$1;

    invoke-direct {v1}, Lcom/didi/beatles/common/utils/BtsShareUtil$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsShareView;->setListener(Lcom/didi/taxi/ui/component/ShareView$ShareListener;)V

    goto :goto_0
.end method
