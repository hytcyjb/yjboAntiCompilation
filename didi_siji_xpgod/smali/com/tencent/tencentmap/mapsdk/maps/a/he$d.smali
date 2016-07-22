.class final Lcom/tencent/tencentmap/mapsdk/maps/a/he$d;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/he$b;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/he;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "printWriter"

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/he$b;-><init>(B)V

    .line 219
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/he$d;->a:Ljava/io/PrintWriter;

    .line 220
    return-void
.end method


# virtual methods
.method final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/he$d;->a:Ljava/io/PrintWriter;

    return-object v0
.end method

.method final a(Ljava/lang/Object;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/he$d;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 230
    return-void
.end method
