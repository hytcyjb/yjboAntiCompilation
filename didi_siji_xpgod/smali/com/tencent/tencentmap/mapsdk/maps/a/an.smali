.class public abstract Lcom/tencent/tencentmap/mapsdk/maps/a/an;
.super Ljava/lang/Object;
.source "Keyframe.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field a:Z

.field private b:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/an;->b:Landroid/view/animation/Interpolator;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/an;->a:Z

    .line 9
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public final b()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/an;->b:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public abstract c()Lcom/tencent/tencentmap/mapsdk/maps/a/an;
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
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/an;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/an;

    move-result-object v0

    return-object v0
.end method
