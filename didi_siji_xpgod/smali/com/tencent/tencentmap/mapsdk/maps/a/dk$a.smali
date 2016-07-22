.class final enum Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;
.super Ljava/lang/Enum;
.source "GLMarkerInfoWindowOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/dk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

.field public static final enum b:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

.field public static final enum c:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

.field public static final enum d:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

.field private static final synthetic e:[Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    const-string v1, "Appear"

    invoke-direct {v0, v1, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    const-string v1, "DisAppear"

    invoke-direct {v0, v1, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    const-string v1, "MarkerChanged"

    invoke-direct {v0, v1, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;->e:[Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;
    .locals 1
    .parameter "name"

    .prologue
    .line 29
    const-class v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    return-object v0
.end method

.method public static values()[Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;->e:[Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    invoke-virtual {v0}, [Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    return-object v0
.end method
