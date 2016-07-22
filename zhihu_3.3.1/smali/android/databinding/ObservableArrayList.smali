.class public Landroid/databinding/ObservableArrayList;
.super Ljava/util/ArrayList;
.source "ObservableArrayList.java"

# interfaces
.implements Landroid/databinding/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;",
        "Landroid/databinding/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private transient mListeners:Landroid/databinding/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v0, Landroid/databinding/g;

    invoke-direct {v0}, Landroid/databinding/g;-><init>()V

    iput-object v0, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/g;

    return-void
.end method

.method private notifyAdd(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/g;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/g;

    invoke-virtual {v0, p0, p1, p2}, Landroid/databinding/g;->b(Landroid/databinding/i;II)V

    .line 120
    :cond_0
    return-void
.end method

.method private notifyRemove(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/g;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/g;

    invoke-virtual {v0, p0, p1, p2}, Landroid/databinding/g;->c(Landroid/databinding/i;II)V

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/databinding/ObservableArrayList;->notifyAdd(II)V

    .line 53
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p0}, Landroid/databinding/ObservableArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v1}, Landroid/databinding/ObservableArrayList;->notifyAdd(II)V

    .line 46
    return v1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {p0, p1, v1}, Landroid/databinding/ObservableArrayList;->notifyAdd(II)V

    .line 71
    :cond_0
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/databinding/ObservableArrayList;->size()I

    move-result v0

    .line 58
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/databinding/ObservableArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v0, v2}, Landroid/databinding/ObservableArrayList;->notifyAdd(II)V

    .line 62
    :cond_0
    return v1
.end method

.method public addOnListChangedCallback(Landroid/databinding/i$a;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/g;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Landroid/databinding/g;

    invoke-direct {v0}, Landroid/databinding/g;-><init>()V

    iput-object v0, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/g;

    .line 32
    :cond_0
    iget-object v0, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/g;

    invoke-virtual {v0, p1}, Landroid/databinding/g;->a(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/databinding/ObservableArrayList;->size()I

    move-result v0

    .line 77
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 78
    if-eqz v0, :cond_0

    .line 79
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/databinding/ObservableArrayList;->notifyRemove(II)V

    .line 81
    :cond_0
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 86
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/databinding/ObservableArrayList;->notifyRemove(II)V

    .line 87
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Landroid/databinding/ObservableArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 93
    if-ltz v0, :cond_0

    .line 94
    invoke-virtual {p0, v0}, Landroid/databinding/ObservableArrayList;->remove(I)Ljava/lang/Object;

    .line 95
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeOnListChangedCallback(Landroid/databinding/i$a;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/g;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/g;

    invoke-virtual {v0, p1}, Landroid/databinding/g;->b(Ljava/lang/Object;)V

    .line 40
    :cond_0
    return-void
.end method

.method protected removeRange(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    .line 113
    sub-int v0, p2, p1

    invoke-direct {p0, p1, v0}, Landroid/databinding/ObservableArrayList;->notifyRemove(II)V

    .line 114
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    iget-object v1, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/g;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/g;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, p1, v2}, Landroid/databinding/g;->a(Landroid/databinding/i;II)V

    .line 107
    :cond_0
    return-object v0
.end method
