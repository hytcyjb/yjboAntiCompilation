.class final Lct/bk;
.super Lct/bj;
.source "TL"


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    const-string v0, "check cell"

    invoke-direct {p0, p1, v0}, Lct/bj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lct/bk;->a:Landroid/util/SparseArray;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lct/bj;->a()V

    .line 26
    iget-object v0, p0, Lct/bk;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 27
    return-void
.end method

.method protected final a(Landroid/os/Bundle;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 34
    const-string v0, "lac"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 35
    const-string v0, "cid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 37
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/location/Location;

    .line 38
    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    :cond_0
    move v0, v9

    .line 61
    :goto_0
    return v0

    .line 42
    :cond_1
    add-int/lit8 v0, v3, 0x10

    shl-int/2addr v1, v0

    .line 43
    iget-object v0, p0, Lct/bk;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/util/Pair;

    .line 45
    iget-object v0, p0, Lct/bk;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/16 v3, 0x32

    if-le v0, v3, :cond_2

    .line 46
    iget-object v0, p0, Lct/bk;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 49
    :cond_2
    if-nez v6, :cond_3

    .line 50
    iget-object v0, p0, Lct/bk;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v0, v8

    .line 52
    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 55
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 56
    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 57
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 58
    invoke-static/range {v0 .. v7}, Lct/b$a;->a(DDDD)D

    move-result-wide v0

    .line 61
    const-wide v2, 0x40b7700000000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    move v0, v8

    goto :goto_0

    :cond_4
    move v0, v9

    goto :goto_0
.end method
