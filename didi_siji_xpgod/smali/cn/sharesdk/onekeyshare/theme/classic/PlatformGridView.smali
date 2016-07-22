.class public Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;
.super Landroid/widget/LinearLayout;
.source "PlatformGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;,
        Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;
    }
.end annotation


# static fields
.field private static final MIN_CLICK_INTERVAL:I = 0x3e8

.field private static final MSG_PLATFORM_LIST_GOT:I = 0x1


# instance fields
.field private COLUMN_PER_LINE:I

.field private LINE_PER_PAGE:I

.field private PAGE_SIZE:I

.field private bgView:Landroid/view/View;

.field private bluePoint:Landroid/graphics/Bitmap;

.field private customers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;"
        }
    .end annotation
.end field

.field private grayPoint:Landroid/graphics/Bitmap;

.field private hiddenPlatforms:Ljava/util/HashMap;
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

.field private lastClickTime:J

.field private pager:Lm/framework/ui/widget/viewpager/ViewPagerClassic;

.field private parent:Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;

.field private platformList:[Lcn/sharesdk/framework/Platform;

.field private points:[Landroid/widget/ImageView;

.field private reqData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private silent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->init(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->init(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)[Lcn/sharesdk/framework/Platform;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic access$002(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;[Lcn/sharesdk/framework/Platform;)[Lcn/sharesdk/framework/Platform;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;

    return-object p1
.end method

.method static synthetic access$100(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->hiddenPlatforms:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->customers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    return v0
.end method

.method static synthetic access$400(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    return v0
.end method

.method static synthetic access$500(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)[Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->grayPoint:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$700(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->bluePoint:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private calPageSize()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 103
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/sharesdk/framework/utils/R;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    int-to-float v1, v3

    .line 104
    .local v1, scrW:F
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/sharesdk/framework/utils/R;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v0, v3

    .line 105
    .local v0, scrH:F
    div-float v2, v1, v0

    .line 106
    .local v2, whR:F
    float-to-double v3, v2

    const-wide v5, 0x3fe3333333333333L

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    .line 107
    iput v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    .line 108
    iput v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->LINE_PER_PAGE:I

    .line 124
    :goto_0
    iget v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    iget v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->LINE_PER_PAGE:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    .line 125
    return-void

    .line 109
    :cond_0
    float-to-double v3, v2

    const-wide/high16 v5, 0x3fe8

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    .line 110
    iput v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    .line 111
    const/4 v3, 0x2

    iput v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->LINE_PER_PAGE:I

    goto :goto_0

    .line 113
    :cond_1
    const/4 v3, 0x1

    iput v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->LINE_PER_PAGE:I

    .line 114
    float-to-double v3, v2

    const-wide/high16 v5, 0x3ffc

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_2

    .line 115
    const/4 v3, 0x6

    iput v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    goto :goto_0

    .line 116
    :cond_2
    float-to-double v3, v2

    const-wide/high16 v5, 0x3ff8

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_3

    .line 117
    const/4 v3, 0x5

    iput v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    goto :goto_0

    .line 118
    :cond_3
    float-to-double v3, v2

    const-wide v5, 0x3ff4cccccccccccdL

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_4

    .line 119
    const/4 v3, 0x4

    iput v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    goto :goto_0

    .line 121
    :cond_4
    iput v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    goto :goto_0
.end method

.method private disableOverScrollMode(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 239
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 250
    :goto_0
    return-void

    .line 243
    :cond_0
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "setOverScrollMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 245
    .local v0, m:Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 246
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    .end local v0           #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 248
    .local v1, t:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 82
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->calPageSize()V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->setOrientation(I)V

    .line 85
    new-instance v0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;

    invoke-direct {v0, p1}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lm/framework/ui/widget/viewpager/ViewPagerClassic;

    .line 86
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lm/framework/ui/widget/viewpager/ViewPagerClassic;

    invoke-direct {p0, v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->disableOverScrollMode(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lm/framework/ui/widget/viewpager/ViewPagerClassic;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lm/framework/ui/widget/viewpager/ViewPagerClassic;

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->addView(Landroid/view/View;)V

    .line 91
    new-instance v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)V

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;->start()V

    .line 100
    return-void
.end method


# virtual methods
.method public afterPlatformListGot()V
    .locals 17

    .prologue
    .line 139
    new-instance v1, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)V

    .line 140
    .local v1, adapter:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lm/framework/ui/widget/viewpager/ViewPagerClassic;

    invoke-virtual {v15, v1}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->setAdapter(Lm/framework/ui/widget/viewpager/ViewPagerAdapter;)V

    .line 141
    const/4 v11, 0x0

    .line 142
    .local v11, pageCount:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;

    if-eqz v15, :cond_0

    .line 143
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->customers:Ljava/util/ArrayList;

    if-nez v15, :cond_1

    const/4 v4, 0x0

    .line 144
    .local v4, cusSize:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;

    if-nez v15, :cond_2

    const/4 v12, 0x0

    .line 145
    .local v12, platSize:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->hiddenPlatforms:Ljava/util/HashMap;

    if-nez v15, :cond_3

    const/4 v6, 0x0

    .line 146
    .local v6, hideSize:I
    :goto_2
    sub-int/2addr v12, v6

    .line 147
    add-int v14, v12, v4

    .line 148
    .local v14, size:I
    move-object/from16 v0, p0

    iget v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    div-int v11, v14, v15

    .line 149
    move-object/from16 v0, p0

    iget v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    rem-int v15, v14, v15

    if-lez v15, :cond_0

    .line 150
    add-int/lit8 v11, v11, 0x1

    .line 153
    .end local v4           #cusSize:I
    .end local v6           #hideSize:I
    .end local v12           #platSize:I
    .end local v14           #size:I
    :cond_0
    new-array v15, v11, [Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    .line 154
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    array-length v15, v15

    if-gtz v15, :cond_4

    .line 188
    :goto_3
    return-void

    .line 143
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->customers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_0

    .line 144
    .restart local v4       #cusSize:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;

    array-length v12, v15

    goto :goto_1

    .line 145
    .restart local v12       #platSize:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->hiddenPlatforms:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v6

    goto :goto_2

    .line 158
    .end local v4           #cusSize:I
    .end local v12           #platSize:I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 159
    .local v2, context:Landroid/content/Context;
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 161
    .local v8, llPoints:Landroid/widget/LinearLayout;
    const/4 v15, 0x1

    if-le v11, v15, :cond_7

    const/4 v15, 0x0

    :goto_4
    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v10, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 164
    .local v10, lpLl:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v15, 0x1

    iput v15, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 165
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->addView(Landroid/view/View;)V

    .line 168
    const/4 v15, 0x5

    invoke-static {v2, v15}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v5

    .line 169
    .local v5, dp_5:I
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "light_blue_point"

    invoke-static/range {v15 .. v16}, Lcn/sharesdk/framework/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    .line 170
    .local v13, resId:I
    if-lez v13, :cond_5

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v15, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->grayPoint:Landroid/graphics/Bitmap;

    .line 173
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "blue_point"

    invoke-static/range {v15 .. v16}, Lcn/sharesdk/framework/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    .line 174
    if-lez v13, :cond_6

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v15, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->bluePoint:Landroid/graphics/Bitmap;

    .line 177
    :cond_6
    const/4 v7, 0x0

    .local v7, i:I
    :goto_5
    if-ge v7, v11, :cond_8

    .line 178
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v16, v15, v7

    .line 179
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    aget-object v15, v15, v7

    sget-object v16, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    aget-object v15, v15, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->grayPoint:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 181
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 182
    .local v9, lpIv:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v15, 0x0

    invoke-virtual {v9, v5, v5, v5, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 183
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    aget-object v15, v15, v7

    invoke-virtual {v15, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    aget-object v15, v15, v7

    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 161
    .end local v5           #dp_5:I
    .end local v7           #i:I
    .end local v9           #lpIv:Landroid/widget/LinearLayout$LayoutParams;
    .end local v10           #lpLl:Landroid/widget/LinearLayout$LayoutParams;
    .end local v13           #resId:I
    :cond_7
    const/16 v15, 0x8

    goto/16 :goto_4

    .line 186
    .restart local v5       #dp_5:I
    .restart local v7       #i:I
    .restart local v10       #lpLl:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v13       #resId:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lm/framework/ui/widget/viewpager/ViewPagerClassic;

    invoke-virtual {v15}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->getCurrentScreen()I

    move-result v3

    .line 187
    .local v3, curPage:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    aget-object v15, v15, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->bluePoint:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 134
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 130
    :pswitch_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->afterPlatformListGot()V

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 227
    .local v1, time:J
    iget-wide v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->lastClickTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 235
    :goto_0
    return-void

    .line 230
    :cond_0
    iput-wide v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->lastClickTime:J

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 233
    .local v0, platforms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->parent:Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;

    invoke-virtual {v3, p1, v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->onPlatformIconClick(Landroid/view/View;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 4

    .prologue
    .line 192
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lm/framework/ui/widget/viewpager/ViewPagerClassic;

    invoke-virtual {v2}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->getCurrentScreen()I

    move-result v2

    iget v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    mul-int v0, v2, v3

    .line 193
    .local v0, curFirst:I
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->calPageSize()V

    .line 194
    iget v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    div-int v1, v0, v2

    .line 196
    .local v1, newPage:I
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->removeViewAt(I)V

    .line 197
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->afterPlatformListGot()V

    .line 199
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lm/framework/ui/widget/viewpager/ViewPagerClassic;

    invoke-virtual {v2, v1}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->setCurrentScreen(I)V

    .line 200
    return-void
.end method

.method public setCustomerLogos(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, customers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcn/sharesdk/onekeyshare/CustomerLogo;>;"
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->customers:Ljava/util/ArrayList;

    .line 214
    return-void
.end method

.method public setData(Ljava/util/HashMap;Z)V
    .locals 0
    .parameter
    .parameter "silent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->reqData:Ljava/util/HashMap;

    .line 204
    iput-boolean p2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->silent:Z

    .line 205
    return-void
.end method

.method public setEditPageBackground(Landroid/view/View;)V
    .locals 0
    .parameter "bgView"

    .prologue
    .line 217
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->bgView:Landroid/view/View;

    .line 218
    return-void
.end method

.method public setHiddenPlatforms(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, hiddenPlatforms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->hiddenPlatforms:Ljava/util/HashMap;

    .line 209
    return-void
.end method

.method public setParent(Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 222
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->parent:Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;

    .line 223
    return-void
.end method
