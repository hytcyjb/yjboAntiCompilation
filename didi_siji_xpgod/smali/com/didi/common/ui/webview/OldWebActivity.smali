.class public Lcom/didi/common/ui/webview/OldWebActivity;
.super Lcom/didi/common/base/BaseActivity;
.source "OldWebActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# static fields
.field public static final ACTION_INTENT_BROADCAST_CLOSE:Ljava/lang/String; = "action_intent_braodcast_close"

.field public static final DATA_MODEL:Ljava/lang/String; = "data_model"

.field public static final TICKET_ID:Ljava/lang/String; = "dcq_id"

.field public static final TICKET_RESULT_SCHEMA:Ljava/lang/String; = "dcq:"


# instance fields
.field private final TAG:Ljava/lang/String;

.field activityShare:Lcom/didi/common/model/ActivityShare;

.field private backListener:Landroid/view/View$OnClickListener;

.field protected btnBack:Landroid/widget/Button;

.field private btnClose:Landroid/view/View;

.field protected btnShare:Landroid/widget/Button;

.field private currentWebUrl:Ljava/lang/String;

.field private forwardCnt:I

.field private imgError:Landroid/widget/ImageView;

.field protected imgMenu:Landroid/widget/ImageView;

.field private isCanceled:Z

.field private itemPosition:Ljava/lang/String;

.field private itemTitle:Ljava/lang/String;

.field protected javascriptBridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

.field private mDataViewToolModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/ui/webview/WebViewToolModel;",
            ">;"
        }
    .end annotation
.end field

.field mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field private mShareView:Lcom/didi/taxi/ui/component/ShareView;

.field protected mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

.field private onClickListenerReload:Landroid/view/View$OnClickListener;

.field private startInitTime:J

.field private startInternalTime:J

.field private ticketId:Ljava/lang/String;

.field private titleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private txtError:Landroid/widget/TextView;

.field private txtTitle:Landroid/widget/TextView;

.field private viewError:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/didi/common/base/BaseActivity;-><init>()V

    .line 69
    const-string v0, "webactivity"

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->TAG:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v0}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->viewError:Landroid/view/View;

    .line 83
    new-instance v0, Lcom/didi/common/model/ActivityShare;

    invoke-direct {v0}, Lcom/didi/common/model/ActivityShare;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->titleMap:Ljava/util/HashMap;

    .line 85
    iput-boolean v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->isCanceled:Z

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemTitle:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemPosition:Ljava/lang/String;

    .line 96
    iput-wide v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInitTime:J

    .line 97
    iput-wide v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInternalTime:J

    .line 98
    iput v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->forwardCnt:I

    .line 116
    new-instance v0, Lcom/didi/common/ui/webview/OldWebActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/webview/OldWebActivity$1;-><init>(Lcom/didi/common/ui/webview/OldWebActivity;)V

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 262
    new-instance v0, Lcom/didi/common/ui/webview/OldWebActivity$3;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/webview/OldWebActivity$3;-><init>(Lcom/didi/common/ui/webview/OldWebActivity;)V

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->onClickListenerReload:Landroid/view/View$OnClickListener;

    .line 634
    new-instance v0, Lcom/didi/common/ui/webview/OldWebActivity$7;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/webview/OldWebActivity$7;-><init>(Lcom/didi/common/ui/webview/OldWebActivity;)V

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->backListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/webview/OldWebActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->currentWebUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/didi/common/ui/webview/OldWebActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->currentWebUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/didi/common/ui/webview/OldWebActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->ticketId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/common/ui/webview/OldWebActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->titleMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/didi/common/ui/webview/OldWebActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->ticketId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->txtTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/didi/common/ui/webview/OldWebActivity;)Lcom/didi/common/ui/webview/OldCommonWebViewEx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/didi/common/ui/webview/OldWebActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mDataViewToolModel:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/didi/common/ui/webview/OldWebActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mDataViewToolModel:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/didi/common/ui/webview/OldWebActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->showShareDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/common/ui/webview/OldWebActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->finishWithResult()V

    return-void
.end method

