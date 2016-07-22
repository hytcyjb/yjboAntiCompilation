.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"

# interfaces
.implements Landroid/support/v4/widget/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/DrawerLayout$b;,
        Landroid/support/v4/widget/DrawerLayout$a;,
        Landroid/support/v4/widget/DrawerLayout$g;,
        Landroid/support/v4/widget/DrawerLayout$h;,
        Landroid/support/v4/widget/DrawerLayout$SavedState;,
        Landroid/support/v4/widget/DrawerLayout$d;,
        Landroid/support/v4/widget/DrawerLayout$e;,
        Landroid/support/v4/widget/DrawerLayout$c;,
        Landroid/support/v4/widget/DrawerLayout$f;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/widget/DrawerLayout$c;

.field private static final b:[I

.field private static final c:Z

.field private static final d:Z


# instance fields
.field private A:F

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:Landroid/graphics/drawable/Drawable;

.field private D:Landroid/graphics/drawable/Drawable;

.field private E:Ljava/lang/CharSequence;

.field private F:Ljava/lang/CharSequence;

.field private G:Ljava/lang/Object;

.field private H:Z

.field private I:Landroid/graphics/drawable/Drawable;

.field private J:Landroid/graphics/drawable/Drawable;

.field private K:Landroid/graphics/drawable/Drawable;

.field private L:Landroid/graphics/drawable/Drawable;

.field private final M:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/support/v4/widget/DrawerLayout$b;

.field private f:F

.field private g:I

.field private h:I

.field private i:F

.field private j:Landroid/graphics/Paint;

.field private final k:Landroid/support/v4/widget/ag;

.field private final l:Landroid/support/v4/widget/ag;

.field private final m:Landroid/support/v4/widget/DrawerLayout$h;

.field private final n:Landroid/support/v4/widget/DrawerLayout$h;

.field private o:I

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Landroid/support/v4/widget/DrawerLayout$f;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/widget/DrawerLayout$f;",
            ">;"
        }
    .end annotation
