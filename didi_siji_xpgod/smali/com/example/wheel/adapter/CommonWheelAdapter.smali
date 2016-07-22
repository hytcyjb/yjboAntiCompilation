.class public Lcom/example/wheel/adapter/CommonWheelAdapter;
.super Lcom/example/wheel/adapter/WheelAdapter;
.source "CommonWheelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/example/wheel/adapter/WheelAdapter;"
    }
.end annotation


# instance fields
.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, this:Lcom/example/wheel/adapter/CommonWheelAdapter;,"Lcom/example/wheel/adapter/CommonWheelAdapter<TT;>;"
    .local p1, dataList:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0}, Lcom/example/wheel/adapter/WheelAdapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/example/wheel/adapter/CommonWheelAdapter;->mDataList:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 25
    .local p0, this:Lcom/example/wheel/adapter/CommonWheelAdapter;,"Lcom/example/wheel/adapter/CommonWheelAdapter<TT;>;"
    const/4 v0, 0x0

    .line 26
    .local v0, count:I
    iget-object v1, p0, Lcom/example/wheel/adapter/CommonWheelAdapter;->mDataList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/example/wheel/adapter/CommonWheelAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 29
    :cond_0
    return v0
.end method

.method public getDataAt(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lcom/example/wheel/adapter/CommonWheelAdapter;,"Lcom/example/wheel/adapter/CommonWheelAdapter<TT;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/example/wheel/adapter/CommonWheelAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/example/wheel/adapter/CommonWheelAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getEndValue()I
    .locals 1

    .prologue
    .line 71
    .local p0, this:Lcom/example/wheel/adapter/CommonWheelAdapter;,"Lcom/example/wheel/adapter/CommonWheelAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/example/wheel/adapter/CommonWheelAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 77
    .local p0, this:Lcom/example/wheel/adapter/CommonWheelAdapter;,"Lcom/example/wheel/adapter/CommonWheelAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 35
    .local p0, this:Lcom/example/wheel/adapter/CommonWheelAdapter;,"Lcom/example/wheel/adapter/CommonWheelAdapter<TT;>;"
    iget-object v0, p0, Lcom/example/wheel/adapter/CommonWheelAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartValue()I
    .locals 1

    .prologue
    .line 65
    .local p0, this:Lcom/example/wheel/adapter/CommonWheelAdapter;,"Lcom/example/wheel/adapter/CommonWheelAdapter<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getValue(I)I
    .locals 0
    .parameter "index"

    .prologue
    .line 59
    .local p0, this:Lcom/example/wheel/adapter/CommonWheelAdapter;,"Lcom/example/wheel/adapter/CommonWheelAdapter<TT;>;"
    return p1
.end method

.method public getValueIndex(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 83
    .local p0, this:Lcom/example/wheel/adapter/CommonWheelAdapter;,"Lcom/example/wheel/adapter/CommonWheelAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lcom/example/wheel/adapter/CommonWheelAdapter;,"Lcom/example/wheel/adapter/CommonWheelAdapter<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    iget-object v2, p0, Lcom/example/wheel/adapter/CommonWheelAdapter;->mDataList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 46
    iget-object v2, p0, Lcom/example/wheel/adapter/CommonWheelAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 47
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 48
    iget-object v2, p0, Lcom/example/wheel/adapter/CommonWheelAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    .end local v0           #i:I
    .end local v1           #size:I
    :goto_1
    return v0

    .line 47
    .restart local v0       #i:I
    .restart local v1       #size:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public setStartValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 90
    .local p0, this:Lcom/example/wheel/adapter/CommonWheelAdapter;,"Lcom/example/wheel/adapter/CommonWheelAdapter<TT;>;"
    return-void
.end method
