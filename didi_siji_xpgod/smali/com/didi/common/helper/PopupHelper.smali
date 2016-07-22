.class public Lcom/didi/common/helper/PopupHelper;
.super Ljava/lang/Object;
.source "PopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/helper/PopupHelper$MyPageChangeListener;,
        Lcom/didi/common/helper/PopupHelper$MyPageAdapter;
    }
.end annotation


# static fields
.field private static carGuide:Lcom/didi/car/model/CarGuide;

.field private static ddriveGuide:Lcom/didi/car/model/CarGuide;

.field private static dots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static flierGuide:Lcom/didi/car/model/CarGuide;

.field private static imgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/didi/common/helper/PopupHelper;

.field private static taxiGuide:Lcom/didi/car/model/CarGuide;


# instance fields
.field private close:Landroid/widget/Button;

.field private closeLayout:Landroid/view/View;

.field private closeListener:Landroid/view/View$OnClickListener;

.field private dot0:Landroid/view/View;

.field private dot1:Landroid/view/View;

.field private dot2:Landroid/view/View;

.field private dot3:Landroid/view/View;

.field private dot4:Landroid/view/View;

.field private imageListener:Landroid/view/View$OnClickListener;

.field private isCarFirstShow:Z

.field private loadFromNet:Z

.field private mPopupwinow:Landroid/widget/PopupWindow;

.field private myPageAdapter:Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

.field private oldPosition:I

.field private popupView:Landroid/view/View;

.field private viewPager:Landroid/support/v4/view/ViewPager;

