.class final Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;
.super Ljava/lang/Object;
.source "Backpressure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/tencent/tencentmap/mapsdk/maps/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/w",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:J


# direct methods
.method private constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/w;J)V
    .locals 0
    .parameter
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/w",
            "<TT;>;J)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/a$a<TT;>;"
    .local p1, stack:Lcom/tencent/tencentmap/mapsdk/maps/a/w;,"Lcom/tencent/tencentmap/mapsdk/maps/a/w<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    .line 58
    iput-wide p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;->b:J

    .line 59
    return-void
.end method

.method static a(Lcom/tencent/tencentmap/mapsdk/maps/a/w;J)Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;
    .locals 1
    .parameter
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/w",
            "<TT;>;J)",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/a$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, stack:Lcom/tencent/tencentmap/mapsdk/maps/a/w;,"Lcom/tencent/tencentmap/mapsdk/maps/a/w<TT;>;"
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/w;J)V

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;)Lcom/tencent/tencentmap/mapsdk/maps/a/w;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;->b:J

    return-wide v0
.end method
