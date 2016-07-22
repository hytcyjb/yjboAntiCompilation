.class final Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;
.super Ljava/lang/Object;
.source "HighThreadExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a",
            "<TE;>.b<TE;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    .local p2, x:Ljava/lang/Object;,"TE;"
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->a:Ljava/lang/Object;

    .line 100
    return-void
.end method