.end field

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x15

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    new-array v0, v1, [I

    const v3, 0x10100b3

    aput v3, v0, v2

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->b:[I

    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/support/v4/widget/DrawerLayout;->c:Z

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_1

    :goto_1
    sput-boolean v1, Landroid/support/v4/widget/DrawerLayout;->d:Z

    .line 347
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 348
    if-lt v0, v4, :cond_2

    .line 349
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$d;

    invoke-direct {v0}, Landroid/support/v4/widget/DrawerLayout$d;-><init>()V

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/DrawerLayout$c;

    .line 353
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 179
    goto :goto_0

    :cond_1
    move v1, v2

    .line 182
    goto :goto_1

    .line 351
    :cond_2
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$e;

    invoke-direct {v0}, Landroid/support/v4/widget/DrawerLayout$e;-><init>()V

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/DrawerLayout$c;

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 358
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 359
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 363
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 366
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 185
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$b;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/DrawerLayout$b;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->e:Landroid/support/v4/widget/DrawerLayout$b;

    .line 191
    const/high16 v0, -0x6700

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->h:I

    .line 193
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/graphics/Paint;

    .line 201
    iput-boolean v4, p0, Landroid/support/v4/widget/DrawerLayout;->q:Z

    .line 203
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    .line 204
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->s:I

    .line 205
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->t:I

    .line 206
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    .line 228
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    .line 229
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->J:Landroid/graphics/drawable/Drawable;

    .line 230
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->K:Landroid/graphics/drawable/Drawable;

    .line 231
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->L:Landroid/graphics/drawable/Drawable;

    .line 367
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->setDescendantFocusability(I)V

    .line 368
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 369
    const/high16 v1, 0x4280

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->g:I

    .line 370
    const/high16 v1, 0x43c8

    mul-float/2addr v1, v0

    .line 372
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$h;

    invoke-direct {v2, p0, v3}, Landroid/support/v4/widget/DrawerLayout$h;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/DrawerLayout$h;

    .line 373
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$h;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Landroid/support/v4/widget/DrawerLayout$h;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->n:Landroid/support/v4/widget/DrawerLayout$h;

    .line 375
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/DrawerLayout$h;

    invoke-static {p0, v5, v2}, Landroid/support/v4/widget/ag;->a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ag$a;)Landroid/support/v4/widget/ag;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ag;

    .line 376
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ag;

    invoke-virtual {v2, v4}, Landroid/support/v4/widget/ag;->a(I)V

    .line 377
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ag;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/ag;->a(F)V

    .line 378
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/DrawerLayout$h;

    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ag;

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout$h;->a(Landroid/support/v4/widget/ag;)V

    .line 380
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->n:Landroid/support/v4/widget/DrawerLayout$h;

    invoke-static {p0, v5, v2}, Landroid/support/v4/widget/ag;->a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ag$a;)Landroid/support/v4/widget/ag;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ag;

    .line 381
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ag;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/ag;->a(I)V

    .line 382
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ag;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/ag;->a(F)V

    .line 383
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->n:Landroid/support/v4/widget/DrawerLayout$h;

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ag;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout$h;->a(Landroid/support/v4/widget/ag;)V

    .line 386
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 388
    invoke-static {p0, v4}, Landroid/support/v4/view/ah;->c(Landroid/view/View;I)V

    .line 391
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$a;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/DrawerLayout$a;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ah;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 392
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/support/v4/view/aw;->a(Landroid/view/ViewGroup;Z)V

    .line 393
    invoke-static {p0}, Landroid/support/v4/view/ah;->y(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    sget-object v1, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/DrawerLayout$c;

    invoke-interface {v1, p0}, Landroid/support/v4/widget/DrawerLayout$c;->a(Landroid/view/View;)V

    .line 395
    sget-object v1, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/DrawerLayout$c;

    invoke-interface {v1, p1}, Landroid/support/v4/widget/DrawerLayout$c;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->B:Landroid/graphics/drawable/Drawable;

    .line 398
    :cond_0
    const/high16 v1, 0x4120

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->f:F

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->M:Ljava/util/ArrayList;

    .line 401
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/DrawerLayout;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->k()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/View;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 878
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 879
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 880
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 881
    if-nez p2, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-ne v2, p1, :cond_2

    .line 885
    :cond_1
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/ah;->c(Landroid/view/View;I)V

    .line 879
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 888
    :cond_2
    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/support/v4/view/ah;->c(Landroid/view/View;I)V

    goto :goto_1

    .line 892
    :cond_3
    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1160
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/support/v4/b/a/a;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1161
    :cond_0
    const/4 v0, 0x0

    .line 1165
    :goto_0
    return v0

    .line 1164
    :cond_1
    invoke-static {p1, p2}, Landroid/support/v4/b/a/a;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 1165
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static d(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 984
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 985
    const-string v0, "LEFT"

    .line 990
    :goto_0
    return-object v0

    .line 987
    :cond_0
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 988
    const-string v0, "RIGHT"

    goto :goto_0

    .line 990
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic d()[I
    .locals 1

    .prologue
    .line 94
    sget-object v0, Landroid/support/v4/widget/DrawerLayout;->b:[I

    return-object v0
.end method

.method static synthetic e()Z
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->c:Z

    return v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 1110
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->d:Z

    if-eqz v0, :cond_0

    .line 1115
    :goto_0
    return-void

    .line 1113
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->C:Landroid/graphics/drawable/Drawable;

    .line 1114
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->D:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private g()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1118
    invoke-static {p0}, Landroid/support/v4/view/ah;->h(Landroid/view/View;)I

    move-result v0

    .line 1120
    if-nez v0, :cond_0

    .line 1121
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1123
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 1124
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    .line 1133
    :goto_0
    return-object v0

    .line 1127
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->J:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1129
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->J:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 1130
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->J:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1133
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->K:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private h()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1137
    invoke-static {p0}, Landroid/support/v4/view/ah;->h(Landroid/view/View;)I

    move-result v0

    .line 1138
    if-nez v0, :cond_0

    .line 1139
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->J:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1141
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->J:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 1142
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->J:Landroid/graphics/drawable/Drawable;

    .line 1151
    :goto_0
    return-object v0

    .line 1145
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1147
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 1148
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1151
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->L:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private i()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1729
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    move v2, v1

    .line 1730
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1731
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$g;

    .line 1732
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$g;->c(Landroid/support/v4/widget/DrawerLayout$g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1733
    const/4 v0, 0x1

    .line 1736
    :goto_1
    return v0

    .line 1730
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1736
    goto :goto_1
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 1799
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->k()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Landroid/view/View;
    .locals 4

    .prologue
    .line 1803
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v2

    .line 1804
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1805
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1806
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->k(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1810
    :goto_1
    return-object v0

    .line 1804
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1810
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic l(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 94
    invoke-static {p0}, Landroid/support/v4/widget/DrawerLayout;->n(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private static m(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1276
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1277
    if-eqz v1, :cond_0

    .line 1278
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1280
    :cond_0
    return v0
.end method

.method private static n(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    .line 1934
    invoke-static {p0}, Landroid/support/v4/view/ah;->e(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/ah;->e(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x3

    .line 681
    invoke-static {p0}, Landroid/support/v4/view/ah;->h(Landroid/view/View;)I

    move-result v0

    .line 683
    sparse-switch p1, :sswitch_data_0

    .line 726
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 685
    :sswitch_0
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    if-eq v1, v2, :cond_1

    .line 686
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    goto :goto_0

    .line 688
    :cond_1
    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->t:I

    .line 690
    :goto_1
    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 688
    :cond_2
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    goto :goto_1

    .line 695
    :sswitch_1
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->s:I

    if-eq v1, v2, :cond_3

    .line 696
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->s:I

    goto :goto_0

    .line 698
    :cond_3
    if-nez v0, :cond_4

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    .line 700
    :goto_2
    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 698
    :cond_4
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->t:I

    goto :goto_2

    .line 705
    :sswitch_2
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->t:I

    if-eq v1, v2, :cond_5

    .line 706
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->t:I

    goto :goto_0

    .line 708
    :cond_5
    if-nez v0, :cond_6

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    .line 710
    :goto_3
    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 708
    :cond_6
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->s:I

    goto :goto_3

    .line 715
    :sswitch_3
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    if-eq v1, v2, :cond_7

    .line 716
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    goto :goto_0

    .line 718
    :cond_7
    if-nez v0, :cond_8

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->s:I

    .line 720
    :goto_4
    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 718
    :cond_8
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    goto :goto_4

    .line 683
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x800003 -> :sswitch_2
        0x800005 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Landroid/view/View;)I
    .locals 3
    .parameter

    .prologue
    .line 738
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 739
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$g;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$g;->a:I

    .line 742
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(I)I

    move-result v0

    return v0
.end method

.method a()Landroid/view/View;
    .locals 5

    .prologue
    .line 934
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 935
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 936
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 937
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$g;

    .line 938
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$g;->b(Landroid/support/v4/widget/DrawerLayout$g;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    move-object v0, v1

    .line 942
    :goto_1
    return-object v0

    .line 935
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 942
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 499
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 500
    return-void
.end method

.method a(IILandroid/view/View;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 790
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ag;

    invoke-virtual {v2}, Landroid/support/v4/widget/ag;->a()I

    move-result v2

    .line 791
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ag;

    invoke-virtual {v3}, Landroid/support/v4/widget/ag;->a()I

    move-result v3

    .line 794
    if-eq v2, v1, :cond_0

    if-ne v3, v1, :cond_2

    :cond_0
    move v2, v1

    .line 802
    :goto_0
    if-eqz p3, :cond_1

    if-nez p2, :cond_1

    .line 803
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$g;

    .line 804
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$g;->a(Landroid/support/v4/widget/DrawerLayout$g;)F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_5

    .line 805
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;)V

    .line 811
    :cond_1
    :goto_1
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->o:I

    if-eq v2, v0, :cond_6

    .line 812
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->o:I

    .line 814
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 817
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 818
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_6

    .line 819
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$f;

    invoke-interface {v0, v2}, Landroid/support/v4/widget/DrawerLayout$f;->a(I)V

    .line 818
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 796
    :cond_2
    if-eq v2, v0, :cond_3

    if-ne v3, v0, :cond_4

    :cond_3
    move v2, v0

    .line 797
    goto :goto_0

    .line 799
    :cond_4
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    .line 806
    :cond_5
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$g;->a(Landroid/support/v4/widget/DrawerLayout$g;)F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 807
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)V

    goto :goto_1

    .line 823
    :cond_6
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0x800005

    const v1, 0x800003

    .line 465
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->d:Z

    if-eqz v0, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    and-int v0, p2, v1

    if-ne v0, v1, :cond_2

    .line 470
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    .line 480
    :goto_1
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->f()V

    .line 481
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    goto :goto_0

    .line 471
    :cond_2
    and-int v0, p2, v2

    if-ne v0, v2, :cond_3

    .line 472
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->J:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 473
    :cond_3
    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 474
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->K:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 475
    :cond_4
    and-int/lit8 v0, p2, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 476
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->L:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public a(Landroid/support/v4/widget/DrawerLayout$f;)V
    .locals 1
    .parameter

    .prologue
    .line 544
    if-nez p1, :cond_0

    .line 551
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:Ljava/util/List;

    if-nez v0, :cond_1

    .line 548
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:Ljava/util/List;

    .line 550
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method a(Landroid/view/View;F)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 895
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 899
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 900
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$f;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/widget/DrawerLayout$f;->a(Landroid/view/View;F)V

    .line 899
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 903
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->G:Ljava/lang/Object;

    .line 440
    iput-boolean p2, p0, Landroid/support/v4/widget/DrawerLayout;->H:Z

    .line 441
    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->setWillNotDraw(Z)V

    .line 442
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->requestLayout()V

    .line 443
    return-void

    .line 441
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Z)V
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1545
    .line 1546
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    .line 1547
    :goto_0
    if-ge v2, v4, :cond_3

    .line 1548
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1549
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$g;

    .line 1551
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p1, :cond_1

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$g;->c(Landroid/support/v4/widget/DrawerLayout$g;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1547
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1555
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1557
    const/4 v7, 0x3

    invoke-virtual {p0, v5, v7}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1558
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ag;

    neg-int v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v7, v5, v6, v8}, Landroid/support/v4/widget/ag;->a(Landroid/view/View;II)Z

    move-result v5

    or-int/2addr v1, v5

    .line 1565
    :goto_2
    invoke-static {v0, v3}, Landroid/support/v4/widget/DrawerLayout$g;->a(Landroid/support/v4/widget/DrawerLayout$g;Z)Z

    goto :goto_1

    .line 1561
    :cond_2
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ag;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v5, v7, v8}, Landroid/support/v4/widget/ag;->a(Landroid/view/View;II)Z

    move-result v5

    or-int/2addr v1, v5

    goto :goto_2

    .line 1568
    :cond_3
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/DrawerLayout$h;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$h;->a()V

    .line 1569
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->n:Landroid/support/v4/widget/DrawerLayout$h;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$h;->a()V

    .line 1571
    if-eqz v1, :cond_4

    .line 1572
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1574
    :cond_4
    return-void
.end method

.method a(Landroid/view/View;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 929
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result v0

    .line 930
    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1765
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getDescendantFocusability()I

    move-result v0

    const/high16 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 1796
    :goto_0
    return-void

    .line 1771
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    move v2, v1

    move v0, v1

    .line 1773
    :goto_1
    if-ge v2, v3, :cond_3

    .line 1774
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1775
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1776
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1777
    const/4 v0, 0x1

    .line 1778
    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1773
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1781
    :cond_2
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->M:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1785
    :cond_3
    if-nez v0, :cond_5

    .line 1786
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1787
    :goto_3
    if-ge v1, v2, :cond_5

    .line 1788
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1789
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 1790
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1787
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1795
    :cond_5
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1906
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1908
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->a()Landroid/view/View;

    move-result-object v0

    .line 1909
    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1912
    :cond_0
    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroid/support/v4/view/ah;->c(Landroid/view/View;I)V

    .line 1923
    :goto_0
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->c:Z

    if-nez v0, :cond_1

    .line 1924
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->e:Landroid/support/v4/widget/DrawerLayout$b;

    invoke-static {p1, v0}, Landroid/support/v4/view/ah;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 1926
    :cond_1
    return-void

    .line 1917
    :cond_2
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v4/view/ah;->c(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public b(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 775
    invoke-static {p0}, Landroid/support/v4/view/ah;->h(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/f;->a(II)I

    move-result v0

    .line 777
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 778
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->E:Ljava/lang/CharSequence;

    .line 782
    :goto_0
    return-object v0

    .line 779
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 780
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->F:Ljava/lang/CharSequence;

    goto :goto_0

    .line 782
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1541
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1542
    return-void
.end method

.method public b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 605
    invoke-static {p0}, Landroid/support/v4/view/ah;->h(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, v0}, Landroid/support/v4/view/f;->a(II)I

    move-result v1

    .line 608
    sparse-switch p2, :sswitch_data_0

    .line 623
    :goto_0
    if-eqz p1, :cond_0

    .line 625
    const/4 v0, 0x3

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ag;

    .line 626
    :goto_1
    invoke-virtual {v0}, Landroid/support/v4/widget/ag;->e()V

    .line 628
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 643
    :cond_1
    :goto_2
    return-void

    .line 610
    :sswitch_0
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    goto :goto_0

    .line 613
    :sswitch_1
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->s:I

    goto :goto_0

    .line 616
    :sswitch_2
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->t:I

    goto :goto_0

    .line 619
    :sswitch_3
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    goto :goto_0

    .line 625
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ag;

    goto :goto_1

    .line 630
    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v0

    .line 631
    if-eqz v0, :cond_1

    .line 632
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;)V

    goto :goto_2

    .line 636
    :pswitch_1
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v0

    .line 637
    if-eqz v0, :cond_1

    .line 638
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    goto :goto_2

    .line 608
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x800003 -> :sswitch_2
        0x800005 -> :sswitch_3
    .end sparse-switch

    .line 628
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/support/v4/widget/DrawerLayout$f;)V
    .locals 1
    .parameter

    .prologue
    .line 561
    if-nez p1, :cond_0

    .line 565
    :goto_0
    return-void

    .line 564
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method b(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 826
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$g;

    .line 827
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$g;->b(Landroid/support/v4/widget/DrawerLayout$g;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 828
    invoke-static {v0, v3}, Landroid/support/v4/widget/DrawerLayout$g;->a(Landroid/support/v4/widget/DrawerLayout$g;I)I

    .line 830
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 834
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 835
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$f;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/DrawerLayout$f;->onDrawerClosed(Landroid/view/View;)V

    .line 834
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 839
    :cond_0
    invoke-direct {p0, p1, v3}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    .line 844
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 845
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 846
    if-eqz v0, :cond_1

    .line 847
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 851
    :cond_1
    return-void
.end method

.method b(Landroid/view/View;F)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 906
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$g;

    .line 907
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$g;->a(Landroid/support/v4/widget/DrawerLayout$g;)F

    move-result v1

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    .line 913
    :goto_0
    return-void

    .line 911
    :cond_0
    invoke-static {v0, p2}, Landroid/support/v4/widget/DrawerLayout$g;->a(Landroid/support/v4/widget/DrawerLayout$g;F)F

    .line 912
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;F)V

    goto :goto_0
.end method

.method c(I)Landroid/view/View;
    .locals 5
    .parameter

    .prologue
    .line 964
    invoke-static {p0}, Landroid/support/v4/view/ah;->h(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/f;->a(II)I

    move-result v0

    and-int/lit8 v2, v0, 0x7

    .line 966
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 967
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 968
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 969
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result v4

    .line 970
    and-int/lit8 v4, v4, 0x7

    if-ne v4, v2, :cond_0

    .line 974
    :goto_1
    return-object v0

    .line 967
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 974
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method c()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1815
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->w:Z

    if-nez v0, :cond_1

    .line 1816
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1817
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1819
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1820
    :goto_0
    if-ge v7, v1, :cond_0

    .line 1821
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1820
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1823
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1824
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->w:Z

    .line 1826
    :cond_1
    return-void
.end method

.method c(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 854
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$g;

    .line 855
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$g;->b(Landroid/support/v4/widget/DrawerLayout$g;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    .line 856
    invoke-static {v0, v2}, Landroid/support/v4/widget/DrawerLayout$g;->a(Landroid/support/v4/widget/DrawerLayout$g;I)I

    .line 857
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 861
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 862
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->y:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$f;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/DrawerLayout$f;->onDrawerOpened(Landroid/view/View;)V

    .line 861
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 866
    :cond_0
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    .line 869
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    .line 873
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 875
    :cond_2
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 1755
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$g;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1261
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 1262
    const/4 v1, 0x0

    .line 1263
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 1264
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$g;

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$g;->a(Landroid/support/v4/widget/DrawerLayout$g;)F

    move-result v0

    .line 1265
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1263
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1267
    :cond_0
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->i:F

    .line 1270
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ag;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/ag;->a(Z)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ag;

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/ag;->a(Z)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 1271
    invoke-static {p0}, Landroid/support/v4/view/ah;->d(Landroid/view/View;)V

    .line 1273
    :cond_1
    return-void
.end method

.method d(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 916
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$g;

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$g;->a(Landroid/support/v4/widget/DrawerLayout$g;)F

    move-result v0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1344
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v4

    .line 1345
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v5

    .line 1346
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    .line 1348
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 1349
    if-eqz v5, :cond_5

    .line 1350
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    .line 1351
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v7, :cond_4

    .line 1352
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1353
    if-eq v0, p2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout;->m(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v8, v4, :cond_1

    move v0, v2

    .line 1351
    :cond_0
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 1359
    :cond_1
    const/4 v8, 0x3

    invoke-virtual {p0, v0, v8}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1360
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1361
    if-le v0, v1, :cond_9

    :goto_2
    move v1, v0

    move v0, v2

    .line 1362
    goto :goto_1

    .line 1363
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1364
    if-lt v0, v2, :cond_0

    :cond_3
    move v0, v2

    goto :goto_1

    .line 1367
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_5
    move v0, v2

    .line 1369
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    .line 1370
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1372
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->i:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    if-eqz v5, :cond_7

    .line 1373
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->h:I

    const/high16 v3, -0x100

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x18

    .line 1374
    int-to-float v2, v2

    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->i:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1375
    shl-int/lit8 v2, v2, 0x18

    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->h:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 1376
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1378
    int-to-float v1, v1

    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1403
    :cond_6
    :goto_3
    return v7

    .line 1379
    :cond_7
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1381
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1382
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1383
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ag;

    invoke-virtual {v2}, Landroid/support/v4/widget/ag;->b()I

    move-result v2

    .line 1384
    const/4 v3, 0x0

    int-to-float v4, v1

    int-to-float v2, v2

    div-float v2, v4, v2

    const/high16 v4, 0x3f80

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1386
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3, v1, v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1388
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->C:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1389
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 1390
    :cond_8
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->D:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    invoke-virtual {p0, p2, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1392
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->D:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1393
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1394
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    .line 1395
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ag;

    invoke-virtual {v3}, Landroid/support/v4/widget/ag;->b()I

    move-result v3

    .line 1396
    const/4 v4, 0x0

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f80

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1398
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->D:Landroid/graphics/drawable/Drawable;

    sub-int v0, v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1400
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->D:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1401
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->D:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    :cond_9
    move v0, v1

    goto/16 :goto_2
.end method

.method e(Landroid/view/View;)I
    .locals 2
    .parameter

    .prologue
    .line 924
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$g;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$g;->a:I

    .line 925
    invoke-static {p0}, Landroid/support/v4/view/ah;->h(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/f;->a(II)I

    move-result v0

    return v0
.end method

.method public e(I)V
    .locals 3
    .parameter

    .prologue
    .line 1612
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v0

    .line 1613
    if-nez v0, :cond_0

    .line 1614
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No drawer view found with gravity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1617
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;)V

    .line 1618
    return-void
.end method

.method public f(I)V
    .locals 3
    .parameter

    .prologue
    .line 1654
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v0

    .line 1655
    if-nez v0, :cond_0

    .line 1656
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No drawer view found with gravity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1659
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    .line 1660
    return-void
.end method

.method f(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 1407
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$g;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$g;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1690
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v0

    .line 1691
    if-eqz v0, :cond_0

    .line 1692
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v0

    .line 1694
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1411
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$g;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$g;->a:I

    .line 1412
    invoke-static {p1}, Landroid/support/v4/view/ah;->h(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/support/v4/view/f;->a(II)I

    move-result v0

    .line 1414
    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_0

    move v0, v1

    .line 1422
    :goto_0
    return v0

    .line 1418
    :cond_0
    and-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_1

    move v0, v1

    .line 1420
    goto :goto_0

    .line 1422
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1741
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$g;

    invoke-direct {v0, v1, v1}, Landroid/support/v4/widget/DrawerLayout$g;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 1760
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$g;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/DrawerLayout$g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 1746
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$g;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$g;

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$g;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$g;-><init>(Landroid/support/v4/widget/DrawerLayout$g;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$g;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$g;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$g;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$g;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getDrawerElevation()F
    .locals 1

    .prologue
    .line 427
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->d:Z

    if-eqz v0, :cond_0

    .line 428
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->f:F

    .line 430
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->B:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public h(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1582
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1583
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1586
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$g;

    .line 1587
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->q:Z

    if-eqz v1, :cond_1

    .line 1588
    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$g;->a(Landroid/support/v4/widget/DrawerLayout$g;F)F

    .line 1589
    invoke-static {v0, v2}, Landroid/support/v4/widget/DrawerLayout$g;->a(Landroid/support/v4/widget/DrawerLayout$g;I)I

    .line 1591
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    .line 1602
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1603
    return-void

    .line 1593
    :cond_1
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$g;->b(Landroid/support/v4/widget/DrawerLayout$g;I)I

    .line 1595
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1596
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ag;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ag;->a(Landroid/view/View;II)Z

    goto :goto_0

    .line 1598
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ag;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ag;->a(Landroid/view/View;II)Z

    goto :goto_0
.end method

.method public h(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1721
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v0

    .line 1722
    if-eqz v0, :cond_0

    .line 1723
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->k(Landroid/view/View;)Z

    move-result v0

    .line 1725
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1626
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1627
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1630
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$g;

    .line 1631
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->q:Z

    if-eqz v1, :cond_1

    .line 1632
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$g;->a(Landroid/support/v4/widget/DrawerLayout$g;F)F

    .line 1633
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$g;->a(Landroid/support/v4/widget/DrawerLayout$g;I)I

    .line 1644
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1645
    return-void

    .line 1635
    :cond_1
    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$g;->b(Landroid/support/v4/widget/DrawerLayout$g;I)I

    .line 1637
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1638
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ag;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ag;->a(Landroid/view/View;II)Z

    goto :goto_0

    .line 1641
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ag;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ag;->a(Landroid/view/View;II)Z

    goto :goto_0
.end method

.method public j(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1673
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1674
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1676
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$g;

    .line 1677
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$g;->b(Landroid/support/v4/widget/DrawerLayout$g;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    .line 1706
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1707
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1709
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$g;

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$g;->a(Landroid/support/v4/widget/DrawerLayout$g;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1001
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1002
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->q:Z

    .line 1003
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 995
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 996
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->q:Z

    .line 997
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1332
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1333
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->H:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1334
    sget-object v0, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/DrawerLayout$c;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->G:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/DrawerLayout$c;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1335
    if-lez v0, :cond_0

    .line 1336
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1337
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1340
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1427
    invoke-static {p1}, Landroid/support/v4/view/u;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1430
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ag;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ag;->a(Landroid/view/MotionEvent;)Z

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ag;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/ag;->a(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 1435
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v2

    .line 1469
    :goto_1
    if-nez v3, :cond_1

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->i()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->w:Z

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2

    .line 1437
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1439
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->z:F

    .line 1440
    iput v4, p0, Landroid/support/v4/widget/DrawerLayout;->A:F

    .line 1441
    iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->i:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 1442
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ag;

    float-to-int v0, v0

    float-to-int v4, v4

    invoke-virtual {v5, v0, v4}, Landroid/support/v4/widget/ag;->d(II)Landroid/view/View;

    move-result-object v0

    .line 1443
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 1447
    :goto_2
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->v:Z

    .line 1448
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->w:Z

    goto :goto_1

    .line 1454
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ag;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/ag;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1455
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/DrawerLayout$h;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$h;->a()V

    .line 1456
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->n:Landroid/support/v4/widget/DrawerLayout$h;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$h;->a()V

    move v0, v2

    goto :goto_1

    .line 1463
    :pswitch_2
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1464
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->v:Z

    .line 1465
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->w:Z

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    .line 1435
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1830
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1831
    invoke-static {p2}, Landroid/support/v4/view/h;->b(Landroid/view/KeyEvent;)V

    .line 1832
    const/4 v0, 0x1

    .line 1834
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1839
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1840
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->k()Landroid/view/View;

    move-result-object v0

    .line 1841
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1842
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->b()V

    .line 1844
    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1846
    :goto_0
    return v0

    .line 1844
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1846
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1170
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    .line 1171
    sub-int v6, p4, p2

    .line 1172
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    .line 1173
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v7, :cond_9

    .line 1174
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1176
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1173
    :cond_0
    :goto_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 1180
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$g;

    .line 1182
    invoke-virtual {p0, v8}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1183
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$g;->leftMargin:I

    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$g;->topMargin:I

    iget v3, v0, Landroid/support/v4/widget/DrawerLayout$g;->leftMargin:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$g;->topMargin:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {v8, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1187
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1188
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1192
    const/4 v1, 0x3

    invoke-virtual {p0, v8, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1193
    neg-int v1, v9

    int-to-float v2, v9

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$g;->a(Landroid/support/v4/widget/DrawerLayout$g;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v2, v1

    .line 1194
    add-int v1, v9, v2

    int-to-float v1, v1

    int-to-float v3, v9

    div-float/2addr v1, v3

    .line 1200
    :goto_2
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$g;->a(Landroid/support/v4/widget/DrawerLayout$g;)F

    move-result v3

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    .line 1202
    :goto_3
    iget v4, v0, Landroid/support/v4/widget/DrawerLayout$g;->a:I

    and-int/lit8 v4, v4, 0x70

    .line 1204
    sparse-switch v4, :sswitch_data_0

    .line 1207
    iget v4, v0, Landroid/support/v4/widget/DrawerLayout$g;->topMargin:I

    add-int/2addr v9, v2

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$g;->topMargin:I

    add-int/2addr v10, v11

    invoke-virtual {v8, v2, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1238
    :goto_4
    if-eqz v3, :cond_3

    .line 1239
    invoke-virtual {p0, v8, v1}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;F)V

    .line 1242
    :cond_3
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$g;->a(Landroid/support/v4/widget/DrawerLayout$g;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    const/4 v0, 0x0

    .line 1243
    :goto_5
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1244
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1196
    :cond_4
    int-to-float v1, v9

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$g;->a(Landroid/support/v4/widget/DrawerLayout$g;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v2, v6, v1

    .line 1197
    sub-int v1, v6, v2

    int-to-float v1, v1

    int-to-float v3, v9

    div-float/2addr v1, v3

    goto :goto_2

    .line 1200
    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 1213
    :sswitch_0
    sub-int v4, p5, p3

    .line 1214
    iget v10, v0, Landroid/support/v4/widget/DrawerLayout$g;->bottomMargin:I

    sub-int v10, v4, v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/2addr v9, v2

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$g;->bottomMargin:I

    sub-int/2addr v4, v11

    invoke-virtual {v8, v2, v10, v9, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 1222
    :sswitch_1
    sub-int v11, p5, p3

    .line 1223
    sub-int v4, v11, v10

    div-int/lit8 v4, v4, 0x2

    .line 1227
    iget v12, v0, Landroid/support/v4/widget/DrawerLayout$g;->topMargin:I

    if-ge v4, v12, :cond_7

    .line 1228
    iget v4, v0, Landroid/support/v4/widget/DrawerLayout$g;->topMargin:I

    .line 1232
    :cond_6
    :goto_6
    add-int/2addr v9, v2

    add-int/2addr v10, v4

    invoke-virtual {v8, v2, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 1229
    :cond_7
    add-int v12, v4, v10

    iget v13, v0, Landroid/support/v4/widget/DrawerLayout$g;->bottomMargin:I

    sub-int v13, v11, v13

    if-le v12, v13, :cond_6

    .line 1230
    iget v4, v0, Landroid/support/v4/widget/DrawerLayout$g;->bottomMargin:I

    sub-int v4, v11, v4

    sub-int/2addr v4, v10

    goto :goto_6

    .line 1242
    :cond_8
    const/4 v0, 0x4

    goto :goto_5

    .line 1248
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    .line 1249
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->q:Z

    .line 1250
    return-void

    .line 1204
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 1007
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1008
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1009
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1010
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1012
    const/high16 v4, 0x4000

    if-ne v2, v4, :cond_0

    const/high16 v4, 0x4000

    if-eq v3, v4, :cond_12

    .line 1013
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1018
    const/high16 v4, -0x8000

    if-ne v2, v4, :cond_2

    .line 1024
    :cond_1
    :goto_0
    const/high16 v2, -0x8000

    if-ne v3, v2, :cond_3

    move v2, v1

    move v1, v0

    .line 1037
    :goto_1
    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    .line 1039
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->G:Ljava/lang/Object;

    if-eqz v0, :cond_5

    invoke-static {p0}, Landroid/support/v4/view/ah;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    move v3, v0

    .line 1040
    :goto_2
    invoke-static {p0}, Landroid/support/v4/view/ah;->h(Landroid/view/View;)I

    move-result v8

    .line 1044
    const/4 v5, 0x0

    .line 1045
    const/4 v4, 0x0

    .line 1046
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v9

    .line 1047
    const/4 v0, 0x0

    move v7, v0

    :goto_3
    if-ge v7, v9, :cond_11

    .line 1048
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1050
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v6, 0x8

    if-ne v0, v6, :cond_6

    .line 1047
    :goto_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3

    .line 1020
    :cond_2
    if-nez v2, :cond_1

    .line 1022
    const/16 v1, 0x12c

    goto :goto_0

    .line 1027
    :cond_3
    if-nez v3, :cond_12

    .line 1029
    const/16 v0, 0x12c

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 1032
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1039
    :cond_5
    const/4 v0, 0x0

    move v3, v0

    goto :goto_2

    .line 1054
    :cond_6
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$g;

    .line 1056
    if-eqz v3, :cond_7

    .line 1057
    iget v6, v0, Landroid/support/v4/widget/DrawerLayout$g;->a:I

    invoke-static {v6, v8}, Landroid/support/v4/view/f;->a(II)I

    move-result v6

    .line 1058
    invoke-static {v10}, Landroid/support/v4/view/ah;->y(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1059
    sget-object v11, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/DrawerLayout$c;

    iget-object v12, p0, Landroid/support/v4/widget/DrawerLayout;->G:Ljava/lang/Object;

    invoke-interface {v11, v10, v12, v6}, Landroid/support/v4/widget/DrawerLayout$c;->a(Landroid/view/View;Ljava/lang/Object;I)V

    .line 1065
    :cond_7
    :goto_5
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1067
    iget v6, v0, Landroid/support/v4/widget/DrawerLayout$g;->leftMargin:I

    sub-int v6, v2, v6

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$g;->rightMargin:I

    sub-int/2addr v6, v11

    const/high16 v11, 0x4000

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1069
    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$g;->topMargin:I

    sub-int v11, v1, v11

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$g;->bottomMargin:I

    sub-int v0, v11, v0

    const/high16 v11, 0x4000

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1071
    invoke-virtual {v10, v6, v0}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 1061
    :cond_8
    sget-object v11, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/DrawerLayout$c;

    iget-object v12, p0, Landroid/support/v4/widget/DrawerLayout;->G:Ljava/lang/Object;

    invoke-interface {v11, v0, v12, v6}, Landroid/support/v4/widget/DrawerLayout$c;->a(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V

    goto :goto_5

    .line 1072
    :cond_9
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1073
    sget-boolean v6, Landroid/support/v4/widget/DrawerLayout;->d:Z

    if-eqz v6, :cond_a

    .line 1074
    invoke-static {v10}, Landroid/support/v4/view/ah;->v(Landroid/view/View;)F

    move-result v6

    iget v11, p0, Landroid/support/v4/widget/DrawerLayout;->f:F

    cmpl-float v6, v6, v11

    if-eqz v6, :cond_a

    .line 1075
    iget v6, p0, Landroid/support/v4/widget/DrawerLayout;->f:F

    invoke-static {v10, v6}, Landroid/support/v4/view/ah;->g(Landroid/view/View;F)V

    .line 1078
    :cond_a
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result v6

    and-int/lit8 v11, v6, 0x7

    .line 1082
    const/4 v6, 0x3

    if-ne v11, v6, :cond_d

    const/4 v6, 0x1

    .line 1083
    :goto_6
    if-eqz v6, :cond_b

    if-nez v5, :cond_c

    :cond_b
    if-nez v6, :cond_e

    if-eqz v4, :cond_e

    .line 1085
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child drawer has absolute gravity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v11}, Landroid/support/v4/widget/DrawerLayout;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DrawerLayout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already has a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "drawer view along that edge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1082
    :cond_d
    const/4 v6, 0x0

    goto :goto_6

    .line 1089
    :cond_e
    if-eqz v6, :cond_f

    .line 1090
    const/4 v5, 0x1

    .line 1094
    :goto_7
    iget v6, p0, Landroid/support/v4/widget/DrawerLayout;->g:I

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$g;->leftMargin:I

    add-int/2addr v6, v11

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$g;->rightMargin:I

    add-int/2addr v6, v11

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$g;->width:I

    invoke-static {p1, v6, v11}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v6

    .line 1097
    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$g;->topMargin:I

    iget v12, v0, Landroid/support/v4/widget/DrawerLayout$g;->bottomMargin:I

    add-int/2addr v11, v12

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$g;->height:I

    invoke-static {p2, v11, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 1100
    invoke-virtual {v10, v6, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_4

    .line 1092
    :cond_f
    const/4 v4, 0x1

    goto :goto_7

    .line 1102
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1107
    :cond_11
    return-void

    :cond_12
    move v2, v1

    move v1, v0

    goto/16 :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x3

    .line 1851
    check-cast p1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    .line 1852
    invoke-virtual {p1}, Landroid/support/v4/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1854
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->a:I

    if-eqz v0, :cond_0

    .line 1855
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->a:I

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v0

    .line 1856
    if-eqz v0, :cond_0

    .line 1857
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;)V

    .line 1861
    :cond_0
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->b:I

    if-eq v0, v2, :cond_1

    .line 1862
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->b:I

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/widget/DrawerLayout;->b(II)V

    .line 1864
    :cond_1
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->c:I

    if-eq v0, v2, :cond_2

    .line 1865
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->c:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->b(II)V

    .line 1867
    :cond_2
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->d:I

    if-eq v0, v2, :cond_3

    .line 1868
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->d:I

    const v1, 0x800003

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->b(II)V

    .line 1870
    :cond_3
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->e:I

    if-eq v0, v2, :cond_4

    .line 1871
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->e:I

    const v1, 0x800005

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->b(II)V

    .line 1873
    :cond_4
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .parameter

    .prologue
    .line 1327
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->f()V

    .line 1328
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1877
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1878
    new-instance v6, Landroid/support/v4/widget/DrawerLayout$SavedState;

    invoke-direct {v6, v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1880
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    move v5, v3

    .line 1881
    :goto_0
    if-ge v5, v7, :cond_1

    .line 1882
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1883
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$g;

    .line 1885
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$g;->b(Landroid/support/v4/widget/DrawerLayout$g;)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    .line 1887
    :goto_1
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$g;->b(Landroid/support/v4/widget/DrawerLayout$g;)I

    move-result v4

    const/4 v8, 0x2

    if-ne v4, v8, :cond_3

    move v4, v2

    .line 1888
    :goto_2
    if-nez v1, :cond_0

    if-eqz v4, :cond_4

    .line 1891
    :cond_0
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$g;->a:I

    iput v0, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->a:I

    .line 1896
    :cond_1
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    iput v0, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->b:I

    .line 1897
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->s:I

    iput v0, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->c:I

    .line 1898
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->t:I

    iput v0, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->d:I

    .line 1899
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    iput v0, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->e:I

    .line 1901
    return-object v6

    :cond_2
    move v1, v3

    .line 1885
    goto :goto_1

    :cond_3
    move v4, v3

    .line 1887
    goto :goto_2

    .line 1881
    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1474
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ag;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ag;->b(Landroid/view/MotionEvent;)V

    .line 1475
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/support/v4/widget/ag;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ag;->b(Landroid/view/MotionEvent;)V

    .line 1477
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1480
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 1521
    :goto_0
    :pswitch_0
    return v1

    .line 1482
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1484
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->z:F

    .line 1485
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->A:F

    .line 1486
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->v:Z

    .line 1487
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->w:Z

    goto :goto_0

    .line 1492
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1493
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1495
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ag;

    float-to-int v5, v0

    float-to-int v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/ag;->d(II)Landroid/view/View;

    move-result-object v4

    .line 1496
    if-eqz v4, :cond_1

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1497
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->z:F

    sub-float/2addr v0, v4

    .line 1498
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->A:F

    sub-float/2addr v3, v4

    .line 1499
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->k:Landroid/support/v4/widget/ag;

    invoke-virtual {v4}, Landroid/support/v4/widget/ag;->d()I

    move-result v4

    .line 1500
    mul-float/2addr v0, v0

    mul-float/2addr v3, v3

    add-float/2addr v0, v3

    mul-int v3, v4, v4

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 1502
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->a()Landroid/view/View;

    move-result-object v0

    .line 1503
    if-eqz v0, :cond_1

    .line 1504
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 1508
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1509
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->v:Z

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1504
    goto :goto_1

    .line 1514
    :pswitch_3
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1515
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->v:Z

    .line 1516
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->w:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 1480
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1529
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1531
    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->v:Z

    .line 1532
    if-eqz p1, :cond_0

    .line 1533
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1535
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1254
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    if-nez v0, :cond_0

    .line 1255
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1257
    :cond_0
    return-void
.end method

.method public setDrawerElevation(F)V
    .locals 3
    .parameter

    .prologue
    .line 410
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->f:F

    .line 411
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 412
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 413
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->f:F

    invoke-static {v1, v2}, Landroid/support/v4/view/ah;->g(Landroid/view/View;F)V

    .line 411
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    :cond_1
    return-void
.end method

.method public setDrawerListener(Landroid/support/v4/widget/DrawerLayout$f;)V
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Landroid/support/v4/widget/DrawerLayout$f;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->x:Landroid/support/v4/widget/DrawerLayout$f;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/support/v4/widget/DrawerLayout$f;)V

    .line 529
    :cond_0
    if-eqz p1, :cond_1

    .line 530
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/support/v4/widget/DrawerLayout$f;)V

    .line 534
    :cond_1
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->x:Landroid/support/v4/widget/DrawerLayout$f;

    .line 535
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1
    .parameter

    .prologue
    .line 581
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->b(II)V

    .line 582
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->b(II)V

    .line 583
    return-void
.end method

.method public setScrimColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 508
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->h:I

    .line 509
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 510
    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 1
    .parameter

    .prologue
    .line 1310
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->B:Landroid/graphics/drawable/Drawable;

    .line 1311
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1312
    return-void

    .line 1310
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 1290
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->B:Landroid/graphics/drawable/Drawable;

    .line 1291
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1292
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 1322
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->B:Landroid/graphics/drawable/Drawable;

    .line 1323
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1324
    return-void
.end method
