.class public abstract Landroid/support/v7/widget/ab;
.super Ljava/lang/Object;
.source "OrientationHelper.java"


# instance fields
.field protected final a:Landroid/support/v7/widget/RecyclerView$h;

.field private b:I


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView$h;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/high16 v0, -0x8000

    iput v0, p0, Landroid/support/v7/widget/ab;->b:I

    .line 45
    iput-object p1, p0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/RecyclerView$h;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView$h;Landroid/support/v7/widget/ab$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ab;-><init>(Landroid/support/v7/widget/RecyclerView$h;)V

    return-void
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView$h;)Landroid/support/v7/widget/ab;
    .locals 1
    .parameter

    .prologue
    .line 216
    new-instance v0, Landroid/support/v7/widget/ab$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ab$1;-><init>(Landroid/support/v7/widget/RecyclerView$h;)V

    return-object v0
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView$h;I)Landroid/support/v7/widget/ab;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 199
    packed-switch p1, :pswitch_data_0

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :pswitch_0
    invoke-static {p0}, Landroid/support/v7/widget/ab;->a(Landroid/support/v7/widget/RecyclerView$h;)Landroid/support/v7/widget/ab;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p0}, Landroid/support/v7/widget/ab;->b(Landroid/support/v7/widget/RecyclerView$h;)Landroid/support/v7/widget/ab;

    move-result-object v0

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Landroid/support/v7/widget/RecyclerView$h;)Landroid/support/v7/widget/ab;
    .locals 1
    .parameter

    .prologue
    .line 302
    new-instance v0, Landroid/support/v7/widget/ab$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ab$2;-><init>(Landroid/support/v7/widget/RecyclerView$h;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)I
.end method

.method public a()V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/support/v7/widget/ab;->f()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ab;->b:I

    .line 55
    return-void
.end method

.method public abstract a(I)V
.end method

.method public b()I
    .locals 2

    .prologue
    .line 68
    const/high16 v0, -0x8000

    iget v1, p0, Landroid/support/v7/widget/ab;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ab;->f()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/ab;->b:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public abstract b(Landroid/view/View;)I
.end method

.method public abstract c()I
.end method

.method public abstract c(Landroid/view/View;)I
.end method

.method public abstract d()I
.end method

.method public abstract d(Landroid/view/View;)I
.end method

.method public abstract e()I
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method
