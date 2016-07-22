.class Lcom/didi/common/booking/BookingView$2;
.super Ljava/lang/Object;
.source "BookingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/booking/BookingView;->doCity(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/booking/BookingView;

.field final synthetic val$city:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/common/booking/BookingView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/didi/common/booking/BookingView$2;->this$0:Lcom/didi/common/booking/BookingView;

    iput-object p2, p0, Lcom/didi/common/booking/BookingView$2;->val$city:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 169
    const/4 v1, 0x1

    .line 170
    .local v1, flag:Z
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-eq v2, v3, :cond_0

    .line 171
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isCarAvailable()Z

    move-result v1

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/didi/common/booking/BookingView$2;->val$city:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 173
    iget-object v2, p0, Lcom/didi/common/booking/BookingView$2;->this$0:Lcom/didi/common/booking/BookingView;

    iget-object v3, p0, Lcom/didi/common/booking/BookingView$2;->val$city:Ljava/lang/String;

    #setter for: Lcom/didi/common/booking/BookingView;->mCity:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/didi/common/booking/BookingView;->access$402(Lcom/didi/common/booking/BookingView;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    iget-object v2, p0, Lcom/didi/common/booking/BookingView$2;->this$0:Lcom/didi/common/booking/BookingView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/booking/BookingView$2;->val$city:Ljava/lang/String;

    invoke-static {v4}, Lcom/didi/common/util/Utils;->getCityId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/didi/common/booking/BookingView;->mCityId:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/didi/common/booking/BookingView;->access$502(Lcom/didi/common/booking/BookingView;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---------------city id properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/booking/BookingView$2;->this$0:Lcom/didi/common/booking/BookingView;

    #getter for: Lcom/didi/common/booking/BookingView;->mCityId:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/common/booking/BookingView;->access$500(Lcom/didi/common/booking/BookingView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " city:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/booking/BookingView$2;->val$city:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 176
    const-string v2, "-1"

    iget-object v3, p0, Lcom/didi/common/booking/BookingView$2;->this$0:Lcom/didi/common/booking/BookingView;

    #getter for: Lcom/didi/common/booking/BookingView;->mCityId:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/common/booking/BookingView;->access$500(Lcom/didi/common/booking/BookingView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    iget-object v3, p0, Lcom/didi/common/booking/BookingView$2;->val$city:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/database/CityListHelper;->getCityByName(Lcom/didi/frame/business/Business;Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v0

    .line 178
    .local v0, cityObj:Lcom/didi/common/model/City;
    if-eqz v0, :cond_1

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---------------city id db:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/didi/common/model/City;->cityID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " city:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/didi/common/model/City;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/didi/common/booking/BookingView$2;->this$0:Lcom/didi/common/booking/BookingView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/didi/common/model/City;->cityID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/didi/common/booking/BookingView;->mCityId:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/didi/common/booking/BookingView;->access$502(Lcom/didi/common/booking/BookingView;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .end local v0           #cityObj:Lcom/didi/common/model/City;
    :cond_1
    new-instance v2, Lcom/didi/common/booking/BookingView$2$1;

    invoke-direct {v2, p0}, Lcom/didi/common/booking/BookingView$2$1;-><init>(Lcom/didi/common/booking/BookingView$2;)V

    invoke-static {v2}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 194
    :cond_2
    return-void
.end method
