.class final Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a$1;
.super Ljava/util/LinkedHashMap;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;I)V
    .locals 2
    .parameter
    .parameter "x0"

    .prologue
    .line 59
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a$1;,"Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a.1;"
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;

    const/high16 v0, 0x3f40

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a$1;,"Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a.1;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a$1;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
