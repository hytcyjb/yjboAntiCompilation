.class final Lcom/didi/common/net/CommonRequest$3;
.super Ljava/lang/Object;
.source "CommonRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/net/CommonRequest;->performGetCloseInputConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 469
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->getCloseInputByCurrentCity()Z

    move-result v0

    sput-boolean v0, Lcom/didi/common/util/Constant;->isCloseInput:Z

    .line 470
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->getCloseRemarkByCurrentCity()Z

    move-result v0

    sput-boolean v0, Lcom/didi/common/util/Constant;->isColseRemark:Z

    .line 471
    return-void
.end method
