.class public abstract Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# instance fields
.field public glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    return-void
.end method


# virtual methods
.method public abstract setDuration(I)V
.end method

.method public abstract setInterpolator(Landroid/view/animation/Interpolator;)V
.end method
