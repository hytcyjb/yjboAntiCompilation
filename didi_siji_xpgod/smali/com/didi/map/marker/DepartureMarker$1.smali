.class Lcom/didi/map/marker/DepartureMarker$1;
.super Ljava/lang/Object;
.source "DepartureMarker.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/marker/DepartureMarker;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/map/marker/DepartureMarker;


# direct methods
.method constructor <init>(Lcom/didi/map/marker/DepartureMarker;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/didi/map/marker/DepartureMarker$1;->this$0:Lcom/didi/map/marker/DepartureMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .parameter "input"

    .prologue
    const-wide/high16 v4, 0x3fe0

    .line 93
    const-wide/high16 v0, 0x4000

    float-to-double v2, p1

    sub-double v2, v4, v2

    mul-double/2addr v0, v2

    float-to-double v2, p1

    sub-double v2, v4, v2

    mul-double/2addr v0, v2

    sub-double v0, v4, v0

    double-to-float v0, v0

    return v0
.end method
