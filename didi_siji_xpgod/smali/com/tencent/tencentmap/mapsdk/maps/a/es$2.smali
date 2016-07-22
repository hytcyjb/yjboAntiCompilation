.class final Lcom/tencent/tencentmap/mapsdk/maps/a/es$2;
.super Ljava/lang/Object;
.source "HeatTile.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/dw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/es;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/es$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/es$a;

.field final synthetic b:Lcom/tencent/tencentmap/mapsdk/maps/a/es;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/es;Lcom/tencent/tencentmap/mapsdk/maps/a/es$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es$2;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/es$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/es$a;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es$2;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    invoke-interface {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/es$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/es;)V

    .line 176
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method
