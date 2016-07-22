.class public Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;
.super Ljava/lang/Object;
.source "NetUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetResponse2"
.end annotation


# instance fields
.field public bytResponse:[B

.field public strCharset:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;->bytResponse:[B

    .line 513
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;->strCharset:Ljava/lang/String;

    return-void
.end method
