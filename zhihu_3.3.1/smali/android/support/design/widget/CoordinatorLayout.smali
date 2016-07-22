.class public Landroid/support/design/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/support/v4/view/z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/CoordinatorLayout$SavedState;,
        Landroid/support/design/widget/CoordinatorLayout$d;,
        Landroid/support/design/widget/CoordinatorLayout$a;,
        Landroid/support/design/widget/CoordinatorLayout$e;,
        Landroid/support/design/widget/CoordinatorLayout$b;,
        Landroid/support/design/widget/CoordinatorLayout$c;,
        Landroid/support/design/widget/CoordinatorLayout$g;,
        Landroid/support/design/widget/CoordinatorLayout$f;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field static final b:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Landroid/support/design/widget/CoordinatorLayout$b;",
            ">;>;>;"
        }
    .end annotation
.end field

.field static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field static final f:Landroid/support/design/widget/d;


# instance fields
.field final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/graphics/Rect;

.field private final k:Landroid/graphics/Rect;

.field private final l:Landroid/graphics/Rect;

.field private final m:[I

.field private n:Landroid/graphics/Paint;

.field private o:Z

.field private p:[I

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Landroid/support/design/widget/CoordinatorLayout$f;

.field private u:Z

.field private v:Landroid/support/v4/view/bj;

.field private w:Z

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private final z:Landroid/support/v4/view/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 97
    const-class v0, Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->a:Ljava/lang/String;

    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 106
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$g;

    invoke-direct {v0}, Landroid/support/design/widget/CoordinatorLayout$g;-><init>()V

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->e:Ljava/util/Comparator;

    .line 107
    new-instance v0, Landroid/support/design/widget/e;

    invoke-direct {v0}, Landroid/support/design/widget/e;-><init>()V

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->f:Landroid/support/design/widget/d;

    .line 114
    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->b:[Ljava/lang/Class;

    .line 119
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->c:Ljava/lang/ThreadLocal;

    return-void

    :cond_0
    move-object v0, v1

    .line 98
    goto :goto_0

    .line 109
    :cond_1
    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->e:Ljava/util/Comparator;

    .line 110
    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->f:Landroid/support/design/widget/d;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 180
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    new-instance v1, Landroid/support/design/widget/CoordinatorLayout$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/CoordinatorLayout$1;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->d:Ljava/util/Comparator;

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->g:Ljava/util/List;

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->h:Ljava/util/List;

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->i:Ljava/util/List;

    .line 145
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->j:Landroid/graphics/Rect;

    .line 146
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->k:Landroid/graphics/Rect;

    .line 147
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->l:Landroid/graphics/Rect;

    .line 148
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->m:[I

    .line 168
    new-instance v1, Landroid/support/v4/view/aa;

    invoke-direct {v1, p0}, Landroid/support/v4/view/aa;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->z:Landroid/support/v4/view/aa;

    .line 182
    invoke-static {p1}, Landroid/support/design/widget/s;->a(Landroid/content/Context;)V

    .line 184
    sget-object v1, Landroid/support/design/a$i;->CoordinatorLayout:[I

    sget v2, Landroid/support/design/a$h;->Widget_Design_CoordinatorLayout:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 186
    sget v2, Landroid/support/design/a$i;->CoordinatorLayout_keylines:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 187
    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 189
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->p:[I

    .line 190
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 191
    iget-object v3, p0, Landroid/support/design/widget/CoordinatorLayout;->p:[I

    array-length v3, v3

    .line 192
    :goto_0
    if-ge v0, v3, :cond_0

    .line 193
    iget-object v4, p0, Landroid/support/design/widget/CoordinatorLayout;->p:[I

    aget v5, v4, v0

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    aput v5, v4, v0

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    sget v0, Landroid/support/design/a$i;->CoordinatorLayout_statusBarBackground:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->x:Landroid/graphics/drawable/Drawable;

    .line 197
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->f:Landroid/support/design/widget/d;

    if-eqz v0, :cond_1

    .line 200
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->f:Landroid/support/design/widget/d;

    new-instance v1, Landroid/support/design/widget/CoordinatorLayout$a;

    invoke-direct {v1, p0, v6}, Landroid/support/design/widget/CoordinatorLayout$a;-><init>(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/CoordinatorLayout$1;)V

    invoke-interface {v0, p0, v1}, Landroid/support/design/widget/d;->a(Landroid/view/View;Landroid/support/v4/view/ab;)V

    .line 202
    :cond_1
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$d;

    invoke-direct {v0, p0, v6}, Landroid/support/design/widget/CoordinatorLayout$d;-><init>(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/CoordinatorLayout$1;)V

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 203
    return-void
.end method

.method private a(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 539
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->p:[I

    if-nez v1, :cond_0

    .line 540
    const-string v1, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No keylines defined for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - attempted index lookup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :goto_0
    return v0

    .line 544
    :cond_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->p:[I

    array-length v1, v1

    if-lt p1, v1, :cond_2

    .line 545
    :cond_1
    const-string v1, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keyline index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 549
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->p:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/support/design/widget/CoordinatorLayout$b;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x2e

    .line 553
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    const/4 v0, 0x0

    .line 585
    :goto_0
    return-object v0

    .line 558
    :cond_0
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 572
    :cond_1
    :goto_1
    :try_start_0
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 573
    if-nez v0, :cond_4

    .line 574
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 575
    sget-object v1, Landroid/support/design/widget/CoordinatorLayout;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v1, v0

    .line 577
    :goto_2
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 578
    if-nez v0, :cond_2

    .line 579
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p2, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 581
    sget-object v2, Landroid/support/design/widget/CoordinatorLayout;->b:[Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 582
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 583
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 561
    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 566
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/support/design/widget/CoordinatorLayout;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 586
    :catch_0
    move-exception v0

    .line 587
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not inflate Behavior subclass "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    move-object v1, v0

    goto :goto_2
.end method

.method static synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/v4/view/bj;)Landroid/support/v4/view/bj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/support/v4/view/bj;)Landroid/support/v4/view/bj;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/support/v4/view/bj;)Landroid/support/v4/view/bj;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 332
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->v:Landroid/support/v4/view/bj;

    if-eq v0, p1, :cond_0

    .line 333
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->v:Landroid/support/v4/view/bj;

    .line 334
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/view/bj;->b()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->w:Z

    .line 335
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->w:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->setWillNotDraw(Z)V

    .line 338
    invoke-direct {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->b(Landroid/support/v4/view/bj;)Landroid/support/v4/view/bj;

    move-result-object p1

    .line 339
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->requestLayout()V

    .line 341
    :cond_0
    return-object p1

    :cond_1
    move v0, v2

    .line 334
    goto :goto_0

    :cond_2
    move v1, v2

    .line 335
    goto :goto_1
.end method

.method static synthetic a(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->y:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/view/View;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 982
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 984
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->j:Landroid/graphics/Rect;

    .line 985
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->k:Landroid/graphics/Rect;

    .line 986
    invoke-virtual {p0, p2, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 987
    invoke-virtual {p0, p1, p3, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 989
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 990
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 378
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->isChildrenDrawingOrderEnabled()Z

    move-result v2

    .line 379
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    .line 380
    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 381
    if-eqz v2, :cond_0

    invoke-virtual {p0, v3, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildDrawingOrder(II)I

    move-result v0

    .line 382
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 383
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 381
    goto :goto_1

    .line 386
    :cond_1
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->e:Ljava/util/Comparator;

    if-eqz v0, :cond_2

    .line 387
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->e:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 389
    :cond_2
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2709
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 2739
    :cond_0
    return-void

    .line 2713
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Landroid/view/View;

    .line 2714
    invoke-interface {p0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2715
    array-length v5, v4

    move v3, v2

    .line 2717
    :goto_0
    if-ge v3, v5, :cond_5

    .line 2720
    add-int/lit8 v1, v3, 0x1

    move v0, v3

    :goto_1
    if-ge v1, v5, :cond_3

    .line 2721
    aget-object v6, v4, v1

    aget-object v7, v4, v0

    invoke-interface {p1, v6, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_2

    move v0, v1

    .line 2720
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2726
    :cond_3
    if-eq v3, v0, :cond_4

    .line 2728
    aget-object v1, v4, v0

    .line 2729
    aget-object v6, v4, v3

    aput-object v6, v4, v0

    .line 2730
    aput-object v1, v4, v3

    .line 2717
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2735
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->clear()V

    move v0, v2

    .line 2736
    :goto_2
    if-ge v0, v5, :cond_0

    .line 2737
    aget-object v1, v4, v0

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2736
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private a(Landroid/view/MotionEvent;I)Z
    .locals 21
    .parameter
    .parameter

    .prologue
    .line 392
    const/4 v14, 0x0

    .line 393
    const/4 v13, 0x0

    .line 395
    const/4 v5, 0x0

    .line 397
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/u;->a(Landroid/view/MotionEvent;)I

    move-result v16

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->h:Ljava/util/List;

    move-object/from16 v17, v0

    .line 400
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Ljava/util/List;)V

    .line 403
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    .line 404
    const/4 v4, 0x0

    move v15, v4

    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_7

    .line 405
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/view/View;

    .line 406
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 407
    invoke-virtual {v4}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v19

    .line 409
    if-nez v14, :cond_0

    if-eqz v13, :cond_1

    :cond_0
    if-eqz v16, :cond_1

    .line 412
    if-eqz v19, :cond_6

    .line 413
    if-nez v5, :cond_5

    .line 414
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 415
    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v6, v4

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    .line 418
    :goto_1
    packed-switch p2, :pswitch_data_0

    :goto_2
    move v5, v13

    move v6, v14

    .line 404
    :goto_3
    add-int/lit8 v7, v15, 0x1

    move v15, v7

    move v13, v5

    move v14, v6

    move-object v5, v4

    goto :goto_0

    .line 420
    :pswitch_0
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v12, v4}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_2

    .line 423
    :pswitch_1
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v12, v4}, Landroid/support/design/widget/CoordinatorLayout$b;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_2

    .line 430
    :cond_1
    if-nez v14, :cond_2

    if-eqz v19, :cond_2

    .line 431
    packed-switch p2, :pswitch_data_1

    .line 439
    :goto_4
    if-eqz v14, :cond_2

    .line 440
    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/support/design/widget/CoordinatorLayout;->q:Landroid/view/View;

    :cond_2
    move v6, v14

    .line 446
    invoke-virtual {v4}, Landroid/support/design/widget/CoordinatorLayout$e;->e()Z

    move-result v7

    .line 447
    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v12}, Landroid/support/design/widget/CoordinatorLayout$e;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v8

    .line 448
    if-eqz v8, :cond_3

    if-nez v7, :cond_3

    const/4 v4, 0x1

    .line 449
    :goto_5
    if-eqz v8, :cond_4

    if-nez v4, :cond_4

    .line 456
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 458
    return v6

    .line 433
    :pswitch_2
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v12, v2}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v14

    goto :goto_4

    .line 436
    :pswitch_3
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v12, v2}, Landroid/support/design/widget/CoordinatorLayout$b;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v14

    goto :goto_4

    .line 448
    :cond_3
    const/4 v4, 0x0

    goto :goto_5

    :cond_4
    move-object/from16 v20, v5

    move v5, v4

    move-object/from16 v4, v20

    goto :goto_3

    :cond_5
    move-object v4, v5

    goto :goto_1

    :cond_6
    move-object v4, v5

    move v6, v14

    move v5, v13

    goto :goto_3

    :cond_7
    move v6, v14

    goto :goto_6

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 431
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static b(I)I
    .locals 0
    .parameter

    .prologue
    .line 1095
    if-nez p0, :cond_0

    const p0, 0x800033

    :cond_0
    return p0
.end method

.method private b(Landroid/support/v4/view/bj;)Landroid/support/v4/view/bj;
    .locals 5
    .parameter

    .prologue
    .line 752
    invoke-virtual {p1}, Landroid/support/v4/view/bj;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    :goto_0
    return-object p1

    .line 756
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    move v2, v0

    move-object v1, p1

    :goto_1
    if-ge v2, v3, :cond_3

    .line 757
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 758
    invoke-static {v4}, Landroid/support/v4/view/ah;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 760
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v0

    .line 762
    if-eqz v0, :cond_1

    .line 764
    invoke-virtual {v0, p0, v4, v1}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/support/v4/view/bj;)Landroid/support/v4/view/bj;

    move-result-object v0

    .line 765
    invoke-virtual {v0}, Landroid/support/v4/view/bj;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    move-object p1, v0

    .line 773
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 756
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private b(Landroid/view/View;II)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1004
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 1005
    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->c:I

    invoke-static {v1}, Landroid/support/design/widget/CoordinatorLayout;->c(I)I

    move-result v1

    invoke-static {v1, p3}, Landroid/support/v4/view/f;->a(II)I

    move-result v1

    .line 1008
    and-int/lit8 v3, v1, 0x7

    .line 1009
    and-int/lit8 v4, v1, 0x70

    .line 1010
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v5

    .line 1011
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v6

    .line 1012
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1013
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1015
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 1016
    sub-int p2, v5, p2

    .line 1019
    :cond_0
    invoke-direct {p0, p2}, Landroid/support/design/widget/CoordinatorLayout;->a(I)I

    move-result v1

    sub-int v2, v1, v7

    .line 1020
    const/4 v1, 0x0

    .line 1022
    sparse-switch v3, :sswitch_data_0

    .line 1035
    :goto_0
    sparse-switch v4, :sswitch_data_1

    .line 1049
    :goto_1
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v3

    iget v4, v0, Landroid/support/design/widget/CoordinatorLayout$e;->leftMargin:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int v4, v5, v4

    sub-int/2addr v4, v7

    iget v5, v0, Landroid/support/design/widget/CoordinatorLayout$e;->rightMargin:I

    sub-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1052
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v3

    iget v4, v0, Landroid/support/design/widget/CoordinatorLayout$e;->topMargin:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v4

    sub-int v4, v6, v4

    sub-int/2addr v4, v8

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->bottomMargin:I

    sub-int v0, v4, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1056
    add-int v1, v2, v7

    add-int v3, v0, v8

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 1057
    return-void

    .line 1028
    :sswitch_0
    add-int/2addr v2, v7

    .line 1029
    goto :goto_0

    .line 1031
    :sswitch_1
    div-int/lit8 v3, v7, 0x2

    add-int/2addr v2, v3

    goto :goto_0

    .line 1041
    :sswitch_2
    add-int/2addr v1, v8

    .line 1042
    goto :goto_1

    .line 1044
    :sswitch_3
    div-int/lit8 v3, v8, 0x2

    add-int/2addr v1, v3

    goto :goto_1

    .line 1022
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 1035
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private static c(I)I
    .locals 0
    .parameter

    .prologue
    .line 1103
    if-nez p0, :cond_0

    const p0, 0x800035

    :cond_0
    return p0
.end method

.method private c(Landroid/view/View;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 1067
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 1068
    iget-object v3, p0, Landroid/support/design/widget/CoordinatorLayout;->j:Landroid/graphics/Rect;

    .line 1069
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    iget v2, v0, Landroid/support/design/widget/CoordinatorLayout$e;->leftMargin:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    iget v4, v0, Landroid/support/design/widget/CoordinatorLayout$e;->topMargin:I

    add-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/support/design/widget/CoordinatorLayout$e;->rightMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/support/design/widget/CoordinatorLayout$e;->bottomMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1074
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->v:Landroid/support/v4/view/bj;

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/ah;->y(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/support/v4/view/ah;->y(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1078
    iget v1, v3, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->v:Landroid/support/v4/view/bj;

    invoke-virtual {v2}, Landroid/support/v4/view/bj;->a()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 1079
    iget v1, v3, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->v:Landroid/support/v4/view/bj;

    invoke-virtual {v2}, Landroid/support/v4/view/bj;->b()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 1080
    iget v1, v3, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->v:Landroid/support/v4/view/bj;

    invoke-virtual {v2}, Landroid/support/v4/view/bj;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 1081
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->v:Landroid/support/v4/view/bj;

    invoke-virtual {v2}, Landroid/support/v4/view/bj;->d()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 1084
    :cond_0
    iget-object v4, p0, Landroid/support/design/widget/CoordinatorLayout;->k:Landroid/graphics/Rect;

    .line 1085
    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->c:I

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->b(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/f;->a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1087
    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, v4, Landroid/graphics/Rect;->top:I

    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1088
    return-void
.end method

.method private static d(I)I
    .locals 0
    .parameter

    .prologue
    .line 1111
    if-nez p0, :cond_0

    const/16 p0, 0x11

    :cond_0
    return p0
.end method

.method private e()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 351
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->q:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v8

    .line 353
    if-eqz v8, :cond_0

    .line 354
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 355
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 357
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->q:Landroid/view/View;

    invoke-virtual {v8, p0, v1, v0}, Landroid/support/design/widget/CoordinatorLayout$b;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 358
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 360
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->q:Landroid/view/View;

    .line 363
    :cond_1
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 364
    :goto_0
    if-ge v7, v1, :cond_2

    .line 365
    invoke-virtual {p0, v7}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 367
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->f()V

    .line 364
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 369
    :cond_2
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 614
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 615
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 616
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 618
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$e;

    move-result-object v3

    .line 619
    invoke-virtual {v3, p0, v2}, Landroid/support/design/widget/CoordinatorLayout$e;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;

    .line 621
    iget-object v3, p0, Landroid/support/design/widget/CoordinatorLayout;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->g:Ljava/util/List;

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->d:Ljava/util/Comparator;

    invoke-static {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Ljava/util/List;Ljava/util/Comparator;)V

    .line 626
    return-void
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;)Landroid/support/design/widget/CoordinatorLayout$e;
    .locals 2
    .parameter

    .prologue
    .line 1435
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$e;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/CoordinatorLayout$e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method a(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$e;
    .locals 6
    .parameter

    .prologue
    .line 592
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 593
    iget-boolean v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->b:Z

    if-nez v1, :cond_2

    .line 594
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 595
    const/4 v1, 0x0

    .line 596
    :goto_0
    if-eqz v2, :cond_0

    const-class v1, Landroid/support/design/widget/CoordinatorLayout$c;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$c;

    if-nez v1, :cond_0

    .line 598
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 600
    if-eqz v2, :cond_1

    .line 602
    :try_start_0
    invoke-interface {v2}, Landroid/support/design/widget/CoordinatorLayout$c;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$b;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$e;->a(Landroid/support/design/widget/CoordinatorLayout$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :cond_1
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->b:Z

    .line 610
    :cond_2
    return-object v0

    .line 603
    :catch_0
    move-exception v1

    .line 604
    const-string v3, "CoordinatorLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default behavior class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/support/design/widget/CoordinatorLayout$c;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " could not be instantiated. Did you forget a default constructor?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/CoordinatorLayout$e;
    .locals 1
    .parameter

    .prologue
    .line 1440
    instance-of v0, p1, Landroid/support/design/widget/CoordinatorLayout$e;

    if-eqz v0, :cond_0

    .line 1441
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$e;

    check-cast p1, Landroid/support/design/widget/CoordinatorLayout$e;

    invoke-direct {v0, p1}, Landroid/support/design/widget/CoordinatorLayout$e;-><init>(Landroid/support/design/widget/CoordinatorLayout$e;)V

    .line 1445
    :goto_0
    return-object v0

    .line 1442
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 1443
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$e;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/CoordinatorLayout$e;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 1445
    :cond_1
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$e;

    invoke-direct {v0, p1}, Landroid/support/design/widget/CoordinatorLayout$e;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method a()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1284
    .line 1285
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v2

    move v1, v0

    .line 1286
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1287
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1288
    invoke-virtual {p0, v3}, Landroid/support/design/widget/CoordinatorLayout;->e(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1289
    const/4 v0, 0x1

    .line 1294
    :cond_0
    iget-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout;->u:Z

    if-eq v0, v1, :cond_1

    .line 1295
    if-eqz v0, :cond_3

    .line 1296
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->b()V

    .line 1301
    :cond_1
    :goto_1
    return-void

    .line 1286
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1298
    :cond_3
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->c()V

    goto :goto_1
.end method

.method public a(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 787
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 788
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 789
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_0
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->g:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 793
    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->g:Landroid/view/View;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 799
    :goto_0
    return-void

    .line 794
    :cond_1
    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->e:I

    if-ltz v1, :cond_2

    .line 795
    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->e:I

    invoke-direct {p0, p1, v0, p2}, Landroid/support/design/widget/CoordinatorLayout;->b(Landroid/view/View;II)V

    goto :goto_0

    .line 797
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->c(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 664
    invoke-virtual/range {p0 .. p5}, Landroid/support/design/widget/CoordinatorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 666
    return-void
.end method

.method a(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 886
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 887
    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->c:I

    invoke-static {v1}, Landroid/support/design/widget/CoordinatorLayout;->d(I)I

    move-result v1

    invoke-static {v1, p2}, Landroid/support/v4/view/f;->a(II)I

    move-result v1

    .line 889
    iget v2, v0, Landroid/support/design/widget/CoordinatorLayout$e;->d:I

    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->b(I)I

    move-result v2

    invoke-static {v2, p2}, Landroid/support/v4/view/f;->a(II)I

    move-result v2

    .line 893
    and-int/lit8 v3, v1, 0x7

    .line 894
    and-int/lit8 v4, v1, 0x70

    .line 895
    and-int/lit8 v1, v2, 0x7

    .line 896
    and-int/lit8 v5, v2, 0x70

    .line 898
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 899
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 907
    sparse-switch v1, :sswitch_data_0

    .line 910
    iget v2, p3, Landroid/graphics/Rect;->left:I

    .line 920
    :goto_0
    sparse-switch v5, :sswitch_data_1

    .line 923
    iget v1, p3, Landroid/graphics/Rect;->top:I

    .line 934
    :goto_1
    sparse-switch v3, :sswitch_data_2

    .line 937
    sub-int/2addr v2, v6

    .line 947
    :goto_2
    :sswitch_0
    sparse-switch v4, :sswitch_data_3

    .line 950
    sub-int/2addr v1, v7

    .line 960
    :goto_3
    :sswitch_1
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    .line 961
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v4

    .line 964
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v5

    iget v8, v0, Landroid/support/design/widget/CoordinatorLayout$e;->leftMargin:I

    add-int/2addr v5, v8

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v8

    sub-int/2addr v3, v8

    sub-int/2addr v3, v6

    iget v8, v0, Landroid/support/design/widget/CoordinatorLayout$e;->rightMargin:I

    sub-int/2addr v3, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 967
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v3

    iget v5, v0, Landroid/support/design/widget/CoordinatorLayout$e;->topMargin:I

    add-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v7

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->bottomMargin:I

    sub-int v0, v4, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 971
    add-int v1, v2, v6

    add-int v3, v0, v7

    invoke-virtual {p4, v2, v0, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 972
    return-void

    .line 913
    :sswitch_2
    iget v2, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 916
    :sswitch_3
    iget v1, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    goto :goto_0

    .line 926
    :sswitch_4
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 929
    :sswitch_5
    iget v1, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    goto :goto_1

    .line 943
    :sswitch_6
    div-int/lit8 v3, v6, 0x2

    sub-int/2addr v2, v3

    goto :goto_2

    .line 956
    :sswitch_7
    div-int/lit8 v3, v7, 0x2

    sub-int/2addr v1, v3

    goto :goto_3

    .line 907
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch

    .line 920
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_5
        0x50 -> :sswitch_4
    .end sparse-switch

    .line 934
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 947
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_7
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 636
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/w;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 637
    return-void
.end method

.method a(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 865
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 866
    :cond_0
    invoke-virtual {p3, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 874
    :goto_0
    return-void

    .line 869
    :cond_1
    if-eqz p2, :cond_2

    .line 870
    invoke-virtual {p0, p1, p3}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 872
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1148
    invoke-static {p0}, Landroid/support/v4/view/ah;->h(Landroid/view/View;)I

    move-result v6

    .line 1149
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v5, v4

    .line 1150
    :goto_0
    if-ge v5, v7, :cond_6

    .line 1151
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->g:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1152
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$e;

    move v3, v4

    .line 1155
    :goto_1
    if-ge v3, v5, :cond_1

    .line 1156
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->g:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1158
    iget-object v8, v1, Landroid/support/design/widget/CoordinatorLayout$e;->h:Landroid/view/View;

    if-ne v8, v2, :cond_0

    .line 1159
    invoke-virtual {p0, v0, v6}, Landroid/support/design/widget/CoordinatorLayout;->b(Landroid/view/View;I)V

    .line 1155
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 1164
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->j:Landroid/graphics/Rect;

    .line 1165
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->k:Landroid/graphics/Rect;

    .line 1166
    invoke-virtual {p0, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1167
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, v2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1168
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1150
    :cond_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 1171
    :cond_3
    invoke-virtual {p0, v0, v2}, Landroid/support/design/widget/CoordinatorLayout;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1174
    add-int/lit8 v1, v5, 0x1

    move v3, v1

    :goto_2
    if-ge v3, v7, :cond_2

    .line 1175
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->g:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1176
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 1177
    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v8

    .line 1179
    if-eqz v8, :cond_4

    invoke-virtual {v8, p0, v1, v0}, Landroid/support/design/widget/CoordinatorLayout$b;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1180
    if-nez p1, :cond_5

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$e;->i()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1183
    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$e;->j()V

    .line 1174
    :cond_4
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 1187
    :cond_5
    invoke-virtual {v8, p0, v1, v0}, Landroid/support/design/widget/CoordinatorLayout$b;->c(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    .line 1189
    if-eqz p1, :cond_4

    .line 1192
    invoke-virtual {v2, v1}, Landroid/support/design/widget/CoordinatorLayout$e;->b(Z)V

    goto :goto_3

    .line 1197
    :cond_6
    return-void
.end method

.method public a(Landroid/view/View;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1407
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->j:Landroid/graphics/Rect;

    .line 1408
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1409
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;Landroid/view/View;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1421
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1422
    iget-object v3, p0, Landroid/support/design/widget/CoordinatorLayout;->j:Landroid/graphics/Rect;

    .line 1423
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0, v3}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1424
    iget-object v4, p0, Landroid/support/design/widget/CoordinatorLayout;->k:Landroid/graphics/Rect;

    .line 1425
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, p2, v0, v4}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1427
    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->right:I

    if-gt v0, v5, :cond_2

    iget v0, v3, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v5, :cond_2

    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    if-lt v0, v5, :cond_2

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v3, v4, Landroid/graphics/Rect;->top:I

    if-lt v0, v3, :cond_2

    .line 1430
    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 1423
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1425
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1427
    goto :goto_2

    :cond_3
    move v1, v2

    .line 1430
    goto :goto_2
.end method

.method b()V
    .locals 2

    .prologue
    .line 1330
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->o:Z

    if-eqz v0, :cond_1

    .line 1332
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->t:Landroid/support/design/widget/CoordinatorLayout$f;

    if-nez v0, :cond_0

    .line 1333
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$f;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CoordinatorLayout$f;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->t:Landroid/support/design/widget/CoordinatorLayout$f;

    .line 1335
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1336
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->t:Landroid/support/design/widget/CoordinatorLayout$f;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1341
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->u:Z

    .line 1342
    return-void
.end method

.method b(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1200
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v3, v0

    move v2, v0

    .line 1202
    :goto_0
    if-ge v3, v4, :cond_2

    .line 1203
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->g:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1204
    if-ne v0, p1, :cond_0

    .line 1206
    const/4 v0, 0x1

    .line 1202
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v2, v0

    goto :goto_0

    .line 1209
    :cond_0
    if-eqz v2, :cond_1

    .line 1210
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 1212
    invoke-virtual {v1}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v5

    .line 1213
    if-eqz v5, :cond_1

    invoke-virtual {v1, p0, v0, p1}, Landroid/support/design/widget/CoordinatorLayout$e;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1214
    invoke-virtual {v5, p0, v0, p1}, Landroid/support/design/widget/CoordinatorLayout$b;->d(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    :cond_1
    move v0, v2

    goto :goto_1

    .line 1218
    :cond_2
    return-void
.end method

.method b(Landroid/view/View;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1367
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 1368
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->g:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1369
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->j:Landroid/graphics/Rect;

    .line 1370
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->k:Landroid/graphics/Rect;

    .line 1371
    iget-object v3, p0, Landroid/support/design/widget/CoordinatorLayout;->l:Landroid/graphics/Rect;

    .line 1373
    iget-object v4, v0, Landroid/support/design/widget/CoordinatorLayout$e;->g:Landroid/view/View;

    invoke-virtual {p0, v4, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1374
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4, v2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1375
    invoke-virtual {p0, p1, p2, v1, v3}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1377
    iget v1, v3, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v4

    .line 1378
    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v2

    .line 1380
    if-eqz v1, :cond_0

    .line 1381
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1383
    :cond_0
    if-eqz v2, :cond_1

    .line 1384
    invoke-virtual {p1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1387
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 1389
    :cond_2
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v1

    .line 1390
    if-eqz v1, :cond_3

    .line 1391
    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->g:Landroid/view/View;

    invoke-virtual {v1, p0, p1, v0}, Landroid/support/design/widget/CoordinatorLayout$b;->c(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 1395
    :cond_3
    return-void
.end method

.method b(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 839
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 840
    invoke-virtual {v0, p2}, Landroid/support/design/widget/CoordinatorLayout$e;->a(Landroid/graphics/Rect;)V

    .line 841
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 1349
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->o:Z

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->t:Landroid/support/design/widget/CoordinatorLayout$f;

    if-eqz v0, :cond_0

    .line 1351
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1352
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->t:Landroid/support/design/widget/CoordinatorLayout$f;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1355
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->u:Z

    .line 1356
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1231
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v3, v0

    move v2, v0

    .line 1233
    :goto_0
    if-ge v3, v4, :cond_2

    .line 1234
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->g:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1235
    if-ne v0, p1, :cond_0

    .line 1237
    const/4 v0, 0x1

    .line 1233
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v2, v0

    goto :goto_0

    .line 1240
    :cond_0
    if-eqz v2, :cond_1

    .line 1241
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 1243
    invoke-virtual {v1}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v5

    .line 1244
    if-eqz v5, :cond_1

    invoke-virtual {v1, p0, v0, p1}, Landroid/support/design/widget/CoordinatorLayout$e;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1245
    invoke-virtual {v5, p0, v0, p1}, Landroid/support/design/widget/CoordinatorLayout$b;->c(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    :cond_1
    move v0, v2

    goto :goto_1

    .line 1249
    :cond_2
    return-void
.end method

.method c(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 851
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 852
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->c()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 853
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 1455
    instance-of v0, p1, Landroid/support/design/widget/CoordinatorLayout$e;

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

.method protected d()Landroid/support/design/widget/CoordinatorLayout$e;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1450
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$e;

    invoke-direct {v0, v1, v1}, Landroid/support/design/widget/CoordinatorLayout$e;-><init>(II)V

    return-object v0
.end method

.method public d(Landroid/view/View;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1262
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 1263
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->i:Ljava/util/List;

    .line 1264
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1266
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    .line 1267
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 1268
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1269
    if-ne v4, p1, :cond_1

    .line 1267
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1272
    :cond_1
    invoke-virtual {v0, p0, p1, v4}, Landroid/support/design/widget/CoordinatorLayout$e;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1273
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1277
    :cond_2
    return-object v2
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1116
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 1117
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->a:Landroid/support/design/widget/CoordinatorLayout$b;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->a:Landroid/support/design/widget/CoordinatorLayout$b;

    invoke-virtual {v1, p0, p2}, Landroid/support/design/widget/CoordinatorLayout$b;->d(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 1118
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->n:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 1119
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->n:Landroid/graphics/Paint;

    .line 1121
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->n:Landroid/graphics/Paint;

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->a:Landroid/support/design/widget/CoordinatorLayout$b;

    invoke-virtual {v0, p0, p2}, Landroid/support/design/widget/CoordinatorLayout$b;->c(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1124
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->n:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1127
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 280
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 282
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v1

    .line 283
    const/4 v0, 0x0

    .line 285
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->x:Landroid/graphics/drawable/Drawable;

    .line 286
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 290
    :cond_0
    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->invalidate()V

    .line 293
    :cond_1
    return-void
.end method

.method e(Landroid/view/View;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1307
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 1308
    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout$e;->g:Landroid/view/View;

    if-eqz v3, :cond_0

    move v0, v1

    .line 1322
    :goto_0
    return v0

    .line 1312
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v4

    move v3, v2

    .line 1313
    :goto_1
    if-ge v3, v4, :cond_3

    .line 1314
    invoke-virtual {p0, v3}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1315
    if-ne v5, p1, :cond_2

    .line 1313
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1318
    :cond_2
    invoke-virtual {v0, p0, p1, v5}, Landroid/support/design/widget/CoordinatorLayout$e;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    .line 1319
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1322
    goto :goto_0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->d()Landroid/support/design/widget/CoordinatorLayout$e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/util/AttributeSet;)Landroid/support/design/widget/CoordinatorLayout$e;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/CoordinatorLayout$e;

    move-result-object v0

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 1625
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->z:Landroid/support/v4/view/aa;

    invoke-virtual {v0}, Landroid/support/v4/view/aa;->a()I

    move-result v0

    return v0
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->x:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 646
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 641
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 213
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->e()V

    .line 214
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->u:Z

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->t:Landroid/support/design/widget/CoordinatorLayout$f;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$f;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CoordinatorLayout$f;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->t:Landroid/support/design/widget/CoordinatorLayout$f;

    .line 218
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 219
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->t:Landroid/support/design/widget/CoordinatorLayout$f;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 221
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->v:Landroid/support/v4/view/bj;

    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/support/v4/view/ah;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    invoke-static {p0}, Landroid/support/v4/view/ah;->x(Landroid/view/View;)V

    .line 226
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->o:Z

    .line 227
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 231
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 232
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->e()V

    .line 233
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->t:Landroid/support/design/widget/CoordinatorLayout$f;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 235
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->t:Landroid/support/design/widget/CoordinatorLayout$f;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 237
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->s:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->s:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 240
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->o:Z

    .line 241
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 818
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 819
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->v:Landroid/support/v4/view/bj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->v:Landroid/support/v4/view/bj;

    invoke-virtual {v0}, Landroid/support/v4/view/bj;->b()I

    move-result v0

    .line 821
    :goto_0
    if-lez v0, :cond_0

    .line 822
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 823
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 826
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 820
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 463
    const/4 v0, 0x0

    .line 465
    invoke-static {p1}, Landroid/support/v4/view/u;->a(Landroid/view/MotionEvent;)I

    move-result v1

    .line 468
    if-nez v1, :cond_0

    .line 469
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->e()V

    .line 472
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/MotionEvent;I)Z

    move-result v2

    .line 474
    if-eqz v0, :cond_1

    .line 475
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 478
    :cond_1
    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-ne v1, v0, :cond_3

    .line 479
    :cond_2
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->e()V

    .line 482
    :cond_3
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 803
    invoke-static {p0}, Landroid/support/v4/view/ah;->h(Landroid/view/View;)I

    move-result v3

    .line 804
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 805
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    .line 806
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 807
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 808
    invoke-virtual {v1}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v1

    .line 810
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0, v0, v3}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 811
    :cond_0
    invoke-virtual {p0, v0, v3}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    .line 805
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 814
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 25
    .parameter
    .parameter

    .prologue
    .line 670
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->f()V

    .line 671
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->a()V

    .line 673
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v15

    .line 674
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    .line 675
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v16

    .line 676
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v3

    .line 677
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ah;->h(Landroid/view/View;)I

    move-result v17

    .line 678
    const/4 v1, 0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_5

    const/4 v1, 0x1

    move v9, v1

    .line 679
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 680
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 681
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 682
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 684
    add-int v22, v15, v16

    .line 685
    add-int v23, v2, v3

    .line 686
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v4

    .line 687
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v3

    .line 688
    const/4 v2, 0x0

    .line 690
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout;->v:Landroid/support/v4/view/bj;

    if-eqz v1, :cond_6

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ah;->y(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    move v10, v1

    .line 692
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v24

    .line 693
    const/4 v1, 0x0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    :goto_2
    move/from16 v0, v24

    if-ge v11, v0, :cond_a

    .line 694
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout;->g:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 695
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 697
    const/4 v5, 0x0

    .line 698
    iget v1, v8, Landroid/support/design/widget/CoordinatorLayout$e;->e:I

    if-ltz v1, :cond_2

    if-eqz v18, :cond_2

    .line 699
    iget v1, v8, Landroid/support/design/widget/CoordinatorLayout$e;->e:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(I)I

    move-result v1

    .line 700
    iget v2, v8, Landroid/support/design/widget/CoordinatorLayout$e;->c:I

    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->c(I)I

    move-result v2

    move/from16 v0, v17

    invoke-static {v2, v0}, Landroid/support/v4/view/f;->a(II)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    .line 703
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    if-eqz v9, :cond_1

    :cond_0
    const/4 v4, 0x5

    if-ne v2, v4, :cond_7

    if-eqz v9, :cond_7

    .line 705
    :cond_1
    const/4 v2, 0x0

    sub-int v4, v19, v16

    sub-int v1, v4, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 714
    :cond_2
    :goto_3
    if-eqz v10, :cond_b

    invoke-static {v3}, Landroid/support/v4/view/ah;->y(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 717
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout;->v:Landroid/support/v4/view/bj;

    invoke-virtual {v1}, Landroid/support/v4/view/bj;->a()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/design/widget/CoordinatorLayout;->v:Landroid/support/v4/view/bj;

    invoke-virtual {v2}, Landroid/support/v4/view/bj;->c()I

    move-result v2

    add-int/2addr v1, v2

    .line 719
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/design/widget/CoordinatorLayout;->v:Landroid/support/v4/view/bj;

    invoke-virtual {v2}, Landroid/support/v4/view/bj;->b()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/design/widget/CoordinatorLayout;->v:Landroid/support/v4/view/bj;

    invoke-virtual {v4}, Landroid/support/v4/view/bj;->d()I

    move-result v4

    add-int/2addr v2, v4

    .line 722
    sub-int v1, v19, v1

    move/from16 v0, v18

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 724
    sub-int v1, v21, v2

    move/from16 v0, v20

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 728
    :goto_4
    invoke-virtual {v8}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v1

    .line 729
    if-eqz v1, :cond_3

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v7}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v1

    if-nez v1, :cond_4

    .line 731
    :cond_3
    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;IIII)V

    .line 735
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v1, v1, v22

    iget v2, v8, Landroid/support/design/widget/CoordinatorLayout$e;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v8, Landroid/support/design/widget/CoordinatorLayout$e;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 738
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v1, v1, v23

    iget v2, v8, Landroid/support/design/widget/CoordinatorLayout$e;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v8, Landroid/support/design/widget/CoordinatorLayout$e;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 740
    invoke-static {v3}, Landroid/support/v4/view/ah;->l(Landroid/view/View;)I

    move-result v1

    invoke-static {v12, v1}, Landroid/support/v4/view/ah;->a(II)I

    move-result v2

    .line 693
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    move v12, v2

    move v13, v4

    move v14, v5

    goto/16 :goto_2

    .line 678
    :cond_5
    const/4 v1, 0x0

    move v9, v1

    goto/16 :goto_0

    .line 690
    :cond_6
    const/4 v1, 0x0

    move v10, v1

    goto/16 :goto_1

    .line 706
    :cond_7
    const/4 v4, 0x5

    if-ne v2, v4, :cond_8

    if-eqz v9, :cond_9

    :cond_8
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    if-eqz v9, :cond_2

    .line 708
    :cond_9
    const/4 v2, 0x0

    sub-int/2addr v1, v15

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto/16 :goto_3

    .line 744
    :cond_a
    const/high16 v1, -0x100

    and-int/2addr v1, v12

    move/from16 v0, p1

    invoke-static {v14, v0, v1}, Landroid/support/v4/view/ah;->a(III)I

    move-result v1

    .line 746
    shl-int/lit8 v2, v12, 0x10

    move/from16 v0, p2

    invoke-static {v13, v0, v2}, Landroid/support/v4/view/ah;->a(III)I

    move-result v2

    .line 748
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/CoordinatorLayout;->setMeasuredDimension(II)V

    .line 749
    return-void

    :cond_b
    move/from16 v6, p2

    move/from16 v4, p1

    goto :goto_4
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1583
    .line 1585
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v9

    move v8, v0

    move v7, v0

    .line 1586
    :goto_0
    if-ge v8, v9, :cond_1

    .line 1587
    invoke-virtual {p0, v8}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1588
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 1589
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->h()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v7

    .line 1586
    :goto_1
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v7, v0

    goto :goto_0

    .line 1593
    :cond_0
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v0

    .line 1594
    if-eqz v0, :cond_3

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 1595
    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result v0

    or-int/2addr v0, v7

    goto :goto_1

    .line 1599
    :cond_1
    if-eqz v7, :cond_2

    .line 1600
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Z)V

    .line 1602
    :cond_2
    return v7

    :cond_3
    move v0, v7

    goto :goto_1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1606
    .line 1608
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v8

    move v7, v0

    move v6, v0

    .line 1609
    :goto_0
    if-ge v7, v8, :cond_1

    .line 1610
    invoke-virtual {p0, v7}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1611
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 1612
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->h()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v6

    .line 1609
    :goto_1
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v6, v0

    goto :goto_0

    .line 1616
    :cond_0
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v0

    .line 1617
    if-eqz v0, :cond_2

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 1618
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v0

    or-int/2addr v0, v6

    goto :goto_1

    .line 1621
    :cond_1
    return v6

    :cond_2
    move v0, v6

    goto :goto_1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1548
    const/4 v8, 0x0

    .line 1549
    const/4 v7, 0x0

    .line 1550
    const/4 v1, 0x0

    .line 1552
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v10

    .line 1553
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v10, :cond_3

    .line 1554
    invoke-virtual {p0, v9}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1555
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 1556
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->h()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    move v2, v8

    move v1, v7

    .line 1553
    :goto_1
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    move v7, v1

    move v8, v2

    move v1, v0

    goto :goto_0

    .line 1560
    :cond_0
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v0

    .line 1561
    if-eqz v0, :cond_5

    .line 1562
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->m:[I

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/design/widget/CoordinatorLayout;->m:[I

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    aput v6, v1, v3

    .line 1563
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->m:[I

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V

    .line 1565
    if-lez p2, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->m:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1567
    :goto_2
    if-lez p3, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->m:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1570
    :goto_3
    const/4 v1, 0x1

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_1

    .line 1565
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->m:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    .line 1567
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->m:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    .line 1574
    :cond_3
    const/4 v0, 0x0

    aput v8, p4, v0

    .line 1575
    const/4 v0, 0x1

    aput v7, p4, v0

    .line 1577
    if-eqz v1, :cond_4

    .line 1578
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Z)V

    .line 1580
    :cond_4
    return-void

    :cond_5
    move v0, v1

    move v2, v8

    move v1, v7

    goto :goto_1
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1524
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v9

    .line 1525
    const/4 v1, 0x0

    .line 1527
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v9, :cond_1

    .line 1528
    invoke-virtual {p0, v8}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1529
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 1530
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->h()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 1527
    :goto_1
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v1, v0

    goto :goto_0

    .line 1534
    :cond_0
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v0

    .line 1535
    if-eqz v0, :cond_3

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 1536
    invoke-virtual/range {v0 .. v7}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    .line 1538
    const/4 v0, 0x1

    goto :goto_1

    .line 1542
    :cond_1
    if-eqz v1, :cond_2

    .line 1543
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Z)V

    .line 1545
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1480
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->z:Landroid/support/v4/view/aa;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/aa;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 1481
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->r:Landroid/view/View;

    .line 1482
    iput-object p2, p0, Landroid/support/design/widget/CoordinatorLayout;->s:Landroid/view/View;

    .line 1484
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v7

    .line 1485
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_2

    .line 1486
    invoke-virtual {p0, v6}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1487
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 1488
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->h()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1485
    :cond_0
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1492
    :cond_1
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v0

    .line 1493
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 1494
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout$b;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_1

    .line 1497
    :cond_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .parameter

    .prologue
    .line 2609
    check-cast p1, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    .line 2610
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2612
    iget-object v2, p1, Landroid/support/design/widget/CoordinatorLayout$SavedState;->a:Landroid/util/SparseArray;

    .line 2614
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 2615
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2616
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v0

    .line 2617
    invoke-virtual {p0, v4}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$e;

    move-result-object v5

    .line 2618
    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v5

    .line 2620
    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    if-eqz v5, :cond_0

    .line 2621
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 2622
    if-eqz v0, :cond_0

    .line 2623
    invoke-virtual {v5, p0, v4, v0}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 2614
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2627
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 2631
    new-instance v2, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/support/design/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2633
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 2634
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 2635
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2636
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    .line 2637
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 2638
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v0

    .line 2640
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    if-eqz v0, :cond_0

    .line 2642
    invoke-virtual {v0, p0, v5}, Landroid/support/design/widget/CoordinatorLayout$b;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v0

    .line 2643
    if-eqz v0, :cond_0

    .line 2644
    invoke-virtual {v3, v6, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2634
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2648
    :cond_1
    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout$SavedState;->a:Landroid/util/SparseArray;

    .line 2649
    return-object v2
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 1459
    .line 1461
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v10

    move v8, v9

    move v7, v9

    .line 1462
    :goto_0
    if-ge v8, v10, :cond_1

    .line 1463
    invoke-virtual {p0, v8}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1464
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 1465
    invoke-virtual {v6}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v0

    .line 1466
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 1467
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    .line 1469
    or-int v0, v7, v1

    .line 1471
    invoke-virtual {v6, v1}, Landroid/support/design/widget/CoordinatorLayout$e;->a(Z)V

    .line 1462
    :goto_1
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v7, v0

    goto :goto_0

    .line 1473
    :cond_0
    invoke-virtual {v6, v9}, Landroid/support/design/widget/CoordinatorLayout$e;->a(Z)V

    move v0, v7

    goto :goto_1

    .line 1476
    :cond_1
    return v7
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1500
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->z:Landroid/support/v4/view/aa;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/aa;->a(Landroid/view/View;)V

    .line 1502
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v2

    .line 1503
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 1504
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1505
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 1506
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->h()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1503
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1510
    :cond_0
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v4

    .line 1511
    if-eqz v4, :cond_1

    .line 1512
    invoke-virtual {v4, p0, v3, p1}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1514
    :cond_1
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->g()V

    .line 1515
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->j()V

    goto :goto_1

    .line 1518
    :cond_2
    iput-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->r:Landroid/view/View;

    .line 1519
    iput-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->s:Landroid/view/View;

    .line 1520
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 487
    .line 489
    const/4 v2, 0x0

    .line 491
    invoke-static {p1}, Landroid/support/v4/view/u;->a(Landroid/view/MotionEvent;)I

    move-result v9

    .line 493
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->q:Landroid/view/View;

    if-nez v0, :cond_9

    invoke-direct {p0, p1, v10}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_8

    move v1, v0

    .line 496
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 497
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->b()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v0

    .line 498
    if-eqz v0, :cond_7

    .line 499
    iget-object v3, p0, Landroid/support/design/widget/CoordinatorLayout;->q:Landroid/view/View;

    invoke-virtual {v0, p0, v3, p1}, Landroid/support/design/widget/CoordinatorLayout$b;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    move v8, v0

    .line 504
    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->q:Landroid/view/View;

    if-nez v0, :cond_5

    .line 505
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v8, v0

    .line 515
    :cond_0
    :goto_2
    if-nez v8, :cond_1

    if-nez v9, :cond_1

    .line 519
    :cond_1
    if-eqz v2, :cond_2

    .line 520
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 523
    :cond_2
    if-eq v9, v10, :cond_3

    if-ne v9, v4, :cond_4

    .line 524
    :cond_3
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->e()V

    .line 527
    :cond_4
    return v8

    .line 506
    :cond_5
    if-eqz v1, :cond_0

    .line 507
    if-nez v2, :cond_6

    .line 508
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    move v6, v5

    .line 509
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 512
    :goto_3
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-object v2, v0

    goto :goto_2

    :cond_6
    move-object v0, v2

    goto :goto_3

    :cond_7
    move v8, v7

    goto :goto_1

    :cond_8
    move v1, v0

    move v8, v7

    goto :goto_1

    :cond_9
    move v1, v7

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter

    .prologue
    .line 532
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 533
    if-eqz p1, :cond_0

    .line 534
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->e()V

    .line 536
    :cond_0
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->y:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 208
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 250
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->x:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_4

    .line 251
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 252
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 254
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->x:Landroid/graphics/drawable/Drawable;

    .line 255
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 256
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 259
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroid/support/v4/view/ah;->h(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/support/v4/b/a/a;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 261
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 262
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 264
    :cond_3
    invoke-static {p0}, Landroid/support/v4/view/ah;->d(Landroid/view/View;)V

    .line 266
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 261
    goto :goto_0
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 328
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 329
    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .locals 1
    .parameter

    .prologue
    .line 317
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 318
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 302
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 304
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 305
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 306
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 308
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 304
    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter

    .prologue
    .line 297
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->x:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
