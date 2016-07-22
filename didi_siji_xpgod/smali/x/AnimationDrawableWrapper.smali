.class public Lx/AnimationDrawableWrapper;
.super Landroid/graphics/drawable/AnimationDrawable;
.source "AnimationDrawableWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/List;)Lx/AnimationDrawableWrapper;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lx/AnimationDrawableWrapper;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, pairList:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    new-instance v0, Lx/AnimationDrawableWrapper;

    invoke-direct {v0}, Lx/AnimationDrawableWrapper;-><init>()V

    .line 20
    .local v0, d:Lx/AnimationDrawableWrapper;
    const/4 v5, 0x0

    .line 21
    .local v5, resId:I
    const/4 v2, 0x0

    .line 22
    .local v2, duration:I
    const/4 v1, 0x0

    .line 23
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 24
    .local v4, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 25
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 26
    invoke-static {v5}, Lcom/didi/common/helper/XmlAttibuteHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v1, v2}, Lx/AnimationDrawableWrapper;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 29
    .end local v4           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    return-object v0
.end method
