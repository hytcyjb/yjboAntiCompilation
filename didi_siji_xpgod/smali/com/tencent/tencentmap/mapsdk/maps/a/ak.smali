.class public abstract Lcom/tencent/tencentmap/mapsdk/maps/a/ak;
.super Ljava/lang/Object;
.source "Animator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/ak$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/ak$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ak;->a:Ljava/util/ArrayList;

    .line 12
    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/tencentmap/mapsdk/maps/a/ak;
    .locals 6

    .prologue
    .line 130
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ak;

    .line 131
    .local v0, anim:Lcom/tencent/tencentmap/mapsdk/maps/a/ak;
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ak;->a:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 132
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ak;->a:Ljava/util/ArrayList;

    .line 133
    .local v3, oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/ak$a;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ak;->a:Ljava/util/ArrayList;

    .line 134
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 135
    .local v2, numListeners:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 139
    .end local v1           #i:I
    .end local v2           #numListeners:I
    .end local v3           #oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/ak$a;>;"
    :cond_0
    return-object v0

    .line 136
    .restart local v1       #i:I
    .restart local v2       #numListeners:I
    .restart local v3       #oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/ak$a;>;"
    :cond_1
    iget-object v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ak;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/tencentmap/mapsdk/maps/a/ak$a;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v0           #anim:Lcom/tencent/tencentmap/mapsdk/maps/a/ak;
    .end local v1           #i:I
    .end local v2           #numListeners:I
    .end local v3           #oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/ak$a;>;"
    :catch_0
    move-exception v4

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ak;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/ak;

    move-result-object v0

    return-object v0
.end method
