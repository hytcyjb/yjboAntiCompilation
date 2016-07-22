.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/b;
.super Ljava/lang/Object;
.source "Comparators.java"


# static fields
.field public static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/t",
            "<*>;>;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/t",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/e;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/hj;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/b;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/hj;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/b;->a:Ljava/util/Comparator;

    .line 29
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/b$1;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/b$1;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/b;->b:Ljava/util/Comparator;

    return-void
.end method

.method private static a(Lcom/tencent/tencentmap/mapsdk/maps/a/hj;)Ljava/util/Comparator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/hj",
            "<TR;TT;>;)",
            "Ljava/util/Comparator",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, function:Lcom/tencent/tencentmap/mapsdk/maps/a/hj;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hj<TR;TT;>;"
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/b$3;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/b$3;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/hj;)V

    return-object v0
.end method

.method public static a(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Ljava/util/Comparator;
    .locals 1
    .parameter "r"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/s;",
            ">(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/v;",
            ")",
            "Ljava/util/Comparator",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/s;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/e;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Lcom/tencent/tencentmap/mapsdk/maps/a/hj;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/b;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/hj;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, comparators:[Ljava/util/Comparator;,"[Ljava/util/Comparator<TT;>;"
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/b$4;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/b$4;-><init>([Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static b(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Ljava/util/Comparator;
    .locals 1
    .parameter "r"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/v;",
            ")",
            "Ljava/util/Comparator",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/s;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/b$2;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/b$2;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)V

    return-object v0
.end method
