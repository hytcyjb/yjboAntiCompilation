.class Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$12;
.super Ljava/lang/Object;
.source "TaxiRealtimeFragment.java"

# interfaces
.implements Lcom/didi/soso/location/LocationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 718
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$12;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationUpdate(Lcom/tencent/map/geolocation/TencentLocation;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 722
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$12$1;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$12$1;-><init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$12;)V

    invoke-virtual {v0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$12$1;->start()V

    .line 728
    return-void
.end method
