.class Lcom/didi/common/ui/citypicker/CityPickActivity$7;
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
    .line 220
    iput-object p1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$7;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

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
    .line 224
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 225
    .local v1, currentAllCityList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/CityIndex;>;"
    iget-object v2, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$7;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #getter for: Lcom/didi/common/ui/citypicker/CityPickActivity;->isShowFilterList:Z
    invoke-static {v2}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$1200(Lcom/didi/common/ui/citypicker/CityPickActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$7;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #getter for: Lcom/didi/common/ui/citypicker/CityPickActivity;->filterDateList:Ljava/util/List;
    invoke-static {v2}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$1300(Lcom/didi/common/ui/citypicker/CityPickActivity;)Ljava/util/List;

    move-result-object v1

    .line 231
    :goto_0
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/CityIndex;

    .line 232
    .local v0, cityIndex:Lcom/didi/common/model/CityIndex;
    iget-object v2, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$7;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    iget-object v3, v0, Lcom/didi/common/model/CityIndex;->cityName:Ljava/lang/String;

    iget v4, v0, Lcom/didi/common/model/CityIndex;->cityID:I

    #calls: Lcom/didi/common/ui/citypicker/CityPickActivity;->onSelected(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$1000(Lcom/didi/common/ui/citypicker/CityPickActivity;Ljava/lang/String;I)V

    .line 233
    return-void

    .line 228
    .end local v0           #cityIndex:Lcom/didi/common/model/CityIndex;
    :cond_0
    iget-object v2, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$7;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #calls: Lcom/didi/common/ui/citypicker/CityPickActivity;->getCurrentAllCityList()Ljava/util/List;
    invoke-static {v2}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$1400(Lcom/didi/common/ui/citypicker/CityPickActivity;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method
