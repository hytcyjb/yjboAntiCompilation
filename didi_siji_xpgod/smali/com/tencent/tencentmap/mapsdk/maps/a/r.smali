.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/r;
.super Ljava/lang/Object;
.source "Group.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/s;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/s;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/tencent/tencentmap/mapsdk/maps/a/v;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/r;,"Lcom/tencent/tencentmap/mapsdk/maps/a/r<TT;>;"
    .local p1, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/r;->a:Ljava/util/List;

    .line 14
    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/p;->a(Ljava/util/Collection;)Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/r;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    .line 15
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/r;,"Lcom/tencent/tencentmap/mapsdk/maps/a/r<TT;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/r;->a:Ljava/util/List;

    return-object v0
.end method

.method public final b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;
    .locals 1

    .prologue
    .line 23
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/r;,"Lcom/tencent/tencentmap/mapsdk/maps/a/r<TT;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/r;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    return-object v0
.end method
