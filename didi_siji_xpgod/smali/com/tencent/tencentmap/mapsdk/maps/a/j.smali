.class final Lcom/tencent/tencentmap/mapsdk/maps/a/j;
.super Ljava/lang/Object;
.source "OnSubscribeSearch.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/q;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a",
        "<",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/d",
        "<TT;TS;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/tencent/tencentmap/mapsdk/maps/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/g",
            "<TT;TS;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/tencent/tencentmap/mapsdk/maps/a/hj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/hj",
            "<-",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/q;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/g;Lcom/tencent/tencentmap/mapsdk/maps/a/hj;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/g",
            "<TT;TS;>;",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/hj",
            "<-",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/q;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/j;,"Lcom/tencent/tencentmap/mapsdk/maps/a/j<TT;TS;>;"
    .local p1, node:Lcom/tencent/tencentmap/mapsdk/maps/a/g;,"Lcom/tencent/tencentmap/mapsdk/maps/a/g<TT;TS;>;"
    .local p2, condition:Lcom/tencent/tencentmap/mapsdk/maps/a/hj;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hj<-Lcom/tencent/tencentmap/mapsdk/maps/a/q;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/g;

    .line 20
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/hj;

    .line 21
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3
    .parameter "x0"

    .prologue
    .line 13
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/j;,"Lcom/tencent/tencentmap/mapsdk/maps/a/j<TT;TS;>;"
    check-cast p1, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;

    .end local p1
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/g;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/hj;

    invoke-direct {v0, v1, v2, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/g;Lcom/tencent/tencentmap/mapsdk/maps/a/hj;Lcom/tencent/tencentmap/mapsdk/maps/a/hc;)V

    invoke-virtual {p1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/hb;)V

    return-void
.end method
