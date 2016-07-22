.class Lcom/didi/common/ui/citypicker/CityPickActivity$6;
.super Ljava/lang/Object;
.source "CityPickActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/citypicker/CityPickActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/citypicker/CityPickActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$6;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$6;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #getter for: Lcom/didi/common/ui/citypicker/CityPickActivity;->business:Lcom/didi/frame/business/Business;
    invoke-static {v2}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$800(Lcom/didi/common/ui/citypicker/CityPickActivity;)Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_0

    .line 211
    iget-object v2, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$6;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #getter for: Lcom/didi/common/ui/citypicker/CityPickActivity;->taxiHotCities:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$900(Lcom/didi/common/ui/citypicker/CityPickActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/model/TaxiHotCity;

    .line 212
    .local v1, taxiHotCity:Lcom/didi/common/model/TaxiHotCity;
    iget-object v2, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$6;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    iget-object v3, v1, Lcom/didi/common/model/TaxiHotCity;->cityName:Ljava/lang/String;

    iget v4, v1, Lcom/didi/common/model/TaxiHotCity;->cityID:I

    #calls: Lcom/didi/common/ui/citypicker/CityPickActivity;->onSelected(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$1000(Lcom/didi/common/ui/citypicker/CityPickActivity;Ljava/lang/String;I)V

    .line 217
    .end local v1           #taxiHotCity:Lcom/didi/common/model/TaxiHotCity;
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v2, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$6;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #getter for: Lcom/didi/common/ui/citypicker/CityPickActivity;->carHotCities:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$1100(Lcom/didi/common/ui/citypicker/CityPickActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/CarHotCity;

    .line 215
    .local v0, carHotCity:Lcom/didi/common/model/CarHotCity;
    iget-object v2, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$6;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    invoke-virtual {v0}, Lcom/didi/common/model/CarHotCity;->getCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/didi/common/model/CarHotCity;->getCityID()I

    move-result v4

    #calls: Lcom/didi/common/ui/citypicker/CityPickActivity;->onSelected(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$1000(Lcom/didi/common/ui/citypicker/CityPickActivity;Ljava/lang/String;I)V

    goto :goto_0
.end method
