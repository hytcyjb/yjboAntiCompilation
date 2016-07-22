.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/cj;
.super Ljava/lang/Object;
.source "MapAnnotation.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)V
    .locals 0
    .parameter "name"
    .parameter "position"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cj;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 25
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cj;->b:Ljava/lang/String;

    .line 26
    return-void
.end method
