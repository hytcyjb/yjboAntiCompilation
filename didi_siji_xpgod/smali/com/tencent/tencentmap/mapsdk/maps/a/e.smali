.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/e;
.super Ljava/lang/Object;
.source "Functions.java"


# static fields
.field public static final a:Lcom/tencent/tencentmap/mapsdk/maps/a/hj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/hj",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/t",
            "<+",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/s;",
            ">;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/e$1;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/e$1;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/e;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/hj;

    return-void
.end method

.method public static a(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Lcom/tencent/tencentmap/mapsdk/maps/a/hj;
    .locals 1
    .parameter "r"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/v;",
            ")",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/hj",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/s;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/e$2;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/e$2;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)V

    return-object v0
.end method
