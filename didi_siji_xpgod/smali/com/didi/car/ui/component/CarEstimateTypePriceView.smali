.class public Lcom/didi/car/ui/component/CarEstimateTypePriceView;
.super Landroid/widget/RelativeLayout;
.source "CarEstimateTypePriceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/car/ui/component/CarEstimateTypePriceView$CarTypeOptionItemListener;
    }
.end annotation


# static fields
.field public static final FLAG_RESULT_ESTIMATE_FAIL:I = 0x0

.field public static final FLAG_RESULT_ESTIMATE_SUCCESS:I = 0x1


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private imgCarType:Lx/ImageView;

.field private imgSelected:Lx/ImageView;

.field private layoutEstimateCarType:Lx/RelativeLayout;

.field private listener:Lcom/didi/car/ui/component/CarEstimateTypePriceView$CarTypeOptionItemListener;

.field private optionSelected:I

.field private richViewEstimate:Lcom/didi/common/richtextview/RichTextView;

.field private txtCarTypeInfo:Lx/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->optionSelected:I

    .line 156
    new-instance v0, Lcom/didi/car/ui/component/CarEstimateTypePriceView$2;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarEstimateTypePriceView$2;-><init>(Lcom/didi/car/ui/component/CarEstimateTypePriceView;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->clickListener:Landroid/view/View$OnClickListener;

    .line 70
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->init()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->optionSelected:I

    .line 156
    new-instance v0, Lcom/didi/car/ui/component/CarEstimateTypePriceView$2;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarEstimateTypePriceView$2;-><init>(Lcom/didi/car/ui/component/CarEstimateTypePriceView;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->clickListener:Landroid/view/View$OnClickListener;

    .line 65
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->init()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->optionSelected:I

    .line 156
    new-instance v0, Lcom/didi/car/ui/component/CarEstimateTypePriceView$2;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarEstimateTypePriceView$2;-><init>(Lcom/didi/car/ui/component/CarEstimateTypePriceView;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->clickListener:Landroid/view/View$OnClickListener;

    .line 60
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->init()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/ui/component/CarEstimateTypePriceView;)Lx/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->imgCarType:Lx/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/car/ui/component/CarEstimateTypePriceView;)Lcom/didi/car/ui/component/CarEstimateTypePriceView$CarTypeOptionItemListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->listener:Lcom/didi/car/ui/component/CarEstimateTypePriceView$CarTypeOptionItemListener;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03005a

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, view:Landroid/view/View;
    const v1, 0x7f080215

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/RelativeLayout;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->layoutEstimateCarType:Lx/RelativeLayout;

    .line 76
    const v1, 0x7f080216

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->imgCarType:Lx/ImageView;

    .line 77
    const v1, 0x7f08021a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/TextView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->txtCarTypeInfo:Lx/TextView;

    .line 78
    const v1, 0x7f080217

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->imgSelected:Lx/ImageView;

    .line 79
    const v1, 0x7f080219

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/richtextview/RichTextView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->richViewEstimate:Lcom/didi/common/richtextview/RichTextView;

    .line 80
    iget-object v1, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->richViewEstimate:Lcom/didi/common/richtextview/RichTextView;

    iget-object v2, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/didi/common/richtextview/RichTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 82
    iget-object v1, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method


# virtual methods
.method public check()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 138
    iget v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->optionSelected:I

    if-ne v0, v1, :cond_0

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->optionSelected:I

    .line 140
    iget-object v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->imgSelected:Lx/ImageView;

    const v1, 0x7f020114

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 141
    iget-object v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->layoutEstimateCarType:Lx/RelativeLayout;

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setBackgroundResource(I)V

    .line 147
    :goto_0
    return-void

    .line 143
    :cond_0
    iput v1, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->optionSelected:I

    .line 144
    iget-object v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->imgSelected:Lx/ImageView;

    const v1, 0x7f020112

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 145
    iget-object v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->layoutEstimateCarType:Lx/RelativeLayout;

    const v1, 0x7f0200f7

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public isCheck()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 153
    iget v1, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->optionSelected:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImgIcon(Lcom/didi/car/model/CarModel;)V
    .locals 3
    .parameter "carModel"

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, carBmp:Landroid/graphics/Bitmap;
    const v1, 0x7f0b0231

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/car/model/CarModel;->cTypeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d9

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->imgCarType:Lx/ImageView;

    invoke-virtual {v1, v0}, Lx/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    iget-object v1, p1, Lcom/didi/car/model/CarModel;->cLogo:Ljava/lang/String;

    invoke-static {v1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    iget-object v1, p1, Lcom/didi/car/model/CarModel;->cLogo:Ljava/lang/String;

    new-instance v2, Lcom/didi/car/ui/component/CarEstimateTypePriceView$1;

    invoke-direct {v2, p0}, Lcom/didi/car/ui/component/CarEstimateTypePriceView$1;-><init>(Lcom/didi/car/ui/component/CarEstimateTypePriceView;)V

    invoke-static {v1, v2}, Lcom/didi/common/helper/ImageFetcher;->fetchCallback(Ljava/lang/String;Lcom/didi/common/cache/ImageWorker$ImageloadCallback;)V

    .line 132
    :cond_0
    return-void

    .line 114
    :cond_1
    const v1, 0x7f0b022f

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/car/model/CarModel;->cTypeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200cc

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ce

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public setViewContent(IILcom/didi/car/model/CarModel;Lcom/didi/car/ui/component/CarEstimateTypePriceView$CarTypeOptionItemListener;)V
    .locals 3
    .parameter "estimateFlag"
    .parameter "selected"
    .parameter "carModel"
    .parameter "listener"

    .prologue
    const/4 v2, 0x1

    .line 89
    if-ne v2, p1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->richViewEstimate:Lcom/didi/common/richtextview/RichTextView;

    iget-object v1, p3, Lcom/didi/car/model/CarModel;->cEstimateTips:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->txtCarTypeInfo:Lx/TextView;

    iget-object v1, p3, Lcom/didi/car/model/CarModel;->cLevelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0, p3}, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->setImgIcon(Lcom/didi/car/model/CarModel;)V

    .line 96
    iput p2, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->optionSelected:I

    .line 97
    if-ne p2, v2, :cond_2

    .line 98
    iget-object v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->layoutEstimateCarType:Lx/RelativeLayout;

    const v1, 0x7f0200f7

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setBackgroundResource(I)V

    .line 99
    iget-object v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->imgSelected:Lx/ImageView;

    const v1, 0x7f020112

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 104
    :goto_1
    iput-object p4, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->listener:Lcom/didi/car/ui/component/CarEstimateTypePriceView$CarTypeOptionItemListener;

    .line 105
    return-void

    .line 91
    :cond_1
    if-nez p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->richViewEstimate:Lcom/didi/common/richtextview/RichTextView;

    iget-object v1, p3, Lcom/didi/car/model/CarModel;->cPrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->layoutEstimateCarType:Lx/RelativeLayout;

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setBackgroundResource(I)V

    .line 102
    iget-object v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->imgSelected:Lx/ImageView;

    const v1, 0x7f020114

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
