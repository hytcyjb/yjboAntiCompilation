.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/d;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/q;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/s;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Lcom/tencent/tencentmap/mapsdk/maps/a/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/tencent/tencentmap/mapsdk/maps/a/q;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TS;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/d;,"Lcom/tencent/tencentmap/mapsdk/maps/a/d<TT;TS;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    .local p2, geometry:Lcom/tencent/tencentmap/mapsdk/maps/a/q;,"TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p2, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/d;->a:Ljava/lang/Object;

    .line 31
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/d;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    .line 32
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/d;,"Lcom/tencent/tencentmap/mapsdk/maps/a/d<TT;TS;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/d;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/d;,"Lcom/tencent/tencentmap/mapsdk/maps/a/d<TT;TS;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/d;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/d;,"Lcom/tencent/tencentmap/mapsdk/maps/a/d<TT;TS;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    if-nez p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v3

    .line 85
    :cond_1
    instance-of v5, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/d;

    if-eqz v5, :cond_0

    move-object v2, p1

    .line 86
    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/d;

    .line 87
    .local v2, other:Lcom/tencent/tencentmap/mapsdk/maps/a/d;
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/d;->a:Ljava/lang/Object;

    iget-object v6, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/d;->a:Ljava/lang/Object;

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/d;->a:Ljava/lang/Object;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/d;->a:Ljava/lang/Object;

    iget-object v6, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/d;->a:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    move v0, v4

    .line 88
    .local v0, b1:Z
    :goto_1
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/d;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    iget-object v6, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/d;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/d;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/d;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    iget-object v6, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/d;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    move v1, v4

    .line 89
    .local v1, b2:Z
    :goto_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    move v3, v4

    goto :goto_0

    .end local v0           #b1:Z
    .end local v1           #b2:Z
    :cond_4
    move v0, v3

    .line 87
    goto :goto_1

    .restart local v0       #b1:Z
    :cond_5
    move v1, v3

    .line 88
    goto :goto_2
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 78
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/d;,"Lcom/tencent/tencentmap/mapsdk/maps/a/d<TT;TS;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/d;->a:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/d;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/d;,"Lcom/tencent/tencentmap/mapsdk/maps/a/d<TT;TS;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "Entry [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/d;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", geometry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/d;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