.method static synthetic access$302(Lcom/didi/common/ui/webview/OldWebActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->isCanceled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/didi/common/ui/webview/OldWebActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->goBack()V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/common/ui/webview/OldWebActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/didi/common/ui/webview/OldWebActivity;->setWebTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->viewError:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->imgError:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->txtError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/didi/common/ui/webview/OldWebActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->onClickListenerReload:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private exitEntryTraceLog()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----------------soure2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInitTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 802
    const-string v0, "menu_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 803
    const-string v0, "pxxmenu03_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=menu][pxxmenu_endtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][time_interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInitTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    const-string v0, "footbar_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 806
    const-string v0, "pexwfp03_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=footbar][pexwfp_endtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][time_interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInitTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 808
    :cond_2
    const-string v0, "shortcut_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 809
    const-string v0, "pexwsc03_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=shortcut][pexwshortcut_endtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][time_interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInitTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 812
    :cond_3
    const-string v0, "footbar_food"

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    const-string v0, "pexwsc03_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=footfood][pexwshortcut_endtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][time_interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInitTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private filterUrl(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v0, 0x1

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView filterUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 336
    const-string v1, "dcq:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    const-string v1, "dcq_id"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    const-string v1, "dcq_id"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "dcq_id"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->ticketId:Ljava/lang/String;

    .line 339
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->ticketId:Ljava/lang/String;

    invoke-static {v1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->finishWithResult()V

    .line 345
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView filterUrl ticketId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->ticketId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 356
    :goto_1
    return v0

    .line 342
    :cond_0
    iput-boolean v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->isCanceled:Z

    .line 343
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->goBack()V

    goto :goto_0

    .line 347
    :cond_1
    const-string v1, "WebView filterUrl finish:"

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->finish()V

    goto :goto_1

    .line 352
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebView filterUrl loadUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 356
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private finishWithResult()V
    .locals 3

    .prologue
    .line 360
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 361
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "taxi_ticket"

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->ticketId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/didi/common/ui/webview/OldWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 363
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->finish()V

    .line 364
    return-void
.end method

.method private goBack()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    invoke-interface {v0}, Lcom/didi/common/ui/webview/JSBridgeCallBack;->hideEntrance()V

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------------------------webview goback--------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->currentWebUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->gobackTraceLog()V

    .line 290
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 291
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->viewError:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 292
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->finish()V

    .line 311
    :cond_1
    :goto_0
    return-void

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->goBack()V

    .line 296
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b040a

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b040b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/common/ui/webview/OldWebActivity;->setWebTitle(Ljava/lang/String;)V

    .line 299
    :cond_3
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->setTitleBarRightCloseTxt()V

    .line 300
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v0, v0, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/common/ui/webview/OldWebActivity;->setWebTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_4
    iget-boolean v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->isCanceled:Z

    if-eqz v0, :cond_5

    .line 306
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->finishWithResult()V

    goto :goto_0

    .line 308
    :cond_5
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->finish()V

    goto :goto_0
.end method

.method private gobackTraceLog()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 820
    iget v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->forwardCnt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->forwardCnt:I

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------webview-gobackTraceLog: title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " forwordcnt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->forwardCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 822
    iget v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->forwardCnt:I

    if-gtz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemPosition:Ljava/lang/String;

    invoke-static {v0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 824
    const-string v0, "menu_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 825
    const-string v0, "pxxmenu04_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=menu][pxxmenu_endtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][time_interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInternalTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    const-string v0, "footbar_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 830
    const-string v0, "pexwfp04_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=footbar][pexwfp_endtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][time_interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInternalTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 834
    :cond_2
    const-string v0, "shortcut_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 835
    const-string v0, "pexwsc04_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=shortcut][pexwshortcut_endtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][time_interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInternalTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 839
    :cond_3
    const-string v0, "footbar_food"

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    const-string v0, "pexwsc04_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=footfood][pexwshortcut_endtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][time_interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInternalTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 392
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    invoke-static {v2}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->getInstance(Lcom/didi/common/ui/webview/OldCommonWebViewEx;)Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    .line 393
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    const-string v3, "DidiJSBridge"

    invoke-virtual {v2, p0, v3}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->addJavaScriptBridgerInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    invoke-virtual {v2}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->registeJsFunctions()V

    .line 395
    new-instance v2, Lcom/didi/common/ui/webview/OldWebActivity$5;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/OldWebActivity$5;-><init>(Lcom/didi/common/ui/webview/OldWebActivity;)V

    iput-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    .line 505
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    iget-object v3, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mJsBridgeCallBack:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->setJsBridgeCallBack(Lcom/didi/common/ui/webview/JSBridgeCallBack;)V

    .line 507
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "data_model"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "data_model"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/didi/common/ui/webview/WebViewModel;

    iput-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    .line 509
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->txtTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v3, v3, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    :cond_0
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    iget-object v3, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->setWebViewModel(Lcom/didi/common/ui/webview/WebViewModel;)V

    .line 512
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v2, v2, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    iput-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->currentWebUrl:Ljava/lang/String;

    .line 514
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v2, v2, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    invoke-static {v2}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 515
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->finish()V

    .line 556
    :goto_0
    return-void

    .line 519
    :cond_1
    const-string v2, ""

    const-string v3, "\u6b63\u5728\u52a0\u8f7d,\u8bf7\u7a0d\u5019..."

    invoke-virtual {p0, v2, v3}, Lcom/didi/common/ui/webview/OldWebActivity;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v0, v2, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 522
    .local v0, mUrl:Ljava/lang/String;
    const-string v2, "webactivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "source Url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v4, v4, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "isPostBaseParams:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-boolean v4, v4, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  customparams:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v4, v4, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-boolean v2, v2, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    if-eqz v2, :cond_8

    .line 527
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    invoke-virtual {v2}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->getWebViewCommonParams()Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, strCommonParams:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v2, v2, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    invoke-static {v2}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 529
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v2, v2, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v3, v3, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 536
    :cond_2
    :goto_1
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 553
    .end local v1           #strCommonParams:Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->initEntryTraceLog()V

    .line 554
    const-string v2, "webactivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    invoke-virtual {v2, v0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 532
    .restart local v1       #strCommonParams:Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v3, v3, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 538
    :cond_5
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_7

    .line 539
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 542
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 545
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 549
    .end local v1           #strCommonParams:Ljava/lang/String;
    :cond_8
    const-string v2, "token"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-boolean v2, v2, Lcom/didi/common/ui/webview/WebViewModel;->isFromBuiness:Z

    if-nez v2, :cond_3

    .line 550
    const-string v2, "(token=[^&]*)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method private initEntryTraceLog()V
    .locals 4

    .prologue
    .line 751
    const-string v0, "menu_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInitTime:J

    .line 753
    const-string v0, "pxxmenu03_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=menu][pxxmenu_starttime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInitTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----------------soure:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInitTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 765
    return-void

    .line 754
    :cond_1
    const-string v0, "footbar_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 755
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInitTime:J

    .line 756
    const-string v0, "pexwfp03_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=footbar][pexwfp_starttime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInitTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 757
    :cond_2
    const-string v0, "shortcut_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 758
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInitTime:J

    .line 759
    const-string v0, "pexwsc03_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=shortcut][pexwshortcut_starttime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInitTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 760
    :cond_3
    const-string v0, "footbar_food"

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInitTime:J

    .line 762
    const-string v0, "pexwsc03_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=footfood][pexwshortcut_starttime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInitTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private initViews()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 127
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/OldWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    .line 128
    const v0, 0x7f0801a3

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/OldWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->txtTitle:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f080300

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/OldWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->btnBack:Landroid/widget/Button;

    .line 130
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->btnBack:Landroid/widget/Button;

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v0, 0x7f08030a

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/OldWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->btnClose:Landroid/view/View;

    .line 132
    const v0, 0x7f08030c

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/OldWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->imgMenu:Landroid/widget/ImageView;

    .line 133
    const v0, 0x7f08030b

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/OldWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->btnShare:Landroid/widget/Button;

    .line 136
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/OldWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->viewError:Landroid/view/View;

    .line 137
    const v0, 0x7f080060

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/OldWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->imgError:Landroid/widget/ImageView;

    .line 138
    const v0, 0x7f080061

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/OldWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->txtError:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    new-instance v1, Lcom/didi/common/ui/webview/OldWebActivity$2;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/webview/OldWebActivity$2;-><init>(Lcom/didi/common/ui/webview/OldWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->setWebViewCallBack(Lcom/didi/common/ui/webview/OldCommonWebViewEx$WebViewCallBack;)V

    .line 260
    return-void
.end method

.method private internalEntryTraceLog()V
    .locals 4

    .prologue
    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----------------soure:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " itemPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " forwardCnt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->forwardCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----------------soure:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " itemPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " forwardCnt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->forwardCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemPosition:Ljava/lang/String;

    invoke-static {v0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 774
    iget v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->forwardCnt:I

    if-gtz v0, :cond_1

    .line 775
    const-string v0, "menu_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 776
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInternalTime:J

    .line 777
    const-string v0, "pxxmenu04_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=menu][pxxmenu_starttime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInternalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :cond_0
    :goto_0
    iget v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->forwardCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->forwardCnt:I

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------webview-gobackTraceLog: title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " forwordcnt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->forwardCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 795
    const-string v0, "pxxwfp01_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :cond_1
    return-void

    .line 779
    :cond_2
    const-string v0, "footbar_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 780
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInternalTime:J

    .line 781
    const-string v0, "pexwfp04_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=footbar][pexwfp_starttime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInternalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 783
    :cond_3
    const-string v0, "shortcut_game"

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 784
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInternalTime:J

    .line 785
    const-string v0, "pexwsc04_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=shortcut][pexwshortcut_starttime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInternalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 787
    :cond_4
    const-string v0, "footbar_food"

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInternalTime:J

    .line 789
    const-string v0, "pexwsc04_sw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[menu_type=1][pxxgame_source=footfood][pexwshortcut_starttime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->startInternalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setTitleBarRightCloseTxt()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-boolean v0, v0, Lcom/didi/common/ui/webview/WebViewModel;->isShowCloseView:Z

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->btnClose:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->btnClose:Landroid/view/View;

    new-instance v1, Lcom/didi/common/ui/webview/OldWebActivity$4;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/webview/OldWebActivity$4;-><init>(Lcom/didi/common/ui/webview/OldWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->btnClose:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setWebTitle(Ljava/lang/String;)V
    .locals 4
    .parameter "title"

    .prologue
    .line 560
    :try_start_0
    invoke-static {p1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 561
    const-string v2, "[0-9]*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 562
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 563
    .local v0, isNum:Ljava/util/regex/Matcher;
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-boolean v2, v2, Lcom/didi/common/ui/webview/WebViewModel;->canChangeWebViewTitle:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NOT FOUND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 564
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    .end local v0           #isNum:Ljava/util/regex/Matcher;
    .end local v1           #pattern:Ljava/util/regex/Pattern;
    :goto_0
    return-void

    .line 566
    .restart local v0       #isNum:Ljava/util/regex/Matcher;
    .restart local v1       #pattern:Ljava/util/regex/Pattern;
    :cond_0
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->txtTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v3, v3, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 571
    .end local v0           #isNum:Ljava/util/regex/Matcher;
    .end local v1           #pattern:Ljava/util/regex/Pattern;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 569
    :cond_1
    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity;->txtTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v3, v3, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private showShareDialog()V
    .locals 6

    .prologue
    .line 576
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 577
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 578
    .local v1, win:Landroid/view/Window;
    new-instance v3, Lcom/didi/taxi/ui/component/ShareView;

    invoke-virtual {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/didi/taxi/ui/component/ShareView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mShareView:Lcom/didi/taxi/ui/component/ShareView;

    .line 579
    iget-object v3, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mShareView:Lcom/didi/taxi/ui/component/ShareView;

    invoke-static {v3}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 580
    iget-object v3, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mShareView:Lcom/didi/taxi/ui/component/ShareView;

    iget-object v4, p0, Lcom/didi/common/ui/webview/OldWebActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    invoke-virtual {v3, v4}, Lcom/didi/taxi/ui/component/ShareView;->setShare(Lcom/didi/common/model/ActivityShare;)V

    .line 581
    iget-object v3, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mShareView:Lcom/didi/taxi/ui/component/ShareView;

    invoke-virtual {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/didi/taxi/ui/component/ShareView;->setBackgroundColor(I)V

    .line 582
    iget-object v3, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mShareView:Lcom/didi/taxi/ui/component/ShareView;

    invoke-virtual {v1, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 583
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v1, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 584
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 585
    .local v2, wl:Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x11

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WebView showShareDialog : --- title:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/ui/webview/OldWebActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    iget-object v4, v4, Lcom/didi/common/model/ActivityShare;->titleWX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " content:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/ui/webview/OldWebActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    iget-object v4, v4, Lcom/didi/common/model/ActivityShare;->contentWX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/ui/webview/OldWebActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    iget-object v4, v4, Lcom/didi/common/model/ActivityShare;->picWXUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " picurl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/ui/webview/OldWebActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    iget-object v4, v4, Lcom/didi/common/model/ActivityShare;->picWX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " localimg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/ui/webview/OldWebActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    iget v4, v4, Lcom/didi/common/model/ActivityShare;->localImg:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isloadimig:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/ui/webview/OldWebActivity;->activityShare:Lcom/didi/common/model/ActivityShare;

    iget-boolean v4, v4, Lcom/didi/common/model/ActivityShare;->isLoadNetImg:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 589
    iget-object v3, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mShareView:Lcom/didi/taxi/ui/component/ShareView;

    new-instance v4, Lcom/didi/common/ui/webview/OldWebActivity$6;

    invoke-direct {v4, p0, v0}, Lcom/didi/common/ui/webview/OldWebActivity$6;-><init>(Lcom/didi/common/ui/webview/OldWebActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Lcom/didi/taxi/ui/component/ShareView;->setListener(Lcom/didi/taxi/ui/component/ShareView$ShareListener;)V

    .line 596
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 597
    return-void
.end method


# virtual methods
.method public callHandler(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cmd"

    .prologue
    const/4 v0, 0x0

    .line 367
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    invoke-virtual {v1, p1, v0, v0}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 370
    :cond_0
    return-object v0
.end method

.method public callHandler(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cmd"
    .parameter "params"

    .prologue
    const/4 v0, 0x0

    .line 374
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    invoke-virtual {v1, p1, p2, v0}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 377
    :cond_0
    return-object v0
.end method

.method public callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "cmd"
    .parameter "params"
    .parameter "o"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    invoke-virtual {v0, p1, p2, p3}, Lcom/didi/common/ui/webview/OldJavaScriptBridge;->callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 384
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected cancelProgressDialog()V
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 687
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 664
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->finish()V

    .line 665
    const-string v0, "--------------------------webview finish--------"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 666
    const v0, 0x7f040019

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/didi/common/ui/webview/OldWebActivity;->overridePendingTransition(II)V

    .line 667
    return-void
.end method

.method public getCustomParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    iget-object v0, v0, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    return-object v0
.end method

.method public getJavascriptBridge()Lcom/didi/common/ui/webview/OldJavaScriptBridge;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    return-object v0
.end method

.method public getmCommonWebView()Lcom/didi/common/ui/webview/OldCommonWebViewEx;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const v1, 0x7f04001b

    const v2, 0x7f04001c

    invoke-virtual {p0, v1, v2}, Lcom/didi/common/ui/webview/OldWebActivity;->overridePendingTransition(II)V

    .line 107
    const v1, 0x7f0300d7

    invoke-virtual {p0, v1}, Lcom/didi/common/ui/webview/OldWebActivity;->setContentView(I)V

    .line 108
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->initViews()V

    .line 109
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->initData()V

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action_intent_braodcast_close"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, mIntentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/didi/common/ui/webview/OldWebActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 622
    const-string v0, "--------------------------webview ondstroy--------"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 623
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onDestroy()V

    .line 624
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 625
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->removeAllViews()V

    .line 626
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->destroy()V

    .line 627
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->forwardCnt:I

    .line 628
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->exitEntryTraceLog()V

    .line 629
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->gobackTraceLog()V

    .line 631
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/OldWebActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 632
    return-void
.end method

.method protected onPause()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 602
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onPause()V

    .line 603
    const-string v0, "--------------------------webview onpause--------"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->clearAnimation()V

    .line 605
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 606
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->onPause()V

    .line 608
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 613
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onResume()V

    .line 614
    const-string v0, "--------------------------webview onresume--------"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 615
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 616
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->onResume()V

    .line 618
    :cond_0
    return-void
.end method

.method protected parseInnerUrl(Ljava/lang/String;)V
    .locals 10
    .parameter "url"

    .prologue
    const/16 v9, 0x26

    const/4 v8, 0x0

    .line 721
    const-string v3, "cellname="

    .line 722
    .local v3, cellnameKey:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 723
    .local v4, cellnameKeyLen:I
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 724
    .local v6, name:Ljava/lang/String;
    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 725
    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 728
    :cond_0
    const-string v1, "cellid="

    .line 729
    .local v1, cellidKey:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 731
    .local v2, cellidKeyLen:I
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, cell:Ljava/lang/String;
    const-string v7, "&"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 733
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 735
    :cond_1
    invoke-static {v6}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 737
    :try_start_0
    const-string v7, "utf-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 742
    :cond_2
    :goto_0
    invoke-static {v6}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 748
    :cond_3
    :goto_1
    return-void

    .line 738
    :catch_0
    move-exception v5

    .line 739
    .local v5, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 745
    .end local v5           #e:Ljava/io/UnsupportedEncodingException;
    :cond_4
    const-string v7, "pexwsc05_sw"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[cellname="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "][cell="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "------webview-pexwsc05_sw url:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cellname:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cell:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected parseUrl(Ljava/lang/String;)V
    .locals 10
    .parameter "url"

    .prologue
    const/16 v9, 0x26

    const/4 v8, 0x0

    .line 690
    const-string v4, "title="

    .line 691
    .local v4, titleKey:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 692
    .local v5, titleKeyLen:I
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 693
    .local v3, title:Ljava/lang/String;
    const-string v6, "&"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 694
    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 697
    :cond_0
    const-string v2, "position="

    .line 698
    .local v2, positionKey:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 699
    .local v1, posKeyLen:I
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemPosition:Ljava/lang/String;

    .line 700
    iget-object v6, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemPosition:Ljava/lang/String;

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 701
    iget-object v6, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemPosition:Ljava/lang/String;

    iget-object v7, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemPosition:Ljava/lang/String;

    .line 703
    :cond_1
    invoke-static {v3}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 705
    :try_start_0
    const-string v6, "utf-8"

    invoke-static {v3, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 710
    :cond_2
    :goto_0
    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 717
    :cond_3
    :goto_1
    return-void

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 713
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_4
    iput-object v3, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemTitle:Ljava/lang/String;

    .line 714
    invoke-direct {p0}, Lcom/didi/common/ui/webview/OldWebActivity;->internalEntryTraceLog()V

    .line 715
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "------webview-find url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " title:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " position:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/didi/common/ui/webview/OldWebActivity;->itemPosition:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setJavascriptBridge(Lcom/didi/common/ui/webview/OldJavaScriptBridge;)V
    .locals 0
    .parameter "javascriptBridge"

    .prologue
    .line 659
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/OldJavaScriptBridge;

    .line 660
    return-void
.end method

.method public setmCommonWebView(Lcom/didi/common/ui/webview/OldCommonWebViewEx;)V
    .locals 0
    .parameter "mCommonWebView"

    .prologue
    .line 647
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    .line 648
    return-void
.end method

.method protected showProgressDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "message"

    .prologue
    const/4 v0, 0x1

    .line 672
    invoke-static {p0, p1, p2, v0, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 673
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 674
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/didi/common/ui/webview/OldWebActivity$8;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/webview/OldWebActivity$8;-><init>(Lcom/didi/common/ui/webview/OldWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 680
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 681
    return-void
.end method
