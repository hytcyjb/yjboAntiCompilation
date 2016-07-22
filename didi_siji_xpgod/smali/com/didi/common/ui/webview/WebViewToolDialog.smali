.class public Lcom/didi/common/ui/webview/WebViewToolDialog;
.super Ljava/lang/Object;
.source "WebViewToolDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter;,
        Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;
    }
.end annotation


# instance fields
.field mCustomView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    return-void
.end method

.method static synthetic access$000(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/didi/common/ui/webview/WebViewToolDialog;->dissmiss(Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/common/ui/webview/WebViewToolDialog;ILandroid/widget/LinearLayout;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/didi/common/ui/webview/WebViewToolDialog;->setSelectedPoi(ILandroid/widget/LinearLayout;)V

    return-void
.end method

.method private addViewPagerPoi(ILandroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 7
    .parameter "count"
    .parameter "ctx"
    .parameter "linearLayoutPoints"

    .prologue
    const/high16 v6, 0x40a0

    .line 150
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 151
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 152
    .local v2, imagePoi:Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 153
    .local v0, density:F
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    mul-float v4, v6, v0

    float-to-int v4, v4

    mul-float v5, v6, v0

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v4, 0x4100

    mul-float/2addr v4, v0

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 155
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    const v4, 0x7f0202ca

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v0           #density:F
    .end local v2           #imagePoi:Landroid/widget/ImageView;
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private static dissmiss(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 3
    .parameter "alertDialog"
    .parameter "view"

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040022

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 130
    .local v0, animation:Landroid/view/animation/Animation;
    new-instance v1, Lcom/didi/common/ui/webview/WebViewToolDialog$4;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/webview/WebViewToolDialog$4;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 146
    return-void
.end method

.method private setSelectedPoi(ILandroid/widget/LinearLayout;)V
    .locals 3
    .parameter "position"
    .parameter "linearLayoutPoints"

    .prologue
    .line 163
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 164
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 165
    .local v1, img:Landroid/widget/ImageView;
    if-ne v0, p1, :cond_0

    .line 166
    const v2, 0x7f0202c9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    const v2, 0x7f0202ca

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 171
    .end local v1           #img:Landroid/widget/ImageView;
    :cond_1
    return-void
.end method


# virtual methods
.method public show(Landroid/app/Activity;Ljava/util/List;Lcom/didi/common/ui/webview/JSBridgeCallBack;)V
    .locals 13
    .parameter "activity"
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/ui/webview/WebViewToolModel;",
            ">;",
            "Lcom/didi/common/ui/webview/JSBridgeCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/ui/webview/WebViewToolModel;>;"
    if-nez p2, :cond_0

    .line 126
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    .line 49
    .local v5, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 50
    .local v11, win:Landroid/view/Window;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebViewToolDialog;->mCustomView:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebViewToolDialog;->mCustomView:Landroid/view/View;

    const v1, 0x7f040021

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 53
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebViewToolDialog;->mCustomView:Landroid/view/View;

    const v1, 0x7f08042c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 54
    .local v7, linearLayoutPoints:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebViewToolDialog;->mCustomView:Landroid/view/View;

    new-instance v1, Lcom/didi/common/ui/webview/WebViewToolDialog$1;

    invoke-direct {v1, p0, v5}, Lcom/didi/common/ui/webview/WebViewToolDialog$1;-><init>(Lcom/didi/common/ui/webview/WebViewToolDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v3, mData:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/didi/common/ui/webview/WebViewToolModel;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v9, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/ui/webview/WebViewToolModel;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/didi/common/ui/webview/WebViewToolModel;

    .line 66
    .local v10, webViewToolModel:Lcom/didi/common/ui/webview/WebViewToolModel;
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 67
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v9, Ljava/util/ArrayList;

    .end local v9           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/ui/webview/WebViewToolModel;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .restart local v9       #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/ui/webview/WebViewToolModel;>;"
    :cond_1
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 73
    .end local v10           #webViewToolModel:Lcom/didi/common/ui/webview/WebViewToolModel;
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 74
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0, p1, v7}, Lcom/didi/common/ui/webview/WebViewToolDialog;->addViewPagerPoi(ILandroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0, v7}, Lcom/didi/common/ui/webview/WebViewToolDialog;->setSelectedPoi(ILandroid/widget/LinearLayout;)V

    .line 81
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebViewToolDialog;->mCustomView:Landroid/view/View;

    const v1, 0x7f080068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/ViewPager;

    .line 82
    .local v8, mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_4

    .line 83
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x42da

    iget-object v4, p0, Lcom/didi/common/ui/webview/WebViewToolDialog;->mCustomView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    :cond_4
    new-instance v0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;-><init>(Lcom/didi/common/ui/webview/WebViewToolDialog;Landroid/content/Context;Ljava/util/List;Lcom/didi/common/ui/webview/JSBridgeCallBack;Landroid/app/AlertDialog;)V

    invoke-virtual {v8, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 86
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 87
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    :goto_2
    new-instance v0, Lcom/didi/common/ui/webview/WebViewToolDialog$2;

    invoke-direct {v0, p0, v7}, Lcom/didi/common/ui/webview/WebViewToolDialog$2;-><init>(Lcom/didi/common/ui/webview/WebViewToolDialog;Landroid/widget/LinearLayout;)V

    invoke-virtual {v8, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 112
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebViewToolDialog;->mCustomView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 113
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebViewToolDialog;->mCustomView:Landroid/view/View;

    invoke-virtual {v11, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 114
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {v11, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 115
    invoke-virtual {v11}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 116
    .local v12, wl:Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x51

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 118
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebViewToolDialog;->mCustomView:Landroid/view/View;

    const v1, 0x7f08042e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/didi/common/ui/webview/WebViewToolDialog$3;

    invoke-direct {v1, p0, v5}, Lcom/didi/common/ui/webview/WebViewToolDialog$3;-><init>(Lcom/didi/common/ui/webview/WebViewToolDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 89
    .end local v12           #wl:Landroid/view/WindowManager$LayoutParams;
    :cond_5
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method
