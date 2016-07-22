.class Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$12$1;
.super Ljava/lang/Thread;
.source "TaxiRealtimeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$12;->onLocationUpdate(Lcom/tencent/map/geolocation/TencentLocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$12;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$12;)V
    .locals 0
    .parameter

    .prologue
    .line 722
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$12$1;->this$1:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$12;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$12$1;->this$1:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$12;

    iget-object v0, v0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$12;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->getTaxiDrivers()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$1000(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)V

    .line 725
    return-void
.end method
