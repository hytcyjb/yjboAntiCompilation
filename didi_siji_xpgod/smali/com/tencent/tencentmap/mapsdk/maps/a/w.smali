.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/w;
.super Ljava/lang/Object;
.source "ImmutableStack.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static c:Lcom/tencent/tencentmap/mapsdk/maps/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/w",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Lcom/tencent/tencentmap/mapsdk/maps/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/w",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/w;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/w;,"Lcom/tencent/tencentmap/mapsdk/maps/a/w<TT;>;"
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/w;-><init>(Ljava/lang/Object;Lcom/tencent/tencentmap/mapsdk/maps/a/w;)V

    .line 22
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/tencent/tencentmap/mapsdk/maps/a/w;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/w",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/w;,"Lcom/tencent/tencentmap/mapsdk/maps/a/w<TT;>;"
    .local p1, head:Ljava/lang/Object;,"TT;"
    .local p2, tail:Lcom/tencent/tencentmap/mapsdk/maps/a/w;,"Lcom/tencent/tencentmap/mapsdk/maps/a/w<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->a:Ljava/lang/Object;

    .line 13
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    .line 14
    return-void
.end method

.method public static a()Lcom/tencent/tencentmap/mapsdk/maps/a/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/w",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 26
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/tencent/tencentmap/mapsdk/maps/a/w;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, t:Ljava/lang/Object;,"TT;"
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/w;-><init>(Ljava/lang/Object;Lcom/tencent/tencentmap/mapsdk/maps/a/w;)V

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Lcom/tencent/tencentmap/mapsdk/maps/a/w;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/w;,"Lcom/tencent/tencentmap/mapsdk/maps/a/w<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    invoke-direct {v0, p1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/w;-><init>(Ljava/lang/Object;Lcom/tencent/tencentmap/mapsdk/maps/a/w;)V

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 30
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/w;,"Lcom/tencent/tencentmap/mapsdk/maps/a/w<TT;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/w;,"Lcom/tencent/tencentmap/mapsdk/maps/a/w<TT;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final d()Lcom/tencent/tencentmap/mapsdk/maps/a/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/w;,"Lcom/tencent/tencentmap/mapsdk/maps/a/w<TT;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/w;,"Lcom/tencent/tencentmap/mapsdk/maps/a/w<TT;>;"
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/w$a;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/w$a;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/w;)V

    return-object v0
.end method
