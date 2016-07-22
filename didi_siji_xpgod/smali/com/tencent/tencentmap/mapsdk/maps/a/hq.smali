.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/hq;
.super Ljava/lang/Object;
.source "Subscriptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/hq$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/tencent/tencentmap/mapsdk/maps/a/hq$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/hq$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/hq$a;-><init>(B)V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/hq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/hq$a;

    return-void
.end method

.method public static a()Lcom/tencent/tencentmap/mapsdk/maps/a/hd;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/hq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/hq$a;

    return-object v0
.end method
