.class Lcom/didi/car/ui/fragment/CarRealtimeFragment$3;
.super Ljava/lang/Object;
.source "CarRealtimeFragment.java"

# interfaces
.implements Lcom/didi/common/helper/LocationHelper$CityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment$3;->this$0:Lcom/didi/car/ui/fragment/CarRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sourceCityId"
    .parameter "targetCityId"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment$3;->this$0:Lcom/didi/car/ui/fragment/CarRealtimeFragment;

    #calls: Lcom/didi/car/ui/fragment/CarRealtimeFragment;->setLocationView()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->access$300(Lcom/didi/car/ui/fragment/CarRealtimeFragment;)V

    .line 168
    return-void
.end method
