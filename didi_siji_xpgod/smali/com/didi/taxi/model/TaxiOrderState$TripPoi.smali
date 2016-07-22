.class public final Lcom/didi/taxi/model/TaxiOrderState$TripPoi;
.super Lcom/didi/common/model/Address;
.source "TaxiOrderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/model/TaxiOrderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TripPoi"
.end annotation


# instance fields
.field public is_trip_friend:I

.field public point_type:I

.field final synthetic this$0:Lcom/didi/taxi/model/TaxiOrderState;


# direct methods
.method public constructor <init>(Lcom/didi/taxi/model/TaxiOrderState;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->this$0:Lcom/didi/taxi/model/TaxiOrderState;

    invoke-direct {p0}, Lcom/didi/common/model/Address;-><init>()V

    return-void
.end method
