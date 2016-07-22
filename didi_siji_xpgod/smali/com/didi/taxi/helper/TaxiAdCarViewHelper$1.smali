.class final Lcom/didi/taxi/helper/TaxiAdCarViewHelper$1;
.super Ljava/lang/Object;
.source "TaxiAdCarViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->loadGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 86
    invoke-static {}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->access$000()Lcom/didi/frame/switcher/AdCarView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->access$000()Lcom/didi/frame/switcher/AdCarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/switcher/AdCarView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->getCityGuideFlag()Lcom/didi/car/model/CarGuideFlag;

    move-result-object v0

    .line 89
    .local v0, guide:Lcom/didi/car/model/CarGuideFlag;
    if-eqz v0, :cond_0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "guide="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/didi/car/model/CarGuideFlag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 92
    iget-boolean v1, v0, Lcom/didi/car/model/CarGuideFlag;->isShowCar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/didi/car/model/CarGuideFlag;->isShowHomeTip:Z

    if-eqz v1, :cond_0

    .line 94
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/FragmentMgr;->isTaxiRealtimeFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "f_guided_popup_click"

    invoke-static {v1}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    iget-object v1, v0, Lcom/didi/car/model/CarGuideFlag;->picUrl:Ljava/lang/String;

    invoke-static {}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->access$200()Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    goto :goto_0
.end method
