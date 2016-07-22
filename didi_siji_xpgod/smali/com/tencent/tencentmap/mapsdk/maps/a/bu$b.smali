.class public final enum Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;
.super Ljava/lang/Enum;
.source "MapParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/bu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

.field public static final enum b:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

.field public static final enum c:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

.field private static final synthetic d:[Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1041
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    const-string v1, "NO_CHANGED"

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;-><init>(Ljava/lang/String;I)V

    .line 1044
    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    .line 1046
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    const-string v1, "SCALE_CHANGED"

    invoke-direct {v0, v1, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;-><init>(Ljava/lang/String;I)V

    .line 1049
    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    .line 1051
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    const-string v1, "SCALE_LEVEL_CHANGED"

    invoke-direct {v0, v1, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;-><init>(Ljava/lang/String;I)V

    .line 1054
    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    .line 1040
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->d:[Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1040
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    return-object v0
.end method

.method public static values()[Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->d:[Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    array-length v1, v0

    new-array v2, v1, [Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
