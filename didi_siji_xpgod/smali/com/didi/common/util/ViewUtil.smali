.class public Lcom/didi/common/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hide(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 17
    if-nez p0, :cond_0

    .line 20
    :goto_0
    return-void

    .line 19
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static invisible(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static offset(Landroid/view/View;II)V
    .locals 8
    .parameter "view"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int v2, v6, p1

    .line 36
    .local v2, left:I
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v6

    add-int v4, v6, p2

    .line 37
    .local v4, top:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 38
    .local v5, width:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 39
    .local v1, height:I
    add-int v3, v2, v5

    .line 40
    .local v3, right:I
    add-int v0, v4, v1

    .line 44
    .local v0, bottom:I
    invoke-virtual {p0, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "move  margin left : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " top : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " view : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 47
    const v6, 0x7f080540

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 48
    return-void
.end method

.method public static varargs setViewClickableTemply(ZI[Landroid/view/View;)V
    .locals 7
    .parameter "clickable"
    .parameter "duration"
    .parameter "viewArray"

    .prologue
    .line 61
    invoke-static {p2}, Lcom/didi/common/util/CollectionUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    :goto_0
    return-void

    .line 63
    :cond_0
    move-object v0, p2

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 64
    .local v3, view:Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    .end local v3           #view:Landroid/view/View;
    :cond_1
    new-instance v4, Lcom/didi/common/util/ViewUtil$1;

    invoke-direct {v4, p2}, Lcom/didi/common/util/ViewUtil$1;-><init>([Landroid/view/View;)V

    int-to-long v5, p1

    invoke-static {v4, v5, v6}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static show(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
