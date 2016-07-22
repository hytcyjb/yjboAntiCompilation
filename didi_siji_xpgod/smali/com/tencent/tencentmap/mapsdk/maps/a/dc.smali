.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/dc;
.super Ljava/lang/Object;
.source "NetOperatorManager.java"


# static fields
.field private static b:Lcom/tencent/tencentmap/mapsdk/maps/a/dc;


# instance fields
.field private a:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dc;->a:I

    .line 50
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dc;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/dc;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dc;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dc;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dc;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/dc;

    :cond_0
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dc;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/dc;

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dc;->a:I

    return v0
.end method
