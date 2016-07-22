.class Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$1;
.super Ljava/lang/Object;
.source "ActivityRealtimeFragment.java"

# interfaces
.implements Lcom/didi/common/helper/LocationHelper$CityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$1;->this$0:Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sourceCityId"
    .parameter "targetCityId"

    .prologue
    .line 99
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCityId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setViewMargin(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$1;->this$0:Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;

    #getter for: Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;
    invoke-static {v0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->access$000(Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;)Lcom/didi/soso/location/view/LocationView$ChangeListener;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setChangeListener(Lcom/didi/soso/location/view/LocationView$ChangeListener;)V

    .line 101
    return-void
.end method
