.class final Lcom/tencent/tencentmap/mapsdk/maps/a/h;
.super Ljava/lang/Object;
.source "NodePosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/q;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/tencent/tencentmap/mapsdk/maps/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/g",
            "<TT;TS;>;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/g;I)V
    .locals 0
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/g",
            "<TT;TS;>;I)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/h;,"Lcom/tencent/tencentmap/mapsdk/maps/a/h<TT;TS;>;"
    .local p1, node:Lcom/tencent/tencentmap/mapsdk/maps/a/g;,"Lcom/tencent/tencentmap/mapsdk/maps/a/g<TT;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/h;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/g;

    .line 12
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/h;->b:I

    .line 13
    return-void
.end method


# virtual methods
.method final a()Lcom/tencent/tencentmap/mapsdk/maps/a/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/g",
            "<TT;TS;>;"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/h;,"Lcom/tencent/tencentmap/mapsdk/maps/a/h<TT;TS;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/h;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/g;

    return-object v0
.end method

.method final b()I
    .locals 1

    .prologue
    .line 20
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/h;,"Lcom/tencent/tencentmap/mapsdk/maps/a/h<TT;TS;>;"
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/h;->b:I

    return v0
.end method

.method final c()Lcom/tencent/tencentmap/mapsdk/maps/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/h",
            "<TT;TS;>;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/h;,"Lcom/tencent/tencentmap/mapsdk/maps/a/h<TT;TS;>;"
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/h;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/h;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/g;

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/h;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/h;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/g;I)V

    return-object v0
.end method
