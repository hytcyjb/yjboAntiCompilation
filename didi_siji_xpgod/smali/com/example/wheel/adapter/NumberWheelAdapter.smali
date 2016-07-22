.class public Lcom/example/wheel/adapter/NumberWheelAdapter;
.super Lcom/example/wheel/adapter/WheelAdapter;
.source "NumberWheelAdapter.java"


# instance fields
.field private endNumber:I

.field private interval:I

.field private label:Ljava/lang/String;

.field private startNumber:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0
    .parameter "startNumber"
    .parameter "endNumber"
    .parameter "interval"
    .parameter "label"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/example/wheel/adapter/WheelAdapter;-><init>()V

    .line 18
    iput p1, p0, Lcom/example/wheel/adapter/NumberWheelAdapter;->startNumber:I

    .line 19
    iput p2, p0, Lcom/example/wheel/adapter/NumberWheelAdapter;->endNumber:I

    .line 20
    iput p3, p0, Lcom/example/wheel/adapter/NumberWheelAdapter;->interval:I

    .line 21
    iput-object p4, p0, Lcom/example/wheel/adapter/NumberWheelAdapter;->label:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 26
    iget v0, p0, Lcom/example/wheel/adapter/NumberWheelAdapter;->endNumber:I

    iget v1, p0, Lcom/example/wheel/adapter/NumberWheelAdapter;->startNumber:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/example/wheel/adapter/NumberWheelAdapter;->interval:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getEndValue()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/example/wheel/adapter/NumberWheelAdapter;->endNumber:I

    return v0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/example/wheel/adapter/NumberWheelAdapter;->interval:I

    return v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 31
    iget v1, p0, Lcom/example/wheel/adapter/NumberWheelAdapter;->startNumber:I

    iget v2, p0, Lcom/example/wheel/adapter/NumberWheelAdapter;->interval:I

    mul-int/2addr v2, p1

    add-int v0, v1, v2

    .line 32
    .local v0, number:I
    iget-object v1, p0, Lcom/example/wheel/adapter/NumberWheelAdapter;->label:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/example/wheel/adapter/NumberWheelAdapter;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getStartValue()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/example/wheel/adapter/NumberWheelAdapter;->startNumber:I

    return v0
.end method

.method public getValue(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 49
    iget v0, p0, Lcom/example/wheel/adapter/NumberWheelAdapter;->interval:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/example/wheel/adapter/NumberWheelAdapter;->startNumber:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getValueIndex(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 91
    iget v0, p0, Lcom/example/wheel/adapter/NumberWheelAdapter;->startNumber:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/example/wheel/adapter/NumberWheelAdapter;->interval:I

    div-int/2addr v0, v1

    return v0
.end method

.method public setEndValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 74
    iput p1, p0, Lcom/example/wheel/adapter/NumberWheelAdapter;->endNumber:I

    .line 76
    invoke-virtual {p0}, Lcom/example/wheel/adapter/NumberWheelAdapter;->notifyChanged()V

    .line 77
    return-void
.end method

.method public setStartItem(I)V
    .locals 1
    .parameter "startItem"

    .prologue
    .line 43
    iget v0, p0, Lcom/example/wheel/adapter/NumberWheelAdapter;->interval:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/example/wheel/adapter/NumberWheelAdapter;->startNumber:I

    .line 44
    invoke-virtual {p0}, Lcom/example/wheel/adapter/NumberWheelAdapter;->notifyChanged()V

    .line 45
    return-void
.end method

.method public setStartValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 96
    iput p1, p0, Lcom/example/wheel/adapter/NumberWheelAdapter;->startNumber:I

    .line 98
    invoke-virtual {p0}, Lcom/example/wheel/adapter/NumberWheelAdapter;->notifyChanged()V

    .line 99
    return-void
.end method
