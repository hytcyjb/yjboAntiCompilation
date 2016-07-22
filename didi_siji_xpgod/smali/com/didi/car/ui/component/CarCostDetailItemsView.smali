.class public Lcom/didi/car/ui/component/CarCostDetailItemsView;
.super Landroid/widget/TextView;
.source "CarCostDetailItemsView.java"


# static fields
.field private static final sPace:Ljava/lang/String; = "."


# instance fields
.field private fixedDistanceValue:I

.field private mItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x5

    iput v0, p0, Lcom/didi/car/ui/component/CarCostDetailItemsView;->fixedDistanceValue:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x5

    iput v0, p0, Lcom/didi/car/ui/component/CarCostDetailItemsView;->fixedDistanceValue:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x5

    iput v0, p0, Lcom/didi/car/ui/component/CarCostDetailItemsView;->fixedDistanceValue:I

    .line 22
    return-void
.end method

.method private deleteLastSpace(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter "space"
    .parameter "sb"

    .prologue
    .line 91
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, index:I
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    if-ne v0, v1, :cond_0

    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 97
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method private fillItems()V
    .locals 12

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarCostDetailItemsView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 51
    .local v6, paint:Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarCostDetailItemsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v11, p0, Lcom/didi/car/ui/component/CarCostDetailItemsView;->fixedDistanceValue:I

    sub-int v5, v10, v11

    .line 52
    .local v5, maxTextsWidth:I
    const-string v10, "."

    invoke-virtual {v6, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v8, v10

    .line 53
    .local v8, textWidth:I
    const/4 v0, 0x0

    .line 56
    .local v0, curTextsWidth:I
    iget-object v3, p0, Lcom/didi/car/ui/component/CarCostDetailItemsView;->mItems:Ljava/util/Map;

    .line 57
    .local v3, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v7, sb:Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 60
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 62
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 63
    .local v4, key:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 64
    .local v9, value:Ljava/lang/String;
    int-to-float v10, v0

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    add-float/2addr v10, v11

    float-to-int v0, v10

    .line 65
    int-to-float v10, v0

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    add-float/2addr v10, v11

    float-to-int v0, v10

    .line 67
    if-gt v0, v5, :cond_0

    .line 72
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "<font color=\'#ffffff\'>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :goto_1
    add-int v10, v0, v8

    if-ge v10, v5, :cond_1

    .line 75
    const-string v10, "."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    add-int/2addr v0, v8

    goto :goto_1

    .line 79
    :cond_1
    const-string v10, "</font>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "<br/>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 82
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #key:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :cond_2
    const-string v10, "<br/>"

    invoke-direct {p0, v10, v7}, Lcom/didi/car/ui/component/CarCostDetailItemsView;->deleteLastSpace(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 84
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/didi/car/ui/component/CarCostDetailItemsView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/didi/car/ui/component/CarCostDetailItemsView;->setIncludeFontPadding(Z)V

    .line 86
    const/16 v10, 0x30

    invoke-virtual {p0, v10}, Lcom/didi/car/ui/component/CarCostDetailItemsView;->setGravity(I)V

    .line 87
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 46
    return-void
.end method

.method public setItems(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/didi/car/ui/component/CarCostDetailItemsView;->mItems:Ljava/util/Map;

    .line 35
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarCostDetailItemsView;->fillItems()V

    .line 36
    return-void
.end method

.method public setItemsByBigFixedDistance(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v0, 0x32

    iput v0, p0, Lcom/didi/car/ui/component/CarCostDetailItemsView;->fixedDistanceValue:I

    .line 40
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/component/CarCostDetailItemsView;->setItems(Ljava/util/Map;)V

    .line 41
    return-void
.end method
