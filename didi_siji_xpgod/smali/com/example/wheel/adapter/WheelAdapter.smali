.class public abstract Lcom/example/wheel/adapter/WheelAdapter;
.super Ljava/lang/Object;
.source "WheelAdapter.java"


# instance fields
.field private mWheelView:Lcom/example/wheel/WheelView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getEndValue()I
.end method

.method public abstract getInterval()I
.end method

.method public abstract getItem(I)Ljava/lang/String;
.end method

.method public getMaxWidth(Landroid/graphics/Paint;)F
    .locals 5
    .parameter "paint"

    .prologue
    .line 21
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/example/wheel/adapter/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, first:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/example/wheel/adapter/WheelAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/example/wheel/adapter/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, last:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 24
    .local v1, firstWidth:F
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 25
    .local v3, lastWidth:F
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4
.end method

.method public abstract getStartValue()I
.end method

.method public abstract getValue(I)I
.end method

.method public abstract getValueIndex(I)I
.end method

.method public notifyChanged()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/example/wheel/adapter/WheelAdapter;->mWheelView:Lcom/example/wheel/WheelView;

    invoke-virtual {v0}, Lcom/example/wheel/WheelView;->computeTextBaseY()V

    .line 34
    iget-object v0, p0, Lcom/example/wheel/adapter/WheelAdapter;->mWheelView:Lcom/example/wheel/WheelView;

    invoke-virtual {v0}, Lcom/example/wheel/WheelView;->refresh()V

    .line 35
    return-void
.end method

.method public setEndValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 55
    return-void
.end method

.method public abstract setStartValue(I)V
.end method

.method public setWheelView(Lcom/example/wheel/WheelView;)V
    .locals 0
    .parameter "wheelView"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/example/wheel/adapter/WheelAdapter;->mWheelView:Lcom/example/wheel/WheelView;

    .line 30
    return-void
.end method
