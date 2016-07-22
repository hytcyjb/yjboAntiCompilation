.class final Lcom/tencent/tencentmap/mapsdk/maps/a/cp$a;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/cp",
            "<***>;"
        }
    .end annotation
.end field

.field final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cp;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/cp",
            "<***>;[TData;)V"
        }
    .end annotation

    .prologue
    .line 501
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cp<TParams;TProgress;TResult;>.a<TData;>;"
    .local p1, task:Lcom/tencent/tencentmap/mapsdk/maps/a/cp;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cp<***>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp;

    .line 503
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$a;->b:[Ljava/lang/Object;

    .line 504
    return-void
.end method
