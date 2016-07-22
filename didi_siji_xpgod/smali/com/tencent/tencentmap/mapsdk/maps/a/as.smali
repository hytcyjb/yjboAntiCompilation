.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/as;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/ak;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/as$a;
    }
.end annotation


# static fields
.field private static f:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/tencent/map/lib/animator/ValueAnimator$AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/as;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final h:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/as;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final i:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/as;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final j:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/as;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final k:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/as;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final l:Landroid/view/animation/Interpolator;

.field private static p:J


# instance fields
.field b:J

.field c:I

.field d:[Lcom/tencent/tencentmap/mapsdk/maps/a/ap;

.field e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/ap;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:I

.field private o:Z

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/as$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->f:Ljava/lang/ThreadLocal;

    .line 66
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as$1;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/as$1;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->g:Ljava/lang/ThreadLocal;

    .line 76
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as$2;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/as$2;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->h:Ljava/lang/ThreadLocal;

    .line 86
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as$3;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/as$3;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->i:Ljava/lang/ThreadLocal;

    .line 96
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as$4;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/as$4;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->j:Ljava/lang/ThreadLocal;

    .line 106
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as$5;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/as$5;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->k:Ljava/lang/ThreadLocal;

    .line 114
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->l:Landroid/view/animation/Interpolator;

    .line 169
    const-wide/16 v0, 0xa

    sput-wide v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->p:J

    .line 216
    return-void
.end method

.method public static a(J)V
    .locals 0
    .parameter "frameDelay"

    .prologue
    .line 428
    sput-wide p0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->p:J

    .line 429
    return-void
.end method


# virtual methods
.method public final a()Lcom/tencent/tencentmap/mapsdk/maps/a/ak;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 818
    invoke-super {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ak;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/ak;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;

    .line 819
    .local v0, anim:Lcom/tencent/tencentmap/mapsdk/maps/a/as;
    iget-object v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->q:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 820
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->q:Ljava/util/ArrayList;

    .line 821
    .local v5, oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/as$a;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->q:Ljava/util/ArrayList;

    .line 822
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 823
    .local v3, numListeners:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_2

    .line 827
    .end local v1           #i:I
    .end local v3           #numListeners:I
    .end local v5           #oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/as$a;>;"
    :cond_0
    const-wide/16 v7, -0x1

    iput-wide v7, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->b:J

    .line 828
    iput-boolean v9, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->m:Z

    .line 829
    iput v9, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->n:I

    .line 830
    iput v9, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->c:I

    .line 831
    iput-boolean v9, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->o:Z

    .line 832
    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->d:[Lcom/tencent/tencentmap/mapsdk/maps/a/ap;

    .line 833
    .local v6, oldValues:[Lcom/tencent/tencentmap/mapsdk/maps/a/ap;
    if-eqz v6, :cond_1

    .line 834
    array-length v4, v6

    .line 835
    .local v4, numValues:I
    new-array v7, v4, [Lcom/tencent/tencentmap/mapsdk/maps/a/ap;

    iput-object v7, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->d:[Lcom/tencent/tencentmap/mapsdk/maps/a/ap;

    .line 836
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->e:Ljava/util/HashMap;

    .line 837
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    if-lt v1, v4, :cond_3

    .line 843
    .end local v1           #i:I
    .end local v4           #numValues:I
    :cond_1
    return-object v0

    .line 824
    .end local v6           #oldValues:[Lcom/tencent/tencentmap/mapsdk/maps/a/ap;
    .restart local v1       #i:I
    .restart local v3       #numListeners:I
    .restart local v5       #oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/as$a;>;"
    :cond_2
    iget-object v8, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->q:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/tencentmap/mapsdk/maps/a/as$a;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 838
    .end local v3           #numListeners:I
    .end local v5           #oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/as$a;>;"
    .restart local v4       #numValues:I
    .restart local v6       #oldValues:[Lcom/tencent/tencentmap/mapsdk/maps/a/ap;
    :cond_3
    aget-object v7, v6, v1

    invoke-virtual {v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/ap;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/ap;

    move-result-object v2

    .line 839
    .local v2, newValuesHolder:Lcom/tencent/tencentmap/mapsdk/maps/a/ap;
    iget-object v7, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->d:[Lcom/tencent/tencentmap/mapsdk/maps/a/ap;

    aput-object v2, v7, v1

    .line 840
    iget-object v7, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ap;->b()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 866
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ValueAnimator@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 867
    .local v1, returnVal:Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->d:[Lcom/tencent/tencentmap/mapsdk/maps/a/ap;

    if-eqz v2, :cond_0

    .line 868
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->d:[Lcom/tencent/tencentmap/mapsdk/maps/a/ap;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 872
    .end local v0           #i:I
    :cond_0
    return-object v1

    .line 869
    .restart local v0       #i:I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->d:[Lcom/tencent/tencentmap/mapsdk/maps/a/ap;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 868
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
