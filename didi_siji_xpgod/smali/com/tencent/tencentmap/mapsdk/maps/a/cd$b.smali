.class final Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;
.super Ljava/lang/Object;
.source "TrafficDataUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z

.field d:I

.field final synthetic e:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;


# direct methods
.method private constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;)V
    .locals 1
    .parameter

    .prologue
    .line 632
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    const-string v0, "0"

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->b:Ljava/lang/String;

    .line 647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->c:Z

    .line 652
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 632
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;)V

    return-void
.end method
