.class public Lcom/didi/ddrive/ui/component/DDriveBottomBar;
.super Landroid/widget/RelativeLayout;
.source "DDriveBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/ui/component/DDriveBottomBar$DDriveBtnClickListener;
    }
.end annotation


# instance fields
.field private mBtnConfig:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$Button;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutBar:Lx/RelativeLayout;

.field private mLayoutBtn:Lx/LinearLayout;

.field private mListener:Lcom/didi/ddrive/listener/DDriveRealtimeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->init()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/didi/ddrive/ui/component/DDriveBottomBar;)Lcom/didi/ddrive/listener/DDriveRealtimeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->mListener:Lcom/didi/ddrive/listener/DDriveRealtimeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/ddrive/ui/component/DDriveBottomBar;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->mBtnConfig:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/ddrive/ui/component/DDriveBottomBar;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->jumpToWeb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030093

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, view:Landroid/view/View;
    const v1, 0x7f08034a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/RelativeLayout;

    iput-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->mLayoutBar:Lx/RelativeLayout;

    .line 52
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->mLayoutBar:Lx/RelativeLayout;

    const v2, 0x7f020296

    invoke-virtual {v1, v2}, Lx/RelativeLayout;->setBackgroundResource(I)V

    .line 53
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->mLayoutBar:Lx/RelativeLayout;

    new-instance v2, Lcom/didi/ddrive/ui/component/DDriveBottomBar$1;

    invoke-direct {v2, p0}, Lcom/didi/ddrive/ui/component/DDriveBottomBar$1;-><init>(Lcom/didi/ddrive/ui/component/DDriveBottomBar;)V

    invoke-virtual {v1, v2}, Lx/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v1, 0x7f08034d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/LinearLayout;

    iput-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->mLayoutBtn:Lx/LinearLayout;

    .line 63
    return-void
.end method

.method private jumpToWeb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "url"
    .parameter "title"

    .prologue
    .line 125
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 126
    .local v1, model:Lcom/didi/common/ui/webview/WebViewModel;
    iput-object p1, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 127
    iput-object p2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 131
    return-void
.end method

.method private setStyle(Lx/TextView;I)V
    .locals 1
    .parameter "view"
    .parameter "style"

    .prologue
    .line 94
    if-nez p2, :cond_0

    .line 95
    const v0, 0x7f070047

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lx/TextView;->setTextColor(I)V

    .line 96
    const v0, 0x7f020107

    invoke-virtual {p1, v0}, Lx/TextView;->setBackgroundResource(I)V

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    const v0, 0x7f070001

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lx/TextView;->setTextColor(I)V

    .line 99
    const v0, 0x7f020102

    invoke-virtual {p1, v0}, Lx/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public setBottomContent(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$Button;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, ddrivecon:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$Button;>;"
    if-nez p1, :cond_1

    .line 91
    :cond_0
    return-void

    .line 72
    :cond_1
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->mBtnConfig:Ljava/util/ArrayList;

    .line 73
    iget-object v5, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->mLayoutBar:Lx/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lx/RelativeLayout;->setVisibility(I)V

    .line 74
    iget-object v5, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->mLayoutBtn:Lx/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lx/LinearLayout;->setVisibility(I)V

    .line 75
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 76
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 77
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$Button;

    .line 78
    .local v0, config:Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$Button;
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030086

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lx/TextView;

    .line 79
    .local v4, view:Lx/TextView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f80

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 81
    const/4 v5, 0x1

    if-le v2, v5, :cond_2

    if-lez v1, :cond_2

    .line 82
    const/16 v5, 0x14

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 84
    :cond_2
    iget-object v5, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->mLayoutBtn:Lx/LinearLayout;

    invoke-virtual {v5, v4, v3}, Lx/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v5, Lcom/didi/ddrive/ui/component/DDriveBottomBar$DDriveBtnClickListener;

    invoke-direct {v5, p0, v1}, Lcom/didi/ddrive/ui/component/DDriveBottomBar$DDriveBtnClickListener;-><init>(Lcom/didi/ddrive/ui/component/DDriveBottomBar;I)V

    invoke-virtual {v4, v5}, Lx/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v5, v0, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$Button;->text:Ljava/lang/String;

    invoke-static {v5}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 87
    iget-object v5, v0, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$Button;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_3
    iget v5, v0, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$Button;->style:I

    invoke-direct {p0, v4, v5}, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->setStyle(Lx/TextView;I)V

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setDDriveRealtimeListener(Lcom/didi/ddrive/listener/DDriveRealtimeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->mListener:Lcom/didi/ddrive/listener/DDriveRealtimeListener;

    .line 67
    return-void
.end method
