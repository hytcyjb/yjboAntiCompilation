.class public Lcom/didi/game/activity/GameActivity;
.super Lcom/didi/common/ui/webview/WebActivity;
.source "GameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static final ALIGNPARENT_COUNTDOWN_TIME:I = 0x1388

.field private static final CHANNEL_ARRAY:[Ljava/lang/String; = null

.field private static final CHANNEL_ICON:[I = null

.field private static final CHANNEL_NAME:[Ljava/lang/String; = null

.field private static final CHANNEL_TYPE:[Ljava/lang/String; = null

.field public static final GAME_EXTRA:Ljava/lang/String; = "game"

.field public static final GAME_ICON:Ljava/lang/String; = "icon"

.field public static final GAME_ID:Ljava/lang/String; = "ID"

.field public static final GAME_NAME:Ljava/lang/String; = "name"

.field public static final GAME_SHARE_URL:Ljava/lang/String; = "shareUrl"

.field public static final GAME_URL:Ljava/lang/String; = "url"

.field private static final ICON_ID:I = 0x1

.field public static final INTENT_H5_ACTION:Ljava/lang/String; = "didi.psnger.intent.action.OPEN_H5_GAME"

.field protected static final MENU_SCALE_INTERVAL:I = 0x12c

.field protected static final MSG_HIDE_FLOAT_MENU_TO_LEFT:I = 0x65

.field protected static final MSG_HIDE_FLOAT_MENU_TO_RIGHT:I = 0x66

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mGame:Lcom/didi/game/model/H5game;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mJsBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

.field private mJsCallback:Lcom/didi/common/ui/webview/JSBridgeCallBack;

.field private mMenuDrawer:Landroid/view/View;

.field private mMenuIcon:Landroid/widget/ImageView;

.field private mMenuLeftArrow:Landroid/view/View;

.field private mMenuRightArrow:Landroid/view/View;

.field private mWebViewToolModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/ui/webview/WebViewToolModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 84
    const-class v0, Lcom/didi/game/activity/GameActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/game/activity/GameActivity;->TAG:Ljava/lang/String;

    .line 127
    new-array v0, v3, [Ljava/lang/String;

    sget-object v1, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    aput-object v1, v0, v5

    sget-object v1, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    aput-object v1, v0, v6

    sget-object v1, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/didi/game/activity/GameActivity;->CHANNEL_ARRAY:[Ljava/lang/String;

    .line 128
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "share_weixin_timeline"

    aput-object v1, v0, v4

    const-string v1, "share_weixin_appmsg"

    aput-object v1, v0, v5

    const-string v1, "share_qq_appmsg"

    aput-object v1, v0, v6

    const-string v1, "share_qzone"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "share_sina_weibo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/didi/game/activity/GameActivity;->CHANNEL_TYPE:[Ljava/lang/String;

    .line 131
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/didi/game/activity/GameActivity;->CHANNEL_ICON:[I

    .line 134
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\u5fae\u4fe1\u670b\u53cb\u5708"

    aput-object v1, v0, v4

    const-string v1, "\u5fae\u4fe1\u597d\u53cb"

    aput-object v1, v0, v5

    const-string v1, "QQ"

    aput-object v1, v0, v6

    const-string v1, "QQ\u7a7a\u95f4"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u65b0\u6d6a\u5fae\u535a"

    aput-object v2, v0, v1

    sput-object v0, Lcom/didi/game/activity/GameActivity;->CHANNEL_NAME:[Ljava/lang/String;

    return-void

    .line 131
    :array_0
    .array-data 0x4
        0xdct 0x2t 0x2t 0x7ft
        0xdat 0x2t 0x2t 0x7ft
        0xd2t 0x2t 0x2t 0x7ft
        0xd4t 0x2t 0x2t 0x7ft
        0xd8t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;-><init>()V

    .line 408
    new-instance v0, Lcom/didi/game/activity/GameActivity$4;

    invoke-direct {v0, p0}, Lcom/didi/game/activity/GameActivity$4;-><init>(Lcom/didi/game/activity/GameActivity;)V

    iput-object v0, p0, Lcom/didi/game/activity/GameActivity;->mHandler:Landroid/os/Handler;

    .line 585
    new-instance v0, Lcom/didi/game/activity/GameActivity$7;

    invoke-direct {v0, p0}, Lcom/didi/game/activity/GameActivity$7;-><init>(Lcom/didi/game/activity/GameActivity;)V

    iput-object v0, p0, Lcom/didi/game/activity/GameActivity;->mJsCallback:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/game/activity/GameActivity;)Lcom/didi/game/model/H5game;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/game/activity/GameActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/didi/game/activity/GameActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/game/activity/GameActivity;Landroid/view/View;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/game/activity/GameActivity;->moveMenuIconWithFinger(Landroid/view/View;FF)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/game/activity/GameActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/didi/game/activity/GameActivity;->mMenuIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/game/activity/GameActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/didi/game/activity/GameActivity;->mMenuDrawer:Landroid/view/View;

    return-object v0
.end method

.method private addJavaScriptInterfaces()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/didi/game/activity/GameActivity;->mJsBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    const-string v1, "callNativeLogin"

    new-instance v2, Lcom/didi/game/activity/GameActivity$2;

    invoke-direct {v2, p0}, Lcom/didi/game/activity/GameActivity$2;-><init>(Lcom/didi/game/activity/GameActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 268
    return-void
.end method

.method public static appendParamsToUrl(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;)Ljava/lang/String;
    .locals 2
    .parameter "url"
    .parameter "ap"

    .prologue
    .line 565
    if-nez p0, :cond_1

    .line 566
    const/4 p0, 0x0

    .line 582
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 568
    .restart local p0
    :cond_1
    if-eqz p1, :cond_0

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 575
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 576
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lnet/tsz/afinal/http/AjaxParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 579
    :cond_3
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private changeMenuDrawerVisibility()V
    .locals 10

    .prologue
    .line 464
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/didi/game/activity/GameActivity;->mMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/didi/game/activity/GameActivity;->mMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    const/4 v9, 0x1

    .line 465
    .local v9, isMenuInLeft:Z
    :goto_0
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuDrawer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v9, :cond_1

    .line 468
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 472
    .restart local v0       #anim:Landroid/view/animation/Animation;
    :goto_1
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 473
    new-instance v1, Lcom/didi/game/activity/GameActivity$5;

    invoke-direct {v1, p0}, Lcom/didi/game/activity/GameActivity$5;-><init>(Lcom/didi/game/activity/GameActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 487
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuDrawer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 499
    :goto_2
    return-void

    .line 464
    .end local v0           #anim:Landroid/view/animation/Animation;
    .end local v9           #isMenuInLeft:Z
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 470
    .restart local v0       #anim:Landroid/view/animation/Animation;
    .restart local v9       #isMenuInLeft:Z
    :cond_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_1

    .line 489
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_2
    const/4 v0, 0x0

    .line 490
    .restart local v0       #anim:Landroid/view/animation/Animation;
    if-eqz v9, :cond_3

    .line 491
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 495
    .restart local v0       #anim:Landroid/view/animation/Animation;
    :goto_3
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 496
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuDrawer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuDrawer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 493
    :cond_3
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_3
.end method

.method private createDesktopShortcut()V
    .locals 2

    .prologue
    .line 531
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/didi/game/activity/GameActivity$6;

    invoke-direct {v1, p0}, Lcom/didi/game/activity/GameActivity$6;-><init>(Lcom/didi/game/activity/GameActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 562
    return-void
.end method

.method private genGameWebViewModel(Lcom/didi/game/model/H5game;)Lcom/didi/common/ui/webview/WebViewModel;
    .locals 6
    .parameter "game"

    .prologue
    .line 218
    new-instance v2, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v2}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 219
    .local v2, wvm:Lcom/didi/common/ui/webview/WebViewModel;
    invoke-virtual {p1}, Lcom/didi/game/model/H5game;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Lcom/didi/game/model/H5game;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Lcom/didi/game/model/H5game;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->share_title:Ljava/lang/String;

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6ef4\u6ef4\u6e38\u620f-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/didi/game/model/H5game;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->share_content:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Lcom/didi/game/model/H5game;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->share_icon_url:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Lcom/didi/game/model/H5game;->getShareUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->share_url:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Lcom/didi/game/model/H5game;->getSource()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    .line 227
    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, suuid:Ljava/lang/String;
    new-instance v0, Lnet/tsz/afinal/http/AjaxParams;

    invoke-direct {v0}, Lnet/tsz/afinal/http/AjaxParams;-><init>()V

    .line 230
    .local v0, builder:Lnet/tsz/afinal/http/AjaxParams;
    const-string v3, "appId"

    iget-object v4, p0, Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v3, "token"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v3, "channel"

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v3, "suuid"

    invoke-virtual {v0, v3, v1}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v3, "platform"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v3, "datatype"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v3, "appversion"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v3, "susig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/didi/common/util/Constant;->SIGN_KEY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/MD5;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/didi/game/activity/GameActivity;->appendParamsToUrl(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 241
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 242
    return-object v2
.end method

.method private getMenuIconLayoutInitParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v1, -0x2

    .line 502
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 503
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x9

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 504
    const/16 v1, 0x28

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 505
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 506
    return-object v0
.end method

.method private getMenuInLeftLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x2

    .line 510
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 511
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 512
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 513
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuLeftArrow:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 514
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuRightArrow:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 515
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/didi/game/activity/GameActivity;->mMenuDrawer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 516
    return-object v0
.end method

.method private getMenuInRightLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v1, -0x2

    const/4 v2, 0x1

    .line 520
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 521
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 522
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 523
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuLeftArrow:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 524
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuRightArrow:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 525
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/didi/game/activity/GameActivity;->mMenuDrawer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 526
    return-object v0
.end method

.method private handleIntent()V
    .locals 4

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/didi/game/activity/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "game"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/didi/game/model/H5game;

    iput-object v1, p0, Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;

    .line 202
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Lcom/didi/game/model/H5game;

    invoke-direct {v1}, Lcom/didi/game/model/H5game;-><init>()V

    iput-object v1, p0, Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;

    .line 204
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {p0}, Lcom/didi/game/activity/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/game/model/H5game;->setID(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {p0}, Lcom/didi/game/activity/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/game/model/H5game;->setName(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {p0}, Lcom/didi/game/activity/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/game/model/H5game;->setUrl(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {p0}, Lcom/didi/game/activity/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "icon"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/game/model/H5game;->setIconUrl(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {p0}, Lcom/didi/game/activity/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "shareUrl"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/game/model/H5game;->setShareUrl(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;

    const-string v2, "shortcut_game"

    invoke-virtual {v1, v2}, Lcom/didi/game/model/H5game;->setSource(Ljava/lang/String;)V

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-direct {p0, v1}, Lcom/didi/game/activity/GameActivity;->genGameWebViewModel(Lcom/didi/game/model/H5game;)Lcom/didi/common/ui/webview/WebViewModel;

    move-result-object v0

    .line 213
    .local v0, wvm:Lcom/didi/common/ui/webview/WebViewModel;
    invoke-virtual {p0}, Lcom/didi/game/activity/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "data_model"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 214
    return-void
.end method

.method private hideTitileBar()V
    .locals 2

    .prologue
    .line 246
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Lcom/didi/game/activity/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    return-void
.end method

.method private initMenuView()V
    .locals 5

    .prologue
    const v4, 0x7f080398

    .line 271
    const v1, 0x7f08005d

    invoke-virtual {p0, v1}, Lcom/didi/game/activity/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 273
    .local v0, rootView:Landroid/view/ViewGroup;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuIcon:Landroid/widget/ImageView;

    .line 274
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuIcon:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 275
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuIcon:Landroid/widget/ImageView;

    const v2, 0x7f0201b3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/didi/game/activity/GameActivity;->getMenuIconLayoutInitParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300a6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuDrawer:Landroid/view/View;

    .line 280
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuDrawer:Landroid/view/View;

    const v2, 0x7f080396

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuLeftArrow:Landroid/view/View;

    .line 281
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuDrawer:Landroid/view/View;

    const v2, 0x7f08039a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuRightArrow:Landroid/view/View;

    .line 283
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuDrawer:Landroid/view/View;

    invoke-direct {p0}, Lcom/didi/game/activity/GameActivity;->getMenuInRightLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuDrawer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuDrawer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 287
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuDrawer:Landroid/view/View;

    const v2, 0x7f080397

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuDrawer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuDrawer:Landroid/view/View;

    const v2, 0x7f080399

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {v1}, Lcom/didi/game/model/H5game;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuDrawer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mMenuIcon:Landroid/widget/ImageView;

    new-instance v2, Lcom/didi/game/activity/GameActivity$3;

    invoke-direct {v2, p0}, Lcom/didi/game/activity/GameActivity$3;-><init>(Lcom/didi/game/activity/GameActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 345
    return-void
.end method

.method private initShare()V
    .locals 5

    .prologue
    .line 349
    iget-object v4, p0, Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getShareUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 354
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v3, wvtmList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/ui/webview/WebViewToolModel;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v4, Lcom/didi/game/activity/GameActivity;->CHANNEL_ARRAY:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 357
    new-instance v1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    sget-object v4, Lcom/didi/game/activity/GameActivity;->CHANNEL_ARRAY:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v4

    invoke-direct {v1, v4}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 358
    .local v1, oksm:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    iget-object v4, p0, Lcom/didi/game/activity/GameActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v4, v4, Lcom/didi/common/ui/webview/WebViewModel;->share_url:Ljava/lang/String;

    iput-object v4, v1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    .line 359
    iget-object v4, p0, Lcom/didi/game/activity/GameActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v4, v4, Lcom/didi/common/ui/webview/WebViewModel;->share_icon_url:Ljava/lang/String;

    iput-object v4, v1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgUrl:Ljava/lang/String;

    .line 360
    iget-object v4, p0, Lcom/didi/game/activity/GameActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v4, v4, Lcom/didi/common/ui/webview/WebViewModel;->share_title:Ljava/lang/String;

    iput-object v4, v1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->title:Ljava/lang/String;

    .line 361
    iget-object v4, p0, Lcom/didi/game/activity/GameActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v4, v4, Lcom/didi/common/ui/webview/WebViewModel;->share_content:Ljava/lang/String;

    iput-object v4, v1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->content:Ljava/lang/String;

    .line 363
    new-instance v2, Lcom/didi/common/ui/webview/WebViewToolModel;

    invoke-direct {v2}, Lcom/didi/common/ui/webview/WebViewToolModel;-><init>()V

    .line 364
    .local v2, wvtm:Lcom/didi/common/ui/webview/WebViewToolModel;
    sget-object v4, Lcom/didi/game/activity/GameActivity;->CHANNEL_NAME:[Ljava/lang/String;

    aget-object v4, v4, v0

    iput-object v4, v2, Lcom/didi/common/ui/webview/WebViewToolModel;->name:Ljava/lang/String;

    .line 365
    sget-object v4, Lcom/didi/game/activity/GameActivity;->CHANNEL_ICON:[I

    aget v4, v4, v0

    iput v4, v2, Lcom/didi/common/ui/webview/WebViewToolModel;->resId:I

    .line 366
    sget-object v4, Lcom/didi/game/activity/GameActivity;->CHANNEL_TYPE:[Ljava/lang/String;

    aget-object v4, v4, v0

    iput-object v4, v2, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    .line 367
    iput-object v1, v2, Lcom/didi/common/ui/webview/WebViewToolModel;->onkKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    .line 368
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 371
    .end local v1           #oksm:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    .end local v2           #wvtm:Lcom/didi/common/ui/webview/WebViewToolModel;
    :cond_2
    iput-object v3, p0, Lcom/didi/game/activity/GameActivity;->mWebViewToolModel:Ljava/util/List;

    goto :goto_0
.end method

.method private moveMenuIconWithFinger(Landroid/view/View;FF)V
    .locals 7
    .parameter "icon"
    .parameter "rawX"
    .parameter "rawY"

    .prologue
    const/4 v6, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 435
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 437
    .local v0, iconParams:Landroid/widget/RelativeLayout$LayoutParams;
    float-to-int v3, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 438
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-gez v3, :cond_2

    .line 439
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 444
    :cond_0
    :goto_0
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_3

    const/4 v1, 0x1

    .line 445
    .local v1, isMenuInLeft:Z
    :goto_1
    if-eqz v1, :cond_4

    .line 446
    iget-object v3, p0, Lcom/didi/game/activity/GameActivity;->mMenuDrawer:Landroid/view/View;

    invoke-direct {p0}, Lcom/didi/game/activity/GameActivity;->getMenuInLeftLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    const/16 v3, 0xb

    invoke-virtual {v0, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 448
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v3

    float-to-int v4, p2

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 449
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    if-gez v3, :cond_1

    .line 450
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 460
    :cond_1
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    return-void

    .line 440
    .end local v1           #isMenuInLeft:Z
    :cond_2
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    .line 441
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_3
    move v1, v2

    .line 444
    goto :goto_1

    .line 453
    .restart local v1       #isMenuInLeft:Z
    :cond_4
    iget-object v3, p0, Lcom/didi/game/activity/GameActivity;->mMenuDrawer:Landroid/view/View;

    invoke-direct {p0}, Lcom/didi/game/activity/GameActivity;->getMenuInRightLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    const/16 v3, 0x9

    invoke-virtual {v0, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 455
    float-to-int v3, p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 456
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-gez v3, :cond_1

    .line 457
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_2
.end method

.method private setFullScreen()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/game/activity/GameActivity;->requestWindowFeature(I)Z

    .line 197
    invoke-virtual {p0}, Lcom/didi/game/activity/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 198
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Lcom/didi/game/model/H5game;)V
    .locals 2
    .parameter "context"
    .parameter "game"

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/didi/game/activity/GameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "game"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 376
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 378
    :sswitch_0
    const-string v1, "h5game_exit"

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/didi/game/activity/GameActivity;->finish()V

    goto :goto_0

    .line 382
    :sswitch_1
    const-string v1, "h5game_share"

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mWebViewToolModel:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/game/activity/GameActivity;->mWebViewToolModel:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 384
    new-instance v1, Lcom/didi/common/ui/webview/WebViewToolDialog;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewToolDialog;-><init>()V

    iget-object v2, p0, Lcom/didi/game/activity/GameActivity;->mWebViewToolModel:Ljava/util/List;

    iget-object v3, p0, Lcom/didi/game/activity/GameActivity;->mJsCallback:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    invoke-virtual {v1, p0, v2, v3}, Lcom/didi/common/ui/webview/WebViewToolDialog;->show(Landroid/app/Activity;Ljava/util/List;Lcom/didi/common/ui/webview/JSBridgeCallBack;)V

    goto :goto_0

    .line 388
    :sswitch_2
    const-string v1, "h5game_collect"

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 389
    invoke-direct {p0}, Lcom/didi/game/activity/GameActivity;->createDesktopShortcut()V

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6536\u85cf\u6210\u529f!\n\u60a8\u53ef\u4ee5\u4ece\u684c\u9762\u76f4\u63a5\u6253\u5f00\u300a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/game/activity/GameActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v2, v2, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u300b\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 395
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-gez v1, :cond_1

    .line 396
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 397
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 398
    :cond_1
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    if-gez v1, :cond_2

    .line 399
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 400
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 402
    :cond_2
    invoke-direct {p0}, Lcom/didi/game/activity/GameActivity;->changeMenuDrawerVisibility()V

    goto :goto_0

    .line 376
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x7f080397 -> :sswitch_0
        0x7f080398 -> :sswitch_1
        0x7f080399 -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/didi/common/ui/webview/WebActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 160
    iget-object v0, p0, Lcom/didi/game/activity/GameActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    iget-object v0, p0, Lcom/didi/game/activity/GameActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    iget-object v0, p0, Lcom/didi/game/activity/GameActivity;->mMenuIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/didi/game/activity/GameActivity;->getMenuIconLayoutInitParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v0, p0, Lcom/didi/game/activity/GameActivity;->mMenuDrawer:Landroid/view/View;

    invoke-direct {p0}, Lcom/didi/game/activity/GameActivity;->getMenuInRightLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v0, p0, Lcom/didi/game/activity/GameActivity;->mMenuDrawer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/didi/game/activity/GameActivity;->setFullScreen()V

    .line 139
    invoke-direct {p0}, Lcom/didi/game/activity/GameActivity;->handleIntent()V

    .line 141
    invoke-super {p0, p1}, Lcom/didi/common/ui/webview/WebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-direct {p0}, Lcom/didi/game/activity/GameActivity;->hideTitileBar()V

    .line 145
    invoke-virtual {p0}, Lcom/didi/game/activity/GameActivity;->getJavascriptBridge()Lcom/didi/common/ui/webview/JavascriptBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/game/activity/GameActivity;->mJsBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    .line 146
    invoke-direct {p0}, Lcom/didi/game/activity/GameActivity;->addJavaScriptInterfaces()V

    .line 148
    invoke-direct {p0}, Lcom/didi/game/activity/GameActivity;->initMenuView()V

    .line 149
    invoke-direct {p0}, Lcom/didi/game/activity/GameActivity;->initShare()V

    .line 151
    iget-object v0, p0, Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {v0}, Lcom/didi/game/model/H5game;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/game/activity/GameActivity;->parseUrl(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->getInstance(Ljava/lang/String;)Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/taxi/helper/TaxiPushHelper;->registerPositionPushListener(Lcom/didi/taxi/helper/TaxiPushHelper$OnDriverPositionReceivedListener;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/didi/game/activity/GameActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    iget-object v0, p0, Lcom/didi/game/activity/GameActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->removeListener(Ljava/lang/String;)V

    .line 192
    invoke-super {p0}, Lcom/didi/common/ui/webview/WebActivity;->onDestroy()V

    .line 193
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Lcom/didi/common/ui/webview/WebActivity;->onPause()V

    .line 172
    invoke-static {}, Lcom/didi/frame/MainActivity;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-static {}, Lcom/didi/common/util/TraceNetLog;->saveLog()V

    .line 174
    invoke-static {}, Lcom/didi/common/util/LogUtil;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Lcom/didi/common/util/TraceDebugLog;->saveDebugLog()V

    .line 177
    :cond_0
    new-instance v0, Lcom/didi/game/activity/GameActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/game/activity/GameActivity$1;-><init>(Lcom/didi/game/activity/GameActivity;)V

    invoke-virtual {v0}, Lcom/didi/game/activity/GameActivity$1;->start()V

    .line 184
    :cond_1
    return-void
.end method
