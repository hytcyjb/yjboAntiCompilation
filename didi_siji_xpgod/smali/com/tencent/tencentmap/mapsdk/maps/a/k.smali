.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/k;
.super Ljava/lang/Object;
.source "RTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/q;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Lcom/tencent/tencentmap/mapsdk/maps/a/hj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/hj",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/q;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/tencent/tencentmap/mapsdk/maps/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/g",
            "<TT;TS;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/tencent/tencentmap/mapsdk/maps/a/c;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 493
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/k$2;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/k$2;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/k;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/hj;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/c;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 70
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/k;,"Lcom/tencent/tencentmap/mapsdk/maps/a/k<TT;TS;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/k;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/g;ILcom/tencent/tencentmap/mapsdk/maps/a/c;)V

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/c;B)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 25
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/k;,"Lcom/tencent/tencentmap/mapsdk/maps/a/k<TT;TS;>;"
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/k;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/c;)V

    return-void
.end method

.method private constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/g;ILcom/tencent/tencentmap/mapsdk/maps/a/c;)V
    .locals 0
    .parameter
    .parameter "size"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/g",
            "<TT;TS;>;I",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/k;,"Lcom/tencent/tencentmap/mapsdk/maps/a/k<TT;TS;>;"
    .local p1, root:Lcom/tencent/tencentmap/mapsdk/maps/a/g;,"Lcom/tencent/tencentmap/mapsdk/maps/a/g<TT;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/g;

    .line 57
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k;->c:I

    .line 58
    iput-object p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/c;

    .line 59
    return-void
.end method

.method public static a()Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;-><init>(B)V

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Lcom/tencent/tencentmap/mapsdk/maps/a/gz;
    .locals 3
    .parameter "r"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/v;",
            ")",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gz",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/d",
            "<TT;TS;>;>;"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/k;,"Lcom/tencent/tencentmap/mapsdk/maps/a/k<TT;TS;>;"
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/k$1;

    invoke-direct {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/k$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/g;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/j;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/g;

    invoke-direct {v1, v2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/j;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/g;Lcom/tencent/tencentmap/mapsdk/maps/a/hj;)V

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gz;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gz$a;)Lcom/tencent/tencentmap/mapsdk/maps/a/gz;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/gz;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/gz;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Lcom/tencent/tencentmap/mapsdk/maps/a/q;)Lcom/tencent/tencentmap/mapsdk/maps/a/k;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TS;)",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/k",
            "<TT;TS;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/k;,"Lcom/tencent/tencentmap/mapsdk/maps/a/k<TT;TS;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    .local p2, geometry:Lcom/tencent/tencentmap/mapsdk/maps/a/q;,"TS;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 316
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/d;

    invoke-direct {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/d;-><init>(Ljava/lang/Object;Lcom/tencent/tencentmap/mapsdk/maps/a/q;)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/g;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/g;

    invoke-interface {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/g;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/g;

    :goto_0
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/k;

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k;->c:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/c;

    invoke-direct {v1, v0, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/k;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/g;ILcom/tencent/tencentmap/mapsdk/maps/a/c;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/i;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/c;

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/i;-><init>(Ljava/util/List;Lcom/tencent/tencentmap/mapsdk/maps/a/c;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-array v2, v2, [Lcom/tencent/tencentmap/mapsdk/maps/a/d;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/k;

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/f;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/c;

    invoke-direct {v2, v1, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/f;-><init>(Ljava/util/List;Lcom/tencent/tencentmap/mapsdk/maps/a/c;)V

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k;->c:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/c;

    invoke-direct {v0, v2, v1, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/k;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/g;ILcom/tencent/tencentmap/mapsdk/maps/a/c;)V

    goto :goto_1
.end method
