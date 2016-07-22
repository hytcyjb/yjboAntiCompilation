.class public Landroid/support/v7/widget/am;
.super Landroid/content/ContextWrapper;
.source "TintContextWrapper.java"


# static fields
.field private static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/widget/am;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/res/Resources;

.field private final c:Landroid/content/res/Resources$Theme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/support/v7/widget/am;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-virtual {p0}, Landroid/support/v7/widget/am;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/am;->c:Landroid/content/res/Resources$Theme;

    .line 79
    iget-object v0, p0, Landroid/support/v7/widget/am;->c:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 80
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .parameter

    .prologue
    .line 38
    invoke-static {p0}, Landroid/support/v7/widget/am;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x0

    sget-object v1, Landroid/support/v7/widget/am;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 41
    sget-object v0, Landroid/support/v7/widget/am;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 42
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/am;

    .line 43
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/am;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    if-ne v3, p0, :cond_2

    move-object p0, v0

    .line 54
    :cond_0
    :goto_2
    return-object p0

    .line 42
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 40
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 49
    :cond_3
    new-instance v0, Landroid/support/v7/widget/am;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/am;-><init>(Landroid/content/Context;)V

    .line 50
    sget-object v1, Landroid/support/v7/widget/am;->a:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p0, v0

    .line 51
    goto :goto_2
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 58
    instance-of v1, p0, Landroid/support/v7/widget/am;

    if-eqz v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/widget/ao;

    if-nez v1, :cond_0

    .line 67
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/v7/widget/am;->b:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Landroid/support/v7/widget/ao;

    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/ao;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/support/v7/widget/am;->b:Landroid/content/res/Resources;

    .line 97
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/am;->b:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v7/widget/am;->c:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public setTheme(I)V
    .locals 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Landroid/support/v7/widget/am;->c:Landroid/content/res/Resources$Theme;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 90
    return-void
.end method
