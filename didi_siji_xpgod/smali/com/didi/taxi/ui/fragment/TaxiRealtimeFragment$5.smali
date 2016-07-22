.class Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$5;
.super Ljava/lang/Object;
.source "TaxiRealtimeFragment.java"

# interfaces
.implements Lcom/didi/frame/business/redirector/RedirectListener;


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
    .line 264
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$5;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public redirecting(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;Lcom/didi/frame/business/redirector/Index;)V
    .locals 2
    .parameter
    .parameter
    .parameter "currentIndex"
    .parameter "targetIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;",
            "Lcom/didi/frame/business/redirector/Index;",
            "Lcom/didi/frame/business/redirector/Index;",
            ")V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, currentFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    .local p2, targetFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    const-string v0, "f_switch_to_wanliu"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeAllDriverMarkerList()V

    .line 272
    return-void
.end method
