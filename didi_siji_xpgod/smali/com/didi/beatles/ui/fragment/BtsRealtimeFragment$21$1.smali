.class Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$21$1;
.super Ljava/lang/Thread;
.source "BtsRealtimeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$21;->onLocationUpdate(Lcom/tencent/map/geolocation/TencentLocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$21;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$21;)V
    .locals 0
    .parameter

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$21$1;->this$1:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$21;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$21$1;->this$1:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$21;

    iget-object v0, v0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$21;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    const/4 v1, 0x1

    #calls: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->getArroundUsers(Z)V
    invoke-static {v0, v1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$1900(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;Z)V

    .line 1013
    return-void
.end method
