.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/aj;
.super Ljava/lang/Object;
.source "TencentMap.java"


# static fields
.field private static a:I


# instance fields
.field private b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->a:I

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)V
    .locals 0
    .parameter "mapEngine"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    .line 89
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 123
    sget v0, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->a:I

    return v0
.end method

.method public static a(I)V
    .locals 0
    .parameter "venderId"

    .prologue
    .line 130
    sput p0, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->a:I

    .line 131
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Ljava/lang/String;
    .locals 1
    .parameter "point"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/ck;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bo;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ck;)V

    .line 277
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter "open"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a(Z)V

    .line 398
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->m()I

    move-result v0

    return v0
.end method

.method public final b(Lcom/tencent/tencentmap/mapsdk/maps/a/ck;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bo;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/ck;)V

    .line 298
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->n()I

    move-result v0

    return v0
.end method

.method public final d()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->j()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->n()Z

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->i()I

    move-result v0

    return v0
.end method

.method public final g()F
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->k()F

    move-result v0

    return v0
.end method
