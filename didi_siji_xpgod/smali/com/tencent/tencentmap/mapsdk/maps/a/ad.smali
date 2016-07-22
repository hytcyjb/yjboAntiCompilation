.class public abstract Lcom/tencent/tencentmap/mapsdk/maps/a/ad;
.super Ljava/lang/Object;
.source "JceStruct.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab;)V
.end method

.method public abstract a(Lcom/tencent/tencentmap/mapsdk/maps/a/ac;)V
.end method

.method public a(Ljava/lang/StringBuilder;I)V
    .locals 0
    .parameter "sb"
    .parameter "level"

    .prologue
    .line 31
    return-void
.end method

.method public final a()[B
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;-><init>(B)V

    .line 72
    .local v0, os:Lcom/tencent/tencentmap/mapsdk/maps/a/ac;
    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ad;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ac;)V

    .line 73
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a()[B

    move-result-object v1

    return-object v1
.end method

.method public final a(Ljava/lang/String;)[B
    .locals 2
    .parameter "encoding"

    .prologue
    .line 77
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;-><init>(B)V

    .line 78
    .local v0, os:Lcom/tencent/tencentmap/mapsdk/maps/a/ac;
    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ad;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ac;)V

    .line 80
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a()[B

    move-result-object v1

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v0, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ad;->a(Ljava/lang/StringBuilder;I)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
