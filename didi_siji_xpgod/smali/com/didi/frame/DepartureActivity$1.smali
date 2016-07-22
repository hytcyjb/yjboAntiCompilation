.class Lcom/didi/frame/DepartureActivity$1;
.super Ljava/lang/Object;
.source "DepartureActivity.java"

# interfaces
.implements Lcom/didi/frame/departure/DepartureMap$DepartureMapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/DepartureActivity;->initMapView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/DepartureActivity;


# direct methods
.method constructor <init>(Lcom/didi/frame/DepartureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/didi/frame/DepartureActivity$1;->this$0:Lcom/didi/frame/DepartureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$1;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$1;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/didi/frame/DepartureActivity;->access$100(Lcom/didi/frame/DepartureActivity;)Landroid/widget/ListView;

    move-result-object v1

    #calls: Lcom/didi/frame/DepartureActivity;->disableListClick(Landroid/widget/ListView;)V
    invoke-static {v0, v1}, Lcom/didi/frame/DepartureActivity;->access$200(Lcom/didi/frame/DepartureActivity;Landroid/widget/ListView;)V

    .line 152
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$1;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$1;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/didi/frame/DepartureActivity;->access$100(Lcom/didi/frame/DepartureActivity;)Landroid/widget/ListView;

    move-result-object v1

    #calls: Lcom/didi/frame/DepartureActivity;->enableListClick(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/DepartureActivity;->access$300(Lcom/didi/frame/DepartureActivity;Landroid/view/View;)V

    .line 157
    return-void
.end method

.method public onUp(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DepartLatLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$1;->this$0:Lcom/didi/frame/DepartureActivity;

    #calls: Lcom/didi/frame/DepartureActivity;->animation(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    invoke-static {v0, p1}, Lcom/didi/frame/DepartureActivity;->access$000(Lcom/didi/frame/DepartureActivity;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 147
    return-void
.end method
