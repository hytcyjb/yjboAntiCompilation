.class final Lcom/tencent/tencentmap/mapsdk/maps/a/k$1;
.super Ljava/lang/Object;
.source "RTree.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/hj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/hj",
        "<",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/q;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/v;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 481
    check-cast p1, Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    .end local p1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    invoke-interface {p1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/q;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
