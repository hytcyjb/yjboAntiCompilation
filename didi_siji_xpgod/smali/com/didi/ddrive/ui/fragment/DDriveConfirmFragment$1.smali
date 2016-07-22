.class Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$1;
.super Ljava/lang/Object;
.source "DDriveConfirmFragment.java"

# interfaces
.implements Lcom/didi/frame/business/redirector/RedirectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;

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
    .line 84
    .local p1, currentFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    .local p2, targetFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    invoke-static {p3, p4}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->switchOnConfirmMapView(Lcom/didi/frame/business/redirector/Index;Lcom/didi/frame/business/redirector/Index;)V

    .line 85
    return-void
.end method
