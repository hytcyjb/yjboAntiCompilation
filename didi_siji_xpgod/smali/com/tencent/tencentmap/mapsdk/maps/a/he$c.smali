.class final Lcom/tencent/tencentmap/mapsdk/maps/a/he$c;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/he$b;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/he;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/io/PrintStream;


# direct methods
.method constructor <init>(Ljava/io/PrintStream;)V
    .locals 1
    .parameter "printStream"

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/he$b;-><init>(B)V

    .line 201
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/he$c;->a:Ljava/io/PrintStream;

    .line 202
    return-void
.end method


# virtual methods
.method final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/he$c;->a:Ljava/io/PrintStream;

    return-object v0
.end method

.method final a(Ljava/lang/Object;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/he$c;->a:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 212
    return-void
.end method
