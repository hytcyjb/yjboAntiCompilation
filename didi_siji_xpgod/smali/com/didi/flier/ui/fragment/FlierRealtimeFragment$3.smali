.class Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$3;
.super Ljava/lang/Object;
.source "FlierRealtimeFragment.java"

# interfaces
.implements Lcom/didi/common/helper/LocationHelper$CityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$3;->this$0:Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sourceCityId"
    .parameter "targetCityId"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$3;->this$0:Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->setLocationView()V
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->access$300(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;)V

    .line 168
    return-void
.end method
