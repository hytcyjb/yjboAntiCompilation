.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/x;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 8
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/x;,"Lcom/tencent/tencentmap/mapsdk/maps/a/x<TT;>;"
    .local p1, value1:Ljava/lang/Object;,"TT;"
    .local p2, value2:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/x;->a:Ljava/lang/Object;

    .line 10
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/x;->b:Ljava/lang/Object;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/x;,"Lcom/tencent/tencentmap/mapsdk/maps/a/x<TT;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/x;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/x;,"Lcom/tencent/tencentmap/mapsdk/maps/a/x<TT;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/x;->b:Ljava/lang/Object;

    return-object v0
.end method
