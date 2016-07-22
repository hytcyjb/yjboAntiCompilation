.class public Lcom/example/wheel/adapter/ArrayWheelAdapter;
.super Lcom/example/wheel/adapter/WheelAdapter;
.source "ArrayWheelAdapter.java"


# instance fields
.field data:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/example/wheel/adapter/WheelAdapter;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/example/wheel/adapter/ArrayWheelAdapter;->data:[Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/example/wheel/adapter/ArrayWheelAdapter;->data:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getEndValue()I
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/example/wheel/adapter/ArrayWheelAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/example/wheel/adapter/ArrayWheelAdapter;->data:[Ljava/lang/String;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/example/wheel/adapter/ArrayWheelAdapter;->data:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/example/wheel/adapter/ArrayWheelAdapter;->data:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 29
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStartValue()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getValue(I)I
    .locals 0
    .parameter "index"

    .prologue
    .line 45
    return p1
.end method

.method public getValueIndex(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 2
    .parameter "strItem"

    .prologue
    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/example/wheel/adapter/ArrayWheelAdapter;->data:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 34
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/example/wheel/adapter/ArrayWheelAdapter;->data:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 35
    iget-object v1, p0, Lcom/example/wheel/adapter/ArrayWheelAdapter;->data:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    .end local v0           #i:I
    :goto_1
    return v0

    .line 34
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    .end local v0           #i:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public setStartValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 85
    return-void
.end method
