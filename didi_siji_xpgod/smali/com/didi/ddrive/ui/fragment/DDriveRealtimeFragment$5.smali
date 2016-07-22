.class Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$5;
.super Ljava/lang/Object;
.source "DDriveRealtimeFragment.java"

# interfaces
.implements Lcom/didi/common/helper/LocationHelper$CityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$5;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sourceCityId"
    .parameter "targetCityId"

    .prologue
    .line 274
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCityId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setViewMargin(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$5;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;
    invoke-static {v0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->access$400(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)Lcom/didi/soso/location/view/LocationView$ChangeListener;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setChangeListener(Lcom/didi/soso/location/view/LocationView$ChangeListener;)V

    .line 276
    return-void
.end method
