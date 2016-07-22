.class Lcom/didi/map/MapController$9$1$1;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/MapController$9$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/didi/taxi/model/TaxiOrderState$TripPoi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/map/MapController$9$1;


# direct methods
.method constructor <init>(Lcom/didi/map/MapController$9$1;)V
    .locals 0
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lcom/didi/map/MapController$9$1$1;->this$1:Lcom/didi/map/MapController$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/didi/taxi/model/TaxiOrderState$TripPoi;Lcom/didi/taxi/model/TaxiOrderState$TripPoi;)I
    .locals 3
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v0, 0x1

    .line 532
    iget v1, p1, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->point_type:I

    iget v2, p2, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->point_type:I

    if-ne v1, v2, :cond_1

    .line 533
    iget v1, p1, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->is_trip_friend:I

    if-ne v1, v0, :cond_0

    .line 540
    :goto_0
    return v0

    .line 536
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 540
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 528
    check-cast p1, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    .end local p1
    check-cast p2, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/didi/map/MapController$9$1$1;->compare(Lcom/didi/taxi/model/TaxiOrderState$TripPoi;Lcom/didi/taxi/model/TaxiOrderState$TripPoi;)I

    move-result v0

    return v0
.end method
