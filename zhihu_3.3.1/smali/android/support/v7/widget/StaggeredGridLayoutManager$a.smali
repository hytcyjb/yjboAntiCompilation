.class Landroid/support/v7/widget/StaggeredGridLayoutManager$a;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Z

.field final synthetic e:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V
    .locals 0
    .parameter

    .prologue
    .line 3018
    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;Landroid/support/v7/widget/StaggeredGridLayoutManager$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3018
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3026
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    .line 3027
    const/high16 v0, -0x8000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    .line 3028
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    .line 3029
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->d:Z

    .line 3030
    return-void
.end method

.method a(I)V
    .locals 1
    .parameter

    .prologue
    .line 3038
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_0

    .line 3039
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->d()I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    .line 3043
    :goto_0
    return-void

    .line 3041
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->c()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 3033
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->d()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    .line 3035
    return-void

    .line 3033
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->c()I

    move-result v0

    goto :goto_0
.end method
