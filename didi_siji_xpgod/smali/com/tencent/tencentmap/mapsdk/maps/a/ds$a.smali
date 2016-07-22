.class public final enum Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;
.super Ljava/lang/Enum;
.source "MapUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/ds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

.field public static final enum b:Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

.field public static final enum c:Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

.field private static final synthetic d:[Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 137
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    .line 141
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    .line 145
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    const-string v1, "TRYING"

    invoke-direct {v0, v1, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    .line 133
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;->d:[Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;
    .locals 1
    .parameter "name"

    .prologue
    .line 133
    const-class v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    return-object v0
.end method

.method public static values()[Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;->d:[Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    invoke-virtual {v0}, [Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    return-object v0
.end method
