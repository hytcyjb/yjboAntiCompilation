.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/gf;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/fo;
.source "UiSettingManager.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/fu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/gf$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

.field private c:Lcom/tencent/tencentmap/mapsdk/maps/a/gf$a;

.field private d:Lcom/tencent/tencentmap/mapsdk/maps/a/gh;

.field private e:Landroid/widget/ZoomControls;

.field private f:Landroid/view/View;

.field private g:Z

.field private h:Z

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 5
    .parameter "viewgroup"
    .parameter "gl"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fo;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->a:Landroid/view/ViewGroup;

    .line 21
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 23
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gf$a;

    .line 27
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gh;

    .line 29
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->e:Landroid/widget/ZoomControls;

    .line 31
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->f:Landroid/view/View;

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->g:Z

    .line 39
    iput-boolean v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->h:Z

    .line 41
    const v1, 0x3ca3d70a

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->i:F

    .line 42
    const v1, 0x3cb43958

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->j:F

    .line 43
    const v1, 0x3c978d50

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->k:F

    .line 45
    const v1, 0x3f2ae148

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->l:F

    .line 46
    const v1, 0x3f2c49ba

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->m:F

    .line 47
    const v1, 0x3f2f6fd2

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->n:F

    .line 54
    const v1, 0x3c449ba6

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->o:F

    .line 55
    const v1, 0x3c4ccccd

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->p:F

    .line 56
    const v1, 0x3c2a64c3

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->q:F

    .line 58
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gf$1;

    invoke-direct {v1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gf$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/gf;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->r:Ljava/lang/Runnable;

    .line 77
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->a:Landroid/view/ViewGroup;

    .line 78
    check-cast p2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .end local p2
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 80
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-gez v1, :cond_0

    .line 87
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, v2, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 95
    .end local v0           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->r:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/gf;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/tencentmap/mapsdk/maps/a/gf;)Landroid/widget/ZoomControls;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->e:Landroid/widget/ZoomControls;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/tencentmap/mapsdk/maps/a/gf;)Lcom/tencent/tencentmap/mapsdk/maps/a/gf$a;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gf$a;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 5

    .prologue
    .line 141
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gh;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gh;

    .line 143
    new-instance v0, Landroid/widget/ZoomControls;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ZoomControls;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->e:Landroid/widget/ZoomControls;

    .line 150
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location_enable.png"

    invoke-static {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "location_state_normal.png"

    invoke-static {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "location_state_selected.png"

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gh;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/gh;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gh;

    invoke-virtual {v3, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gh;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gh;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gh;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 152
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/fu;)V

    .line 153
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->e:Landroid/widget/ZoomControls;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gf$2;

    invoke-direct {v1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gf$2;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/gf;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->e:Landroid/widget/ZoomControls;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gf$3;

    invoke-direct {v1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gf$3;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/gf;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gh;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gf$4;

    invoke-direct {v1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gf$4;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/gf;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    return-void
.end method

.method public final a(II)V
    .locals 9
    .parameter "width"
    .parameter "heigh"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 520
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->f:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gh;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40a0

    mul-float/2addr v0, v3

    const/high16 v3, 0x3f00

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->e:Landroid/widget/ZoomControls;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->f:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x55

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->f:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->f:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->g:Z

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->e:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v7}, Landroid/widget/ZoomControls;->setVisibility(I)V

    :goto_2
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->h:Z

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gh;

    invoke-virtual {v0, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/gh;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->f:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->e:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v8}, Landroid/widget/ZoomControls;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gh;

    invoke-virtual {v0, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/gh;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/gf$a;)V
    .locals 0
    .parameter "locControler"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gf$a;

    .line 159
    return-void
.end method

.method final a(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->g:Z

    if-ne v0, p1, :cond_0

    .line 416
    :goto_0
    return-void

    .line 402
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->g:Z

    .line 403
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->g:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 404
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->e:Landroid/widget/ZoomControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setVisibility(I)V

    goto :goto_0

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->e:Landroid/widget/ZoomControls;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setVisibility(I)V

    goto :goto_0
.end method

.method final b(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e(Z)V

    .line 422
    return-void
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->g:Z

    return v0
.end method

.method final c(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->h:Z

    if-ne v0, p1, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->h:Z

    .line 431
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gh;

    if-eqz v0, :cond_0

    .line 434
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->h:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 435
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gh;->setVisibility(I)V

    goto :goto_0

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gh;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gh;->setVisibility(I)V

    goto :goto_0
.end method

.method final c()Z
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->m()Z

    move-result v0

    return v0
.end method

.method final d(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Z)V

    .line 445
    return-void
.end method

.method final d()Z
    .locals 1

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->h:Z

    return v0
.end method

.method final e(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Z)V

    .line 451
    return-void
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->n()Z

    move-result v0

    return v0
.end method

.method final f(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c(Z)V

    .line 457
    return-void
.end method

.method final f()Z
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->o()Z

    move-result v0

    return v0
.end method

.method final g(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->d(Z)V

    .line 463
    return-void
.end method

.method final g()Z
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->p()Z

    move-result v0

    return v0
.end method

.method final h(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 468
    invoke-virtual {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->d(Z)V

    .line 469
    invoke-virtual {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->e(Z)V

    .line 470
    invoke-virtual {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->f(Z)V

    .line 471
    invoke-virtual {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->g(Z)V

    .line 472
    return-void
.end method

.method final h()Z
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->q()Z

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 115
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->e:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->e:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gh;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gh;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gh;->a()V

    .line 123
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gf$a;

    if-eqz v0, :cond_0

    .line 124
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gf$a;

    .line 129
    :cond_0
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gh;

    .line 131
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 132
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->a:Landroid/view/ViewGroup;

    .line 134
    return-void
.end method
