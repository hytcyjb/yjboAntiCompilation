.class public Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;
.super Lcom/didi/common/base/BaseLayout;
.source "TaxiWaitForArrivalInfoBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$InfoListener;
    }
.end annotation


# instance fields
.field public gListener:Lcom/didi/common/ui/component/Gesturer$GestureListener;

.field private imgLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0805c4
    .end annotation
.end field

.field private mContentIcon:Landroid/widget/ImageView;

.field private mDrawerView:Lcom/didi/common/ui/component/DrawerView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802ba
    .end annotation
.end field

.field private mImgIcon:Landroid/widget/ImageView;

.field private mImgShare:Lcom/android/volley/toolbox/NetworkImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onShareImageClicked"
        id = 0x7f0802c3
    .end annotation
.end field

.field private mImgShareLayout:Lx/RelativeLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802c2
    .end annotation
.end field

.field private mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$InfoListener;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mShareLayout:Landroid/widget/LinearLayout;

.field private snsConfig:Lcom/didi/common/model/SNSConfig;

.field private strContent:Ljava/lang/String;

.field private tvContent:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802bf
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 145
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$2;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->gListener:Lcom/didi/common/ui/component/Gesturer$GestureListener;

    .line 77
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->init()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$2;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->gListener:Lcom/didi/common/ui/component/Gesturer$GestureListener;

    .line 72
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->init()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 145
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$2;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->gListener:Lcom/didi/common/ui/component/Gesturer$GestureListener;

    .line 67
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->init()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;)Landroid/widget/ScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->strContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;)Lcom/didi/common/ui/component/DrawerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mDrawerView:Lcom/didi/common/ui/component/DrawerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->openDrawer()V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->closeDrawer()V

    return-void
.end method

.method private closeDrawer()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mDrawerView:Lcom/didi/common/ui/component/DrawerView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/DrawerView;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mDrawerView:Lcom/didi/common/ui/component/DrawerView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/DrawerView;->animateClose()V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 185
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 86
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->imgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mDrawerView:Lcom/didi/common/ui/component/DrawerView;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->setVisibility(I)V

    .line 88
    const v0, 0x7f0802bc

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mShareLayout:Landroid/widget/LinearLayout;

    .line 89
    const v0, 0x7f0802bb

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mScrollView:Landroid/widget/ScrollView;

    .line 90
    const v0, 0x7f0805c3

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mContentIcon:Landroid/widget/ImageView;

    .line 91
    const v0, 0x7f0805c5

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mImgIcon:Landroid/widget/ImageView;

    .line 93
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mDrawerView:Lcom/didi/common/ui/component/DrawerView;

    new-instance v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$1;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$1;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->setOnDrawerOpenListener(Lcom/didi/common/ui/component/DrawerView$OnDrawerOpenListener;)V

    .line 99
    const-string v0, "DrawerHelper init"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->setGestureToDrawer()V

    .line 101
    return-void
.end method

.method private openDrawer()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mDrawerView:Lcom/didi/common/ui/component/DrawerView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/DrawerView;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mDrawerView:Lcom/didi/common/ui/component/DrawerView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/DrawerView;->open()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 178
    return-void
.end method

.method private showSharePic()V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 189
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mShareLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->imgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mImgShareLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->snsConfig:Lcom/didi/common/model/SNSConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->snsConfig:Lcom/didi/common/model/SNSConfig;

    iget v0, v0, Lcom/didi/common/model/SNSConfig;->iconType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->snsConfig:Lcom/didi/common/model/SNSConfig;

    iget-object v0, v0, Lcom/didi/common/model/SNSConfig;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->imgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mImgShareLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mImgShare:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-virtual {v0, v2}, Lcom/android/volley/toolbox/NetworkImageView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mImgShare:Lcom/android/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->snsConfig:Lcom/didi/common/model/SNSConfig;

    iget-object v1, v1, Lcom/didi/common/model/SNSConfig;->url:Ljava/lang/String;

    new-instance v2, Lcom/android/volley/toolbox/ImageLoader;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v3

    new-instance v4, Lcom/didi/common/util/BitmapCache;

    invoke-direct {v4}, Lcom/didi/common/util/BitmapCache;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader;)V

    .line 203
    :cond_0
    return-void
.end method


# virtual methods
.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 82
    const v0, 0x7f030106

    return v0
.end method

.method public onShareImageClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$InfoListener;

    .line 207
    .local v0, l:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$InfoListener;
    if-eqz v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->snsConfig:Lcom/didi/common/model/SNSConfig;

    invoke-interface {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$InfoListener;->onInfoImageClicked(Lcom/didi/common/model/SNSConfig;)V

    .line 210
    :cond_0
    return-void
.end method

.method public onTellViewClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$InfoListener;

    .line 214
    .local v0, l:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$InfoListener;
    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->snsConfig:Lcom/didi/common/model/SNSConfig;

    invoke-interface {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$InfoListener;->onInfoTellClicked(Lcom/didi/common/model/SNSConfig;)V

    .line 217
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mShareLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 105
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mImgShare:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 106
    const-string v0, "DrawerHelper onViewCreated"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    const/16 v1, 0x8

    .line 128
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->strContent:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mShareLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mImgShare:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/NetworkImageView;->setVisibility(I)V

    .line 131
    return-void
.end method

.method public setGestureToDrawer()V
    .locals 3

    .prologue
    .line 135
    new-instance v0, Lcom/didi/common/ui/component/Gesturer;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->gListener:Lcom/didi/common/ui/component/Gesturer$GestureListener;

    invoke-direct {v0, v1}, Lcom/didi/common/ui/component/Gesturer;-><init>(Lcom/didi/common/ui/component/Gesturer$GestureListener;)V

    .line 136
    .local v0, gesture:Lcom/didi/common/ui/component/Gesturer;
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mScrollView:Landroid/widget/ScrollView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLongClickable(Z)V

    .line 138
    return-void
.end method

.method public setListener(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$InfoListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$InfoListener;

    .line 111
    return-void
.end method

.method public setMobileMsg(Ljava/lang/String;)V
    .locals 2
    .parameter "phone"

    .prologue
    const/16 v1, 0x8

    .line 121
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->strContent:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mShareLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mImgShare:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/NetworkImageView;->setVisibility(I)V

    .line 124
    return-void
.end method

.method public setOrder(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 2
    .parameter "order"

    .prologue
    const v1, 0x7f02001a

    .line 114
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->isCarPoolOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mImgIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    :cond_0
    return-void
.end method

.method public setSNSConfig(Lcom/didi/common/model/SNSConfig;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->snsConfig:Lcom/didi/common/model/SNSConfig;

    .line 142
    return-void
.end method

.method public showDrawer(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 163
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mDrawerView:Lcom/didi/common/ui/component/DrawerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->setVisibility(I)V

    .line 169
    :goto_0
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->showSharePic()V

    .line 170
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->openDrawer()V

    .line 171
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mDrawerView:Lcom/didi/common/ui/component/DrawerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->setVisibility(I)V

    goto :goto_0
.end method
