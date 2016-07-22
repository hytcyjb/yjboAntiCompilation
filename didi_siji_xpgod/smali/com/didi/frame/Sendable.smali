.class public interface abstract Lcom/didi/frame/Sendable;
.super Ljava/lang/Object;
.source "Sendable.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract getCity()Ljava/lang/String;
.end method

.method public abstract getCommonAttri()Lcom/didi/common/model/CommonAttributes;
.end method

.method public abstract getEndLatDouble()D
.end method

.method public abstract getEndLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
.end method

.method public abstract getEndLngDouble()D
.end method

.method public abstract getEndPlace()Lcom/didi/common/model/Address;
.end method

.method public abstract getOid()Ljava/lang/String;
.end method

.method public abstract getSid()Ljava/lang/String;
.end method

.method public abstract getStartLatDouble()D
.end method

.method public abstract getStartLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
.end method

.method public abstract getStartLngDouble()D
.end method

.method public abstract getStartPlace()Lcom/didi/common/model/Address;
.end method

.method public abstract getTerminator()Lcom/didi/frame/business/terminator/OrderTerminator;
.end method

.method public abstract getUseDepart()Z
.end method

.method public abstract hasBeenSent()Z
.end method

.method public abstract isBooking()Z
.end method

.method public abstract isModified()Z
.end method

.method public abstract setEndPlace(Lcom/didi/common/model/Address;)V
.end method

.method public abstract setStartPlace(Lcom/didi/common/model/Address;)V
.end method

.method public abstract setUseDepart(Z)V
.end method
