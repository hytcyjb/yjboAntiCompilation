.class public Lcom/didi/game/activity/GameEngineRuntimeActivity;
.super Lcom/didi/common/ui/webview/WebActivity;
.source "GameEngineRuntimeActivity.java"


# static fields
.field protected static final ALIGNPARENT_COUNTDOWN_TIME:I = 0x1388

.field public static final GAME_EXTRA:Ljava/lang/String; = "game"

.field public static final GAME_ICON:Ljava/lang/String; = "icon"

.field public static final GAME_ID:Ljava/lang/String; = "ID"

.field public static final GAME_LOAD_URL:Ljava/lang/String; = "egret_game_load_url"

.field public static final GAME_NAME:Ljava/lang/String; = "name"

.field public static final GAME_ORIENTATION:Ljava/lang/String; = "landscape"

.field public static final GAME_PLUGIN_ID:Ljava/lang/String; = "gameId"

.field public static final GAME_PLUGIN_NAME:Ljava/lang/String; = "pname"

.field public static final GAME_SHARE_URL:Ljava/lang/String; = "shareUrl"

.field public static final GAME_UPDATE_URL:Ljava/lang/String; = "egret_game_update_url"

.field public static final GAME_URL:Ljava/lang/String; = "url"

.field private static final ICON_ID:I = 0x1

.field protected static final MENU_SCALE_INTERVAL:I = 0x12c

.field protected static final MSG_HIDE_FLOAT_MENU_TO_LEFT:I = 0x65

.field protected static final MSG_HIDE_FLOAT_MENU_TO_RIGHT:I = 0x66

.field public static final ORIENTATION_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static sNewActivity:Lcom/didi/game/activity/GameEngineRuntimeActivity;


# instance fields
.field private mEgretGameEnginRuntime:Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;

.field mEntryProgressDialog:Landroid/app/ProgressDialog;

.field private mGame:Lcom/didi/game/model/H5game;

.field private mGameBusiness:Lcom/didi/game/model/GameBusiness;

.field mGameEnginRuntimeListener:Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;

.field private mGameEngineRuntime:Lcom/didi/game/plugin/runtime/GameEngineRuntime;

.field private mGamePlayerContainer:Landroid/widget/FrameLayout;

.field private mGamePluginName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLayaGameEnginRuntime:Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;

.field private mRootLayout:Landroid/view/ViewGroup;

.field mainHandler:Landroid/os/Handler;

.field private menuDrawer:Landroid/view/View;

.field private menuIcon:Landroid/widget/ImageView;

.field private menuLeftArrow:Landroid/view/View;

.field private menuRightArrow:Landroid/view/View;

