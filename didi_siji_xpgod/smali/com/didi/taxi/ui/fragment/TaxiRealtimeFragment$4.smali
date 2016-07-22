.class Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$4;
.super Ljava/lang/Object;
.source "TaxiRealtimeFragment.java"

# interfaces
.implements Lcom/didi/common/helper/LocationHelper$CityChangeListener;


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
    .line 256
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$4;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sourceCityId"
    .parameter "targetCityId"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$4;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->setLocationView()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$400(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)V

    .line 261
    return-void
.end method
