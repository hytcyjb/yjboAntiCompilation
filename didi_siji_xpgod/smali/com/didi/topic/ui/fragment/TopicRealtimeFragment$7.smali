.class Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$7;
.super Ljava/lang/Object;
.source "TopicRealtimeFragment.java"

# interfaces
.implements Lcom/didi/frame/business/redirector/RedirectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$7;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public redirecting(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;Lcom/didi/frame/business/redirector/Index;)V
    .locals 0
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
    .line 434
    .local p1, currentFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    .local p2, targetFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeAllDriverMarkerList()V

    .line 435
    return-void
.end method
