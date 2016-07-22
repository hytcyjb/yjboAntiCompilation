.class Lcom/ddtaxi/common/tracesdk/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# instance fields
.field final synthetic a:Lcom/ddtaxi/common/tracesdk/l;


# direct methods
.method constructor <init>(Lcom/ddtaxi/common/tracesdk/l;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/n;->a:Lcom/ddtaxi/common/tracesdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 5

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/n;->a:Lcom/ddtaxi/common/tracesdk/l;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/l;->b(Lcom/ddtaxi/common/tracesdk/l;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/n;->a:Lcom/ddtaxi/common/tracesdk/l;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/l;->c(Lcom/ddtaxi/common/tracesdk/l;)Landroid/location/LocationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v2

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    if-gt v1, v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    iget-object v4, p0, Lcom/ddtaxi/common/tracesdk/n;->a:Lcom/ddtaxi/common/tracesdk/l;

    invoke-static {v4}, Lcom/ddtaxi/common/tracesdk/l;->b(Lcom/ddtaxi/common/tracesdk/l;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