.field private onMenuItemClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;-><init>()V

    .line 151
    new-instance v0, Lcom/didi/game/activity/GameEngineRuntimeActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity$2;-><init>(Lcom/didi/game/activity/GameEngineRuntimeActivity;)V

    iput-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGameEnginRuntimeListener:Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;

    .line 185
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mainHandler:Landroid/os/Handler;

    .line 502
    new-instance v0, Lcom/didi/game/activity/GameEngineRuntimeActivity$5;

    invoke-direct {v0, p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity$5;-><init>(Lcom/didi/game/activity/GameEngineRuntimeActivity;)V

    iput-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mHandler:Landroid/os/Handler;

    .line 561
    new-instance v0, Lcom/didi/game/activity/GameEngineRuntimeActivity$6;

    invoke-direct {v0, p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity$6;-><init>(Lcom/didi/game/activity/GameEngineRuntimeActivity;)V

    iput-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->onMenuItemClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/game/activity/GameEngineRuntimeActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGamePluginName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/game/activity/GameEngineRuntimeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->startEgretGameRuntime()V

    return-void
.end method

.method static synthetic access$1000(Lcom/didi/game/activity/GameEngineRuntimeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->changeMenuDrawerVisibility()V

    return-void
.end method

.method static synthetic access$1100(Lcom/didi/game/activity/GameEngineRuntimeActivity;)Lcom/didi/game/model/H5game;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/game/activity/GameEngineRuntimeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->startLayaGameRuntime()V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/game/activity/GameEngineRuntimeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->redirectH5GameActivity()V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/game/activity/GameEngineRuntimeActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/game/activity/GameEngineRuntimeActivity;Landroid/view/View;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->moveMenuIcon(Landroid/view/View;FF)V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/game/activity/GameEngineRuntimeActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/game/activity/GameEngineRuntimeActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuDrawer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/didi/game/activity/GameEngineRuntimeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->releaseEgretGameEngin()V

    return-void
.end method

.method static synthetic access$900(Lcom/didi/game/activity/GameEngineRuntimeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->createDesktopShortcut()V

    return-void
.end method

.method public static appendParamsToUrl(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;)Ljava/lang/String;
    .locals 2
    .parameter "url"
    .parameter "ap"

    .prologue
    .line 718
    if-nez p0, :cond_1

    .line 719
    const/4 p0, 0x0

    .line 735
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 721
    .restart local p0
    :cond_1
    if-eqz p1, :cond_0

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 725
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 728
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 729
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lnet/tsz/afinal/http/AjaxParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 732
    :cond_3
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private changeMenuDrawerVisibility()V
    .locals 10

    .prologue
    .line 640
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    const/4 v9, 0x1

    .line 641
    .local v9, isMenuInLeft:Z
    :goto_0
    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuDrawer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 642
    const/4 v0, 0x0

    .line 643
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v9, :cond_1

    .line 644
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

    .line 648
    .restart local v0       #anim:Landroid/view/animation/Animation;
    :goto_1
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 649
    new-instance v1, Lcom/didi/game/activity/GameEngineRuntimeActivity$8;

    invoke-direct {v1, p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity$8;-><init>(Lcom/didi/game/activity/GameEngineRuntimeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 663
    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuDrawer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 676
    :goto_2
    return-void

    .line 640
    .end local v0           #anim:Landroid/view/animation/Animation;
    .end local v9           #isMenuInLeft:Z
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 646
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

    .line 665
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_2
    const/4 v0, 0x0

    .line 666
    .restart local v0       #anim:Landroid/view/animation/Animation;
    if-eqz v9, :cond_3

    .line 667
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

    .line 671
    .restart local v0       #anim:Landroid/view/animation/Animation;
    :goto_3
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 672
    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuDrawer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 673
    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuDrawer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 674
    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuDrawer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_2

    .line 669
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
    .line 596
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/didi/game/activity/GameEngineRuntimeActivity$7;

    invoke-direct {v1, p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity$7;-><init>(Lcom/didi/game/activity/GameEngineRuntimeActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 634
    return-void
.end method

.method private genGameWebViewModel(Lcom/didi/game/model/H5game;)Lcom/didi/common/ui/webview/WebViewModel;
    .locals 6
    .parameter "game"

    .prologue
    .line 690
    new-instance v2, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v2}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 691
    .local v2, wvm:Lcom/didi/common/ui/webview/WebViewModel;
    invoke-virtual {p1}, Lcom/didi/game/model/H5game;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 692
    invoke-virtual {p1}, Lcom/didi/game/model/H5game;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 693
    invoke-virtual {p1}, Lcom/didi/game/model/H5game;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->share_title:Ljava/lang/String;

    .line 694
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

    .line 695
    invoke-virtual {p1}, Lcom/didi/game/model/H5game;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->share_icon_url:Ljava/lang/String;

    .line 696
    invoke-virtual {p1}, Lcom/didi/game/model/H5game;->getShareUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->share_url:Ljava/lang/String;

    .line 697
    invoke-virtual {p1}, Lcom/didi/game/model/H5game;->getSource()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    .line 699
    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v1

    .line 701
    .local v1, suuid:Ljava/lang/String;
    new-instance v0, Lnet/tsz/afinal/http/AjaxParams;

    invoke-direct {v0}, Lnet/tsz/afinal/http/AjaxParams;-><init>()V

    .line 702
    .local v0, builder:Lnet/tsz/afinal/http/AjaxParams;
    const-string v3, "appId"

    iget-object v4, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v3, "token"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v3, "channel"

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v3, "suuid"

    invoke-virtual {v0, v3, v1}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v3, "platform"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v3, "datatype"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v3, "appversion"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
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

    .line 711
    iget-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->appendParamsToUrl(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 713
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 714
    return-object v2
.end method

.method private getIntentExtra()V
    .locals 3

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "game"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/didi/game/model/H5game;

    iput-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    .line 345
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Lcom/didi/game/model/H5game;

    invoke-direct {v0}, Lcom/didi/game/model/H5game;-><init>()V

    iput-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    .line 347
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/game/model/H5game;->setID(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/game/model/H5game;->setName(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/game/model/H5game;->setUrl(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "icon"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/game/model/H5game;->setIconUrl(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "shareUrl"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/game/model/H5game;->setShareUrl(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    const-string v1, "shortcut_game"

    invoke-virtual {v0, v1}, Lcom/didi/game/model/H5game;->setSource(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Lcom/didi/game/model/H5game;->setScrrenOrientation(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/game/model/H5game;->setGameId(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "pname"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/game/model/H5game;->setPluginName(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "egret_game_load_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/game/model/H5game;->setEgretGameLoadUrl(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "egret_game_update_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/game/model/H5game;->setEgretGameUpdateUrl(Ljava/lang/String;)V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {v0}, Lcom/didi/game/model/H5game;->getPluginName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGamePluginName:Ljava/lang/String;

    .line 367
    return-void
.end method

.method private getMenuIconParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v1, -0x2

    .line 459
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 460
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x9

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 461
    const/16 v1, 0x28

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 462
    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 463
    return-object v0
.end method

.method private getMenuLeftLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x2

    .line 472
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 473
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 474
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 475
    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuLeftArrow:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 476
    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuRightArrow:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 477
    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuDrawer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 478
    return-object v0
.end method

.method private getMenuRightLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v1, -0x2

    const/4 v2, 0x1

    .line 487
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 488
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 489
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 490
    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuLeftArrow:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 491
    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuRightArrow:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 492
    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuDrawer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 493
    return-object v0
.end method

.method private initGameData()V
    .locals 3

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->getIntentExtra()V

    .line 190
    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-direct {p0, v1}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->genGameWebViewModel(Lcom/didi/game/model/H5game;)Lcom/didi/common/ui/webview/WebViewModel;

    move-result-object v0

    .line 191
    .local v0, wvm:Lcom/didi/common/ui/webview/WebViewModel;
    invoke-virtual {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "data_model"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 192
    return-void
.end method

.method private initGameView()V
    .locals 1

    .prologue
    .line 198
    const v0, 0x7f0300ac

    invoke-virtual {p0, v0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->setContentView(I)V

    .line 200
    const v0, 0x7f0803a7

    invoke-virtual {p0, v0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mRootLayout:Landroid/view/ViewGroup;

    .line 201
    const v0, 0x7f0803a8

    invoke-virtual {p0, v0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGamePlayerContainer:Landroid/widget/FrameLayout;

    .line 204
    invoke-direct {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->setMenuLayout()V

    .line 205
    return-void
.end method

.method private moveMenuIcon(Landroid/view/View;FF)V
    .locals 7
    .parameter "icon"
    .parameter "rawX"
    .parameter "rawY"

    .prologue
    const/4 v6, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 530
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 532
    .local v0, iconParams:Landroid/widget/RelativeLayout$LayoutParams;
    float-to-int v3, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 533
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-gez v3, :cond_2

    .line 534
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 539
    :cond_0
    :goto_0
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_3

    const/4 v1, 0x1

    .line 540
    .local v1, isMenuInLeft:Z
    :goto_1
    if-eqz v1, :cond_4

    .line 541
    iget-object v3, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuDrawer:Landroid/view/View;

    invoke-direct {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->getMenuLeftLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    const/16 v3, 0xb

    invoke-virtual {v0, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 543
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v3

    float-to-int v4, p2

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 544
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    if-gez v3, :cond_1

    .line 545
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 555
    :cond_1
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    return-void

    .line 535
    .end local v1           #isMenuInLeft:Z
    :cond_2
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    .line 536
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_3
    move v1, v2

    .line 539
    goto :goto_1

    .line 548
    .restart local v1       #isMenuInLeft:Z
    :cond_4
    iget-object v3, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuDrawer:Landroid/view/View;

    invoke-direct {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->getMenuRightLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    const/16 v3, 0x9

    invoke-virtual {v0, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 550
    float-to-int v3, p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 551
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-gez v3, :cond_1

    .line 552
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_2
.end method

.method private redirectH5GameActivity()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-static {p0, v0}, Lcom/didi/game/activity/GameActivity;->startActivity(Landroid/content/Context;Lcom/didi/game/model/H5game;)V

    .line 179
    invoke-virtual {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->finish()V

    .line 180
    return-void
.end method

.method private releaseEgretGameEngin()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGameEngineRuntime:Lcom/didi/game/plugin/runtime/GameEngineRuntime;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGameEngineRuntime:Lcom/didi/game/plugin/runtime/GameEngineRuntime;

    invoke-virtual {v0}, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->stop()V

    .line 407
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGameEngineRuntime:Lcom/didi/game/plugin/runtime/GameEngineRuntime;

    .line 408
    return-void
.end method

.method private setMenuLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 227
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuIcon:Landroid/widget/ImageView;

    .line 228
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 229
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuIcon:Landroid/widget/ImageView;

    const v1, 0x7f0201b3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mRootLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->getMenuIconParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a6

    iget-object v2, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mRootLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuDrawer:Landroid/view/View;

    .line 234
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuDrawer:Landroid/view/View;

    const v1, 0x7f080396

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuLeftArrow:Landroid/view/View;

    .line 235
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuDrawer:Landroid/view/View;

    const v1, 0x7f08039a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuRightArrow:Landroid/view/View;

    .line 237
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuDrawer:Landroid/view/View;

    invoke-direct {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->getMenuRightLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuDrawer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mRootLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuDrawer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 241
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuDrawer:Landroid/view/View;

    const v1, 0x7f080397

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->onMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuDrawer:Landroid/view/View;

    const v1, 0x7f080399

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->onMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {v0}, Lcom/didi/game/model/H5game;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuDrawer:Landroid/view/View;

    const v1, 0x7f080398

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 249
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->onMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/didi/game/activity/GameEngineRuntimeActivity$3;

    invoke-direct {v1, p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity$3;-><init>(Lcom/didi/game/activity/GameEngineRuntimeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 298
    return-void
.end method

.method private setScrrenOrientation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 327
    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    if-eqz v1, :cond_2

    .line 328
    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    invoke-virtual {v1}, Lcom/didi/game/model/H5game;->getScrrenOrientation()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, orientation:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    :cond_0
    invoke-virtual {p0, v2}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->setRequestedOrientation(I)V

    .line 337
    .end local v0           #orientation:Ljava/lang/String;
    :goto_0
    return-void

    .line 332
    .restart local v0       #orientation:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 335
    .end local v0           #orientation:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v2}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private setWindowFeature()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->requestWindowFeature(I)Z

    .line 212
    invoke-virtual {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 213
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Lcom/didi/game/model/H5game;)V
    .locals 2
    .parameter "context"
    .parameter "game"

    .prologue
    .line 373
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/didi/game/activity/GameEngineRuntimeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 374
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "game"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 376
    return-void
.end method

.method private startEgretGameRuntime()V
    .locals 4

    .prologue
    .line 142
    const-string v0, "-------->GameEngineRuntimeActivity startEgretGameRuntime"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;

    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGamePlayerContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    iget-object v3, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGameEnginRuntimeListener:Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/didi/game/plugin/egret/EgretGameEngineRuntime;-><init>(Landroid/app/Activity;Landroid/widget/FrameLayout;Lcom/didi/game/model/H5game;Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;)V

    iput-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGameEngineRuntime:Lcom/didi/game/plugin/runtime/GameEngineRuntime;

    .line 144
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGameEngineRuntime:Lcom/didi/game/plugin/runtime/GameEngineRuntime;

    invoke-virtual {v0}, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->run()V

    .line 145
    return-void
.end method

.method private startLayaGameRuntime()V
    .locals 4

    .prologue
    .line 134
    new-instance v0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;

    iget-object v1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGamePlayerContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGame:Lcom/didi/game/model/H5game;

    iget-object v3, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGameEnginRuntimeListener:Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;-><init>(Landroid/app/Activity;Landroid/widget/FrameLayout;Lcom/didi/game/model/H5game;Lcom/didi/game/plugin/service/IGameEnginRuntimeListener;)V

    iput-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGameEngineRuntime:Lcom/didi/game/plugin/runtime/GameEngineRuntime;

    .line 135
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGameEngineRuntime:Lcom/didi/game/plugin/runtime/GameEngineRuntime;

    invoke-virtual {v0}, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->run()V

    .line 136
    return-void
.end method

.method private switchGameEnginRuntime()V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/didi/game/activity/GameEngineRuntimeActivity$1;

    invoke-direct {v1, p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity$1;-><init>(Lcom/didi/game/activity/GameEngineRuntimeActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    return-void
.end method


# virtual methods
.method protected cancelProgressDialog()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mEntryProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mEntryProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mEntryProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 319
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 450
    invoke-super {p0, p1}, Lcom/didi/common/ui/webview/WebActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 451
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 94
    const v0, 0x7f04001b

    const v1, 0x7f04001c

    invoke-virtual {p0, v0, v1}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->overridePendingTransition(II)V

    .line 96
    invoke-direct {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->setWindowFeature()V

    .line 98
    invoke-direct {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->initGameData()V

    .line 100
    invoke-super {p0, p1}, Lcom/didi/common/ui/webview/WebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-direct {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->setScrrenOrientation()V

    .line 104
    invoke-direct {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->initGameView()V

    .line 106
    invoke-direct {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->switchGameEnginRuntime()V

    .line 107
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 434
    invoke-super {p0}, Lcom/didi/common/ui/webview/WebActivity;->onDestroy()V

    .line 435
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 436
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 437
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mLayaGameEnginRuntime:Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mLayaGameEnginRuntime:Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;

    invoke-virtual {v0}, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->onDestroy()V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGameEngineRuntime:Lcom/didi/game/plugin/runtime/GameEngineRuntime;

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGameEngineRuntime:Lcom/didi/game/plugin/runtime/GameEngineRuntime;

    invoke-virtual {v0}, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->stop()V

    .line 443
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 444
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "pKeyCode"
    .parameter "pKeyEvent"

    .prologue
    .line 382
    packed-switch p1, :pswitch_data_0

    .line 395
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/webview/WebActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 384
    :pswitch_0
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGamePluginName:Ljava/lang/String;

    const-string v1, "egret"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->finish()V

    goto :goto_0

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGamePluginName:Ljava/lang/String;

    const-string v1, "laya"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mLayaGameEnginRuntime:Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mLayaGameEnginRuntime:Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;

    invoke-virtual {v0}, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->onDestroy()V

    goto :goto_1

    .line 382
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 412
    invoke-super {p0}, Lcom/didi/common/ui/webview/WebActivity;->onPause()V

    .line 413
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGameEngineRuntime:Lcom/didi/game/plugin/runtime/GameEngineRuntime;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGameEngineRuntime:Lcom/didi/game/plugin/runtime/GameEngineRuntime;

    invoke-virtual {v0}, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->onPause()V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGameEngineRuntime:Lcom/didi/game/plugin/runtime/GameEngineRuntime;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGameEngineRuntime:Lcom/didi/game/plugin/runtime/GameEngineRuntime;

    invoke-virtual {v0}, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->onPause()V

    .line 419
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 685
    invoke-super {p0, p1}, Lcom/didi/common/ui/webview/WebActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 686
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 423
    invoke-super {p0}, Lcom/didi/common/ui/webview/WebActivity;->onResume()V

    .line 424
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGameEngineRuntime:Lcom/didi/game/plugin/runtime/GameEngineRuntime;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGameEngineRuntime:Lcom/didi/game/plugin/runtime/GameEngineRuntime;

    invoke-virtual {v0}, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->onResume()V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGameEngineRuntime:Lcom/didi/game/plugin/runtime/GameEngineRuntime;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mGameEngineRuntime:Lcom/didi/game/plugin/runtime/GameEngineRuntime;

    invoke-virtual {v0}, Lcom/didi/game/plugin/runtime/GameEngineRuntime;->onResume()V

    .line 430
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 680
    invoke-super {p0, p1}, Lcom/didi/common/ui/webview/WebActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 681
    return-void
.end method

.method protected showProgressDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "message"

    .prologue
    const/4 v0, 0x1

    .line 304
    invoke-static {p0, p1, p2, v0, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mEntryProgressDialog:Landroid/app/ProgressDialog;

    .line 305
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mEntryProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 306
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mEntryProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/didi/game/activity/GameEngineRuntimeActivity$4;

    invoke-direct {v1, p0}, Lcom/didi/game/activity/GameEngineRuntimeActivity$4;-><init>(Lcom/didi/game/activity/GameEngineRuntimeActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 311
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity;->mEntryProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 312
    return-void
.end method
