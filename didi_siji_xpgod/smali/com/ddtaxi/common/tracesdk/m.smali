.class Lcom/ddtaxi/common/tracesdk/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/ddtaxi/common/tracesdk/l;


# direct methods
.method constructor <init>(Lcom/ddtaxi/common/tracesdk/l;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/m;->a:Lcom/ddtaxi/common/tracesdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    const-string v0, "#onLocationChanged"

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/m;->a:Lcom/ddtaxi/common/tracesdk/l;

    invoke-static {v0, p1}, Lcom/ddtaxi/common/tracesdk/l;->a(Lcom/ddtaxi/common/tracesdk/l;Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/m;->a:Lcom/ddtaxi/common/tracesdk/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/ddtaxi/common/tracesdk/l;->a(Lcom/ddtaxi/common/tracesdk/l;J)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/m;->a:Lcom/ddtaxi/common/tracesdk/l;

    invoke-static {v0, p1}, Lcom/ddtaxi/common/tracesdk/l;->b(Lcom/ddtaxi/common/tracesdk/l;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/m;->a:Lcom/ddtaxi/common/tracesdk/l;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/l;->a(Lcom/ddtaxi/common/tracesdk/l;)Lcom/ddtaxi/common/tracesdk/bp;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/m;->a:Lcom/ddtaxi/common/tracesdk/l;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/l;->a(Lcom/ddtaxi/common/tracesdk/l;)Lcom/ddtaxi/common/tracesdk/bp;

    move-result-object v0

    invoke-interface {v0}, Lcom/ddtaxi/common/tracesdk/bp;->a()V

    :cond_2
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "current location: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const-string v0, "#onProviderDisabled"

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    const-string v0, "#onProviderEnabled"

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "#onStatusChanged"

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    return-void
.end method
