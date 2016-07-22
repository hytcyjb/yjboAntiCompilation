.class Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$12;
.super Ljava/lang/Object;
.source "BtsRealtimeFragment.java"

# interfaces
.implements Lcom/didi/common/helper/LocationHelper$CityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$12;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sourceCityId"
    .parameter "targetCityId"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$12;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #calls: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->setLocationView()V
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$1500(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    .line 696
    return-void
.end method