.field private webUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/common/helper/PopupHelper;->instance:Lcom/didi/common/helper/PopupHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/helper/PopupHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/common/helper/PopupHelper;->oldPosition:I

    .line 72
    iput-boolean v1, p0, Lcom/didi/common/helper/PopupHelper;->loadFromNet:Z

    .line 74
    iput-boolean v1, p0, Lcom/didi/common/helper/PopupHelper;->isCarFirstShow:Z

    .line 285
    new-instance v0, Lcom/didi/common/helper/PopupHelper$1;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/PopupHelper$1;-><init>(Lcom/didi/common/helper/PopupHelper;)V

    iput-object v0, p0, Lcom/didi/common/helper/PopupHelper;->closeListener:Landroid/view/View$OnClickListener;

    .line 504
    new-instance v0, Lcom/didi/common/helper/PopupHelper$2;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/PopupHelper$2;-><init>(Lcom/didi/common/helper/PopupHelper;)V

    iput-object v0, p0, Lcom/didi/common/helper/PopupHelper;->imageListener:Landroid/view/View$OnClickListener;

    .line 82
    invoke-direct {p0, p1}, Lcom/didi/common/helper/PopupHelper;->initPopupWindow(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method static synthetic access$100(Lcom/didi/common/helper/PopupHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/didi/common/helper/PopupHelper;->loadFromNet:Z

    return v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/didi/common/helper/PopupHelper;->imgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/common/helper/PopupHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/didi/common/helper/PopupHelper;->isCarFirstShow:Z

    return v0
.end method

.method static synthetic access$400(Lcom/didi/common/helper/PopupHelper;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/common/helper/PopupHelper;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper;->imageListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/common/helper/PopupHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/didi/common/helper/PopupHelper;->oldPosition:I

    return v0
.end method

.method static synthetic access$602(Lcom/didi/common/helper/PopupHelper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/didi/common/helper/PopupHelper;->oldPosition:I

    return p1
.end method

.method static synthetic access$700()Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/didi/common/helper/PopupHelper;->dots:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/didi/common/helper/PopupHelper;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/didi/common/helper/PopupHelper;->getCurrentWebUrl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentWebUrl(I)Ljava/lang/String;
    .locals 3
    .parameter "currentPosition"

    .prologue
    .line 520
    iget-object v1, p0, Lcom/didi/common/helper/PopupHelper;->webUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    const-string v1, ""

    .line 532
    :goto_0
    return-object v1

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/didi/common/helper/PopupHelper;->webUrl:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, webUrls:[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_2

    .line 526
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 529
    :cond_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_3

    .line 530
    aget-object v1, v0, p1

    goto :goto_0

    .line 532
    :cond_3
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public static getDialogHelper(Landroid/content/Context;)Lcom/didi/common/helper/PopupHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    sget-object v0, Lcom/didi/common/helper/PopupHelper;->instance:Lcom/didi/common/helper/PopupHelper;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/didi/common/helper/PopupHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/PopupHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/didi/common/helper/PopupHelper;->instance:Lcom/didi/common/helper/PopupHelper;

    .line 91
    :cond_0
    sget-object v0, Lcom/didi/common/helper/PopupHelper;->instance:Lcom/didi/common/helper/PopupHelper;

    return-object v0
.end method

.method private initAnnouncementDot(Lcom/didi/frame/business/Business;)V
    .locals 3
    .parameter "business"

    .prologue
    .line 185
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne p1, v0, :cond_1

    .line 186
    sget-object v0, Lcom/didi/common/helper/PopupHelper;->taxiGuide:Lcom/didi/car/model/CarGuide;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/common/helper/PopupHelper;->taxiGuide:Lcom/didi/car/model/CarGuide;

    invoke-virtual {v0}, Lcom/didi/car/model/CarGuide;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    sget-object v1, Lcom/didi/common/helper/PopupHelper;->taxiGuide:Lcom/didi/car/model/CarGuide;

    iget-object v1, v1, Lcom/didi/car/model/CarGuide;->pics:Ljava/util/ArrayList;

    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-direct {v0, p0, v1, v2}, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;-><init>(Lcom/didi/common/helper/PopupHelper;Ljava/util/ArrayList;Lcom/didi/frame/business/Business;)V

    iput-object v0, p0, Lcom/didi/common/helper/PopupHelper;->myPageAdapter:Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    .line 188
    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper;->myPageAdapter:Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    invoke-virtual {v0}, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->notifyDataSetChanged()V

    .line 189
    sget-object v0, Lcom/didi/common/helper/PopupHelper;->taxiGuide:Lcom/didi/car/model/CarGuide;

    iget-object v0, v0, Lcom/didi/car/model/CarGuide;->pics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/didi/common/helper/PopupHelper;->initDots(I)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne p1, v0, :cond_3

    .line 193
    sget-object v0, Lcom/didi/common/helper/PopupHelper;->carGuide:Lcom/didi/car/model/CarGuide;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/didi/common/helper/PopupHelper;->carGuide:Lcom/didi/car/model/CarGuide;

    invoke-virtual {v0}, Lcom/didi/car/model/CarGuide;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    new-instance v0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    sget-object v1, Lcom/didi/common/helper/PopupHelper;->carGuide:Lcom/didi/car/model/CarGuide;

    iget-object v1, v1, Lcom/didi/car/model/CarGuide;->pics:Ljava/util/ArrayList;

    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-direct {v0, p0, v1, v2}, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;-><init>(Lcom/didi/common/helper/PopupHelper;Ljava/util/ArrayList;Lcom/didi/frame/business/Business;)V

    iput-object v0, p0, Lcom/didi/common/helper/PopupHelper;->myPageAdapter:Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    .line 195
    sget-object v0, Lcom/didi/common/helper/PopupHelper;->carGuide:Lcom/didi/car/model/CarGuide;

    iget-object v0, v0, Lcom/didi/car/model/CarGuide;->pics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/didi/common/helper/PopupHelper;->initDots(I)V

    .line 197
    :cond_2
    iget-boolean v0, p0, Lcom/didi/common/helper/PopupHelper;->isCarFirstShow:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/common/helper/PopupHelper;->imgs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/common/helper/PopupHelper;->imgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 198
    sget-object v0, Lcom/didi/common/helper/PopupHelper;->imgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/didi/common/helper/PopupHelper;->initDots(I)V

    goto :goto_0

    .line 200
    :cond_3
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne p1, v0, :cond_4

    .line 201
    sget-object v0, Lcom/didi/common/helper/PopupHelper;->ddriveGuide:Lcom/didi/car/model/CarGuide;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/common/helper/PopupHelper;->ddriveGuide:Lcom/didi/car/model/CarGuide;

    invoke-virtual {v0}, Lcom/didi/car/model/CarGuide;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    sget-object v1, Lcom/didi/common/helper/PopupHelper;->ddriveGuide:Lcom/didi/car/model/CarGuide;

    iget-object v1, v1, Lcom/didi/car/model/CarGuide;->pics:Ljava/util/ArrayList;

    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-direct {v0, p0, v1, v2}, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;-><init>(Lcom/didi/common/helper/PopupHelper;Ljava/util/ArrayList;Lcom/didi/frame/business/Business;)V

    iput-object v0, p0, Lcom/didi/common/helper/PopupHelper;->myPageAdapter:Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    .line 203
    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper;->myPageAdapter:Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    invoke-virtual {v0}, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->notifyDataSetChanged()V

    .line 204
    sget-object v0, Lcom/didi/common/helper/PopupHelper;->ddriveGuide:Lcom/didi/car/model/CarGuide;

    iget-object v0, v0, Lcom/didi/car/model/CarGuide;->pics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/didi/common/helper/PopupHelper;->initDots(I)V

    goto :goto_0

    .line 207
    :cond_4
    sget-object v0, Lcom/didi/common/helper/PopupHelper;->flierGuide:Lcom/didi/car/model/CarGuide;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/common/helper/PopupHelper;->flierGuide:Lcom/didi/car/model/CarGuide;

    invoke-virtual {v0}, Lcom/didi/car/model/CarGuide;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    sget-object v1, Lcom/didi/common/helper/PopupHelper;->flierGuide:Lcom/didi/car/model/CarGuide;

    iget-object v1, v1, Lcom/didi/car/model/CarGuide;->pics:Ljava/util/ArrayList;

    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-direct {v0, p0, v1, v2}, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;-><init>(Lcom/didi/common/helper/PopupHelper;Ljava/util/ArrayList;Lcom/didi/frame/business/Business;)V

    iput-object v0, p0, Lcom/didi/common/helper/PopupHelper;->myPageAdapter:Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    .line 209
    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper;->myPageAdapter:Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    invoke-virtual {v0}, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->notifyDataSetChanged()V

    .line 210
    sget-object v0, Lcom/didi/common/helper/PopupHelper;->flierGuide:Lcom/didi/car/model/CarGuide;

    iget-object v0, v0, Lcom/didi/car/model/CarGuide;->pics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/didi/common/helper/PopupHelper;->initDots(I)V

    goto/16 :goto_0
.end method

.method public static initDots(I)V
    .locals 4
    .parameter "dotCount"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 269
    sget-object v1, Lcom/didi/common/helper/PopupHelper;->dots:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/didi/common/helper/PopupHelper;->dots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/didi/common/helper/PopupHelper;->dots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 273
    if-ge v0, p0, :cond_2

    .line 274
    sget-object v1, Lcom/didi/common/helper/PopupHelper;->dots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 276
    :cond_2
    sget-object v1, Lcom/didi/common/helper/PopupHelper;->dots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 280
    :cond_3
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 281
    sget-object v1, Lcom/didi/common/helper/PopupHelper;->dots:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initPopupWindow(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    invoke-direct {p0, p1}, Lcom/didi/common/helper/PopupHelper;->initViews(Landroid/content/Context;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/didi/common/helper/PopupHelper;->setListeners(Landroid/content/Context;)V

    .line 99
    :cond_0
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 102
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/helper/PopupHelper;->popupView:Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper;->popupView:Landroid/view/View;

    const v1, 0x7f080065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/didi/common/helper/PopupHelper;->close:Landroid/widget/Button;

    .line 104
    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper;->popupView:Landroid/view/View;

    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/helper/PopupHelper;->closeLayout:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper;->close:Landroid/widget/Button;

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->enlargeHitRect(Landroid/view/View;I)V

    .line 106
    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper;->popupView:Landroid/view/View;

    const v1, 0x7f080068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/didi/common/helper/PopupHelper;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/didi/common/helper/PopupHelper;->dots:Ljava/util/List;

    .line 108
    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper;->popupView:Landroid/view/View;

    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/helper/PopupHelper;->dot0:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper;->popupView:Landroid/view/View;

    const v1, 0x7f08006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/helper/PopupHelper;->dot1:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper;->popupView:Landroid/view/View;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/helper/PopupHelper;->dot2:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper;->popupView:Landroid/view/View;

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/helper/PopupHelper;->dot3:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper;->popupView:Landroid/view/View;

    const v1, 0x7f08006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/helper/PopupHelper;->dot4:Landroid/view/View;

    .line 113
    sget-object v0, Lcom/didi/common/helper/PopupHelper;->dots:Ljava/util/List;

    iget-object v1, p0, Lcom/didi/common/helper/PopupHelper;->dot0:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/didi/common/helper/PopupHelper;->dots:Ljava/util/List;

    iget-object v1, p0, Lcom/didi/common/helper/PopupHelper;->dot1:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/didi/common/helper/PopupHelper;->dots:Ljava/util/List;

    iget-object v1, p0, Lcom/didi/common/helper/PopupHelper;->dot2:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/didi/common/helper/PopupHelper;->dots:Ljava/util/List;

    iget-object v1, p0, Lcom/didi/common/helper/PopupHelper;->dot3:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/didi/common/helper/PopupHelper;->dots:Ljava/util/List;

    iget-object v1, p0, Lcom/didi/common/helper/PopupHelper;->dot4:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method private isAnnouncementAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 221
    iget-boolean v1, p0, Lcom/didi/common/helper/PopupHelper;->isCarFirstShow:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/didi/common/helper/PopupHelper;->isLocalImageAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v0

    .line 224
    :cond_1
    iget-boolean v1, p0, Lcom/didi/common/helper/PopupHelper;->loadFromNet:Z

    if-eqz v1, :cond_3

    .line 225
    invoke-direct {p0}, Lcom/didi/common/helper/PopupHelper;->isNetImageAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 229
    :cond_3
    invoke-direct {p0}, Lcom/didi/common/helper/PopupHelper;->isLocalImageAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method private isLocalImageAvailable()Z
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/didi/common/helper/PopupHelper;->imgs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/common/helper/PopupHelper;->imgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetImageAvailable()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper;->myPageAdapter:Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    iget-object v0, v0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->pics:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper;->myPageAdapter:Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    iget-object v0, v0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->pics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setData(Lcom/didi/car/model/CarGuide;Lcom/didi/car/model/CarGuide;Lcom/didi/car/model/CarGuide;Lcom/didi/car/model/CarGuide;)V
    .locals 0
    .parameter "taxi"
    .parameter "car"
    .parameter "flier"
    .parameter "ddrive"

    .prologue
    .line 124
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    sput-object p0, Lcom/didi/common/helper/PopupHelper;->taxiGuide:Lcom/didi/car/model/CarGuide;

    .line 128
    sput-object p1, Lcom/didi/common/helper/PopupHelper;->carGuide:Lcom/didi/car/model/CarGuide;

    .line 129
    sput-object p2, Lcom/didi/common/helper/PopupHelper;->flierGuide:Lcom/didi/car/model/CarGuide;

    .line 130
    sput-object p3, Lcom/didi/common/helper/PopupHelper;->ddriveGuide:Lcom/didi/car/model/CarGuide;

    goto :goto_0
.end method

.method private setListeners(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper;->close:Landroid/widget/Button;

    iget-object v1, p0, Lcom/didi/common/helper/PopupHelper;->closeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper;->closeLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/common/helper/PopupHelper;->closeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    new-instance v0, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;-><init>(Lcom/didi/common/helper/PopupHelper;)V

    iput-object v0, p0, Lcom/didi/common/helper/PopupHelper;->myPageAdapter:Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    .line 144
    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/didi/common/helper/PopupHelper;->myPageAdapter:Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 145
    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/didi/common/helper/PopupHelper$MyPageChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/didi/common/helper/PopupHelper$MyPageChangeListener;-><init>(Lcom/didi/common/helper/PopupHelper;Lcom/didi/common/helper/PopupHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 146
    return-void
.end method

.method public static setLocalData(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, bitmaps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    sput-object p0, Lcom/didi/common/helper/PopupHelper;->imgs:Ljava/util/ArrayList;

    .line 135
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/didi/common/helper/PopupHelper;->initDots(I)V

    .line 138
    :cond_0
    return-void
.end method

.method private validate(Lcom/didi/frame/business/Business;)Z
    .locals 3
    .parameter "business"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 454
    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne p1, v2, :cond_1

    invoke-static {}, Lcom/didi/common/helper/AnnouncementHelper;->isTaxiAnnouncementOverDue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 501
    :cond_0
    :goto_0
    return v1

    .line 456
    :cond_1
    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne p1, v2, :cond_2

    invoke-static {}, Lcom/didi/common/helper/AnnouncementHelper;->isCarAnnouncementOverDue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 458
    :cond_2
    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne p1, v2, :cond_3

    invoke-static {}, Lcom/didi/common/helper/AnnouncementHelper;->isFlierAnnouncementOverDue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 460
    :cond_3
    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne p1, v2, :cond_4

    invoke-static {}, Lcom/didi/common/helper/AnnouncementHelper;->isDDriveAnnouncementOverDue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 463
    :cond_4
    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne p1, v2, :cond_7

    .line 464
    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/common/helper/AnnouncementHelper;->validateImages(Lcom/didi/frame/business/Business;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/didi/common/helper/AnnouncementHelper;->isTaxiAnnuncementInitialVersion()Z

    move-result v2

    if-nez v2, :cond_5

    move v1, v0

    .line 465
    goto :goto_0

    .line 467
    :cond_5
    sget-object v2, Lcom/didi/common/helper/PopupHelper;->taxiGuide:Lcom/didi/car/model/CarGuide;

    if-eqz v2, :cond_0

    .line 468
    sget-object v2, Lcom/didi/common/helper/PopupHelper;->taxiGuide:Lcom/didi/car/model/CarGuide;

    invoke-virtual {v2}, Lcom/didi/car/model/CarGuide;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/didi/common/helper/AnnouncementHelper;->isTaxiAnnuncementInitialVersion()Z

    move-result v2

    if-nez v2, :cond_6

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    .line 472
    :cond_7
    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne p1, v2, :cond_a

    .line 473
    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/common/helper/AnnouncementHelper;->validateImages(Lcom/didi/frame/business/Business;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/didi/common/helper/AnnouncementHelper;->inCarAnnouncementInitialVersion()Z

    move-result v2

    if-nez v2, :cond_8

    move v1, v0

    .line 474
    goto :goto_0

    .line 476
    :cond_8
    sget-object v2, Lcom/didi/common/helper/PopupHelper;->carGuide:Lcom/didi/car/model/CarGuide;

    if-eqz v2, :cond_0

    .line 477
    sget-object v2, Lcom/didi/common/helper/PopupHelper;->carGuide:Lcom/didi/car/model/CarGuide;

    invoke-virtual {v2}, Lcom/didi/car/model/CarGuide;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/didi/common/helper/AnnouncementHelper;->inCarAnnouncementInitialVersion()Z

    move-result v2

    if-nez v2, :cond_9

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_2

    .line 481
    :cond_a
    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne p1, v2, :cond_d

    .line 482
    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/common/helper/AnnouncementHelper;->validateImages(Lcom/didi/frame/business/Business;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/didi/common/helper/AnnouncementHelper;->isFlierAnnuncementInitialVersion()Z

    move-result v2

    if-nez v2, :cond_b

    move v1, v0

    .line 483
    goto/16 :goto_0

    .line 485
    :cond_b
    sget-object v2, Lcom/didi/common/helper/PopupHelper;->flierGuide:Lcom/didi/car/model/CarGuide;

    if-eqz v2, :cond_0

    .line 486
    sget-object v2, Lcom/didi/common/helper/PopupHelper;->flierGuide:Lcom/didi/car/model/CarGuide;

    invoke-virtual {v2}, Lcom/didi/car/model/CarGuide;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/didi/common/helper/AnnouncementHelper;->isFlierAnnuncementInitialVersion()Z

    move-result v2

    if-nez v2, :cond_c

    :goto_3
    move v1, v0

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto :goto_3

    .line 490
    :cond_d
    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne p1, v2, :cond_0

    .line 491
    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/common/helper/AnnouncementHelper;->validateImages(Lcom/didi/frame/business/Business;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/didi/common/helper/AnnouncementHelper;->isDDriveAnnuncementInitialVersion()Z

    move-result v2

    if-nez v2, :cond_e

    move v1, v0

    .line 492
    goto/16 :goto_0

    .line 494
    :cond_e
    sget-object v2, Lcom/didi/common/helper/PopupHelper;->ddriveGuide:Lcom/didi/car/model/CarGuide;

    if-eqz v2, :cond_0

    .line 495
    sget-object v2, Lcom/didi/common/helper/PopupHelper;->ddriveGuide:Lcom/didi/car/model/CarGuide;

    invoke-virtual {v2}, Lcom/didi/car/model/CarGuide;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/didi/common/helper/AnnouncementHelper;->isDDriveAnnuncementInitialVersion()Z

    move-result v2

    if-nez v2, :cond_f

    :goto_4
    move v1, v0

    goto/16 :goto_0

    :cond_f
    move v0, v1

    goto :goto_4
.end method


# virtual methods
.method public disMissPopupWindow()V
    .locals 4

    .prologue
    .line 245
    iget-object v2, p0, Lcom/didi/common/helper/PopupHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/didi/common/helper/PopupHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/didi/common/helper/PopupHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 247
    iget-object v2, p0, Lcom/didi/common/helper/PopupHelper;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/didi/common/helper/PopupHelper;->myPageAdapter:Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/didi/common/helper/PopupHelper;->myPageAdapter:Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    invoke-virtual {v2}, Lcom/didi/common/helper/PopupHelper$MyPageAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/didi/common/helper/PopupHelper;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 249
    iget-object v2, p0, Lcom/didi/common/helper/PopupHelper;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    .line 252
    :cond_0
    sget-object v2, Lcom/didi/common/helper/PopupHelper;->imgs:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 253
    sget-object v2, Lcom/didi/common/helper/PopupHelper;->imgs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 254
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 261
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public initData(Lcom/didi/frame/business/Business;)V
    .locals 1
    .parameter "business"

    .prologue
    .line 171
    invoke-static {p1}, Lcom/didi/common/helper/AnnouncementHelper;->isLoadFromNet(Lcom/didi/frame/business/Business;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/didi/common/helper/PopupHelper;->loadFromNet:Z

    .line 172
    invoke-direct {p0, p1}, Lcom/didi/common/helper/PopupHelper;->initAnnouncementDot(Lcom/didi/frame/business/Business;)V

    .line 173
    invoke-direct {p0, p1}, Lcom/didi/common/helper/PopupHelper;->validate(Lcom/didi/frame/business/Business;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    :cond_0
    return-void
.end method

.method public setAnnouncementState(Landroid/view/View;Lcom/didi/frame/business/Business;)V
    .locals 1
    .parameter "contentView"
    .parameter "business"

    .prologue
    .line 444
    invoke-direct {p0, p2}, Lcom/didi/common/helper/PopupHelper;->validate(Lcom/didi/frame/business/Business;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 451
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/didi/common/helper/PopupHelper;->disMissPopupWindow()V

    .line 449
    invoke-static {p1, p2}, Lcom/didi/common/helper/AnnouncementHelper;->setAutoPopState(Landroid/view/View;Lcom/didi/frame/business/Business;)V

    .line 450
    invoke-static {p2}, Lcom/didi/common/helper/AnnouncementHelper;->getWebUrlByBusiness(Lcom/didi/frame/business/Business;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/helper/PopupHelper;->webUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public showPopupWindow(Landroid/content/Context;Landroid/view/View;Lcom/didi/frame/business/Business;Z)V
    .locals 6
    .parameter "context"
    .parameter "contentView"
    .parameter "business"
    .parameter "preload"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 149
    if-nez p4, :cond_0

    .line 150
    invoke-virtual {p0, p3}, Lcom/didi/common/helper/PopupHelper;->initData(Lcom/didi/frame/business/Business;)V

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/didi/common/helper/PopupHelper;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/didi/common/helper/PopupHelper;->myPageAdapter:Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    if-nez v1, :cond_2

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/didi/common/helper/PopupHelper;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/didi/common/helper/PopupHelper;->myPageAdapter:Lcom/didi/common/helper/PopupHelper$MyPageAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 156
    iget-object v1, p0, Lcom/didi/common/helper/PopupHelper;->viewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/didi/common/helper/PopupHelper;->oldPosition:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 157
    iget-object v1, p0, Lcom/didi/common/helper/PopupHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    if-nez v1, :cond_3

    .line 158
    iget-object v1, p0, Lcom/didi/common/helper/PopupHelper;->popupView:Landroid/view/View;

    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 159
    iget-object v1, p0, Lcom/didi/common/helper/PopupHelper;->popupView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 160
    .local v0, top:I
    iget-object v1, p0, Lcom/didi/common/helper/PopupHelper;->popupView:Landroid/view/View;

    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getStatusBarHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 161
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/didi/common/helper/PopupHelper;->popupView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v5, v5, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/didi/common/helper/PopupHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    .line 164
    .end local v0           #top:I
    :cond_3
    invoke-direct {p0}, Lcom/didi/common/helper/PopupHelper;->isAnnouncementAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/didi/common/helper/PopupHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    const v2, 0x7f0c0047

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 166
    iget-object v1, p0, Lcom/didi/common/helper/PopupHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    const/16 v2, 0x11

    invoke-virtual {v1, p2, v2, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
