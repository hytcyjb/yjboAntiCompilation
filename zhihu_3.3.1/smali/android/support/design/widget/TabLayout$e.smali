.class public Landroid/support/design/widget/TabLayout$e;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/design/widget/TabLayout;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 1932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1933
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$e;->a:Ljava/lang/ref/WeakReference;

    .line 1934
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 1974
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/TabLayout$e;->c:I

    iput v0, p0, Landroid/support/design/widget/TabLayout$e;->b:I

    .line 1975
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout$e;)V
    .locals 0
    .parameter

    .prologue
    .line 1927
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$e;->a()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 1938
    iget v0, p0, Landroid/support/design/widget/TabLayout$e;->c:I

    iput v0, p0, Landroid/support/design/widget/TabLayout$e;->b:I

    .line 1939
    iput p1, p0, Landroid/support/design/widget/TabLayout$e;->c:I

    .line 1940
    return-void
.end method

.method public a(IFI)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1945
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    .line 1946
    if-eqz v0, :cond_3

    .line 1949
    iget v1, p0, Landroid/support/design/widget/TabLayout$e;->c:I

    if-ne v1, v5, :cond_0

    iget v1, p0, Landroid/support/design/widget/TabLayout$e;->b:I

    if-ne v1, v3, :cond_4

    :cond_0
    move v1, v3

    .line 1954
    :goto_0
    iget v4, p0, Landroid/support/design/widget/TabLayout$e;->c:I

    if-ne v4, v5, :cond_1

    iget v4, p0, Landroid/support/design/widget/TabLayout$e;->b:I

    if-eqz v4, :cond_2

    :cond_1
    move v2, v3

    .line 1956
    :cond_2
    invoke-static {v0, p1, p2, v1, v2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;IFZZ)V

    .line 1958
    :cond_3
    return-void

    :cond_4
    move v1, v2

    .line 1949
    goto :goto_0
.end method

.method public b(I)V
    .locals 3
    .parameter

    .prologue
    .line 1962
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    .line 1963
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 1966
    iget v1, p0, Landroid/support/design/widget/TabLayout$e;->c:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/design/widget/TabLayout$e;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroid/support/design/widget/TabLayout$e;->b:I

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 1969
    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout;->a(I)Landroid/support/design/widget/TabLayout$d;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$d;Z)V

    .line 1971
    :cond_1
    return-void

    .line 1966
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
