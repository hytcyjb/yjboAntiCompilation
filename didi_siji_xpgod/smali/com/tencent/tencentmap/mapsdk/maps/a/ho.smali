.class final Lcom/tencent/tencentmap/mapsdk/maps/a/ho;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/hn;
.source "RxJavaObservableExecutionHookDefault.java"


# static fields
.field private static a:Lcom/tencent/tencentmap/mapsdk/maps/a/ho;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ho;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ho;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ho;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ho;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hn;-><init>()V

    return-void
.end method

.method public static a()Lcom/tencent/tencentmap/mapsdk/maps/a/hn;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ho;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ho;

    return-object v0
.end method
